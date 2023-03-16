;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage018)
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
(define-public haskell-9.0-Agda
  (package
    (name "haskell-9.0-Agda")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-boxes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-hash)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-edit-distance)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-equivalence)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-compact)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskeline)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-murmur-hash)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-uri-encode)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
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

haskell-9.0-Agda

(define-public haskell-9.0-HMock
  (package
    (name "haskell-9.0-HMock")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HMock/HMock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nbdgndk5bmd45wabfnndzmava9d8cf24li0w1093yl6099gmwas"))))
    (properties `((upstream-name . "HMock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdsmith/HMock")
    (synopsis "A flexible mock framework for testing effectful code.")
    (description "HMock is a flexible mock framework for testing effectful
code in Haskell.  Tests can set up expectations about
actions that can or should be performed and their results,
and then verify those expectations when the test is
complete.

For more information, see the module documentation for
\"Test.HMock\".")
    (license license:bsd-3)))

haskell-9.0-HMock

(define-public haskell-9.0-HPDF
  (package
    (name "haskell-9.0-HPDF")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTF)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hyphenation)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.alpheccar.org")
    (synopsis "Generation of PDF documents")
    (description
     "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.")
    (license license:bsd-3)))

haskell-9.0-HPDF

(define-public haskell-9.0-QuasiText
  (package
    (name "haskell-9.0-QuasiText")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-9.0-QuasiText

(define-public haskell-9.0-aern2-real
  (package
    (name "haskell-9.0-aern2-real")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aern2-mp)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-collect-errors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mixed-types-num)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Real numbers as convergent sequences of intervals")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-9.0-aern2-real

(define-public haskell-9.0-aeson-qq
  (package
    (name "haskell-9.0-aeson-qq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-aeson-qq

(define-public haskell-9.0-alex-meta
  (package
    (name "haskell-9.0-alex-meta")
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
       ("4" "0b9p2gndna2mk85pywilqwn3zm4yyn9s9ss6p3rlaax70218mlgg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/alex-meta")
    (synopsis "Quasi-quoter for Alex lexers")
    (description
     "A Template-Haskell based version of the Alex lexer generator. It is used by BNFC-meta to generate lexers and currently this is the only feature known to be working.")
    (license license:bsd-3)))

haskell-9.0-alex-meta

(define-public haskell-9.0-ascii-group
  (package
    (name "haskell-9.0-ascii-group")
    (version "1.0.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-group/ascii-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xynfvrr8lwmrxqww2c2bwp6r3162mqgmx7hljwmbvdmnc0na30d"))))
    (properties `((upstream-name . "ascii-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0snp4qfj20jjchhhf7v8lyssjydv57sd2wy88fbc0aaba4c5lq7y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII character groups")
    (description "This package defines a @@Group@@ type that describes
the two varieties of ASCII character, and provides
some functions for classifying characters by group.")
    (license license:asl2.0)))

haskell-9.0-ascii-group

(define-public haskell-9.0-ascii-predicates
  (package
    (name "haskell-9.0-ascii-predicates")
    (version "1.0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-predicates/ascii-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1964w50mvfwq4x6ss6vhz7q7fg8b9bfhczv95ll9cxs61qn2rir0"))))
    (properties `((upstream-name . "ascii-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Various categorizations of ASCII characters")
    (description "This package provides a variety of predicates
on the ASCII character set.")
    (license license:asl2.0)))

haskell-9.0-ascii-predicates

(define-public haskell-9.0-ascii-superset
  (package
    (name "haskell-9.0-ascii-superset")
    (version "1.0.1.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-superset/ascii-superset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pf1awrx0bfpgyc96r1ycybgpy801iqxr8qf3vp9pvbnfava1v8s"))))
    (properties `((upstream-name . "ascii-superset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1551j1x284zdv9w233ma5r15bwmwizh5zi2ifcsp86d09c38505n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Representing ASCII with refined supersets")
    (description
     "This package defines classes which describe what subset of a type
is valid as ASCII, as well as a type constructor representing a
value of a superset that is known to be valid ASCII.

It also defines the Lift class, which provides a polymorphic lift
operation that can be used to convert characters and strings into
types that support a larger set of characters.")
    (license license:asl2.0)))

haskell-9.0-ascii-superset

(define-public haskell-9.0-aur
  (package
    (name "haskell-9.0-aur")
    (version "7.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aur/aur-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0k8b3rc89ibln7idb1a1f6g3p04f1n7mnk8q8nqiggygf8r6sdnh"))))
    (properties `((upstream-name . "aur") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lxhkpxxg7gvwa47bdk2hi0f9ww1kvrmkwy41ar64lp124frcvsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "Access metadata from the Arch Linux User Repository.")
    (description
     "Access package information from Arch Linux's AUR via its RPC interface. The
main exposed functions reflect those of the RPC. `info` gets metadata for one
package. `search` gets limited metadata for packages that match a given regex.
By default this library supports version 5 of the RPC, and hence version 4.2+
of the AUR.")
    (license license:gpl3)))

haskell-9.0-aur

(define-public haskell-9.0-authenticate-oauth
  (package
    (name "haskell-9.0-authenticate-oauth")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-RSA)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-SHA)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-9.0-authenticate-oauth

(define-public haskell-9.0-beam-core
  (package
    (name "haskell-9.0-beam-core")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-core/beam-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0js10ai2dqdv6fm99ni6ckiq1rbq1wm82s73h81hln0qf1xnk3ra"))))
    (properties `((upstream-name . "beam-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://travis.athougies.net/projects/beam.html")
    (synopsis
     "Type-safe, feature-complete SQL query and manipulation interface for Haskell")
    (description
     "Beam is a Haskell library for type-safe querying and manipulation of SQL databases.
Beam is modular and supports various backends. In order to use beam, you will need to use
@@beam-core@@ along with a specific backend (such as @@beam-postgres@@ or @@beam-sqlite@@) as
well as the corresponding backend.
For more information, see the user manual and tutorial on
<https://haskell-beam.github.io/beam GitHub pages>.")
    (license license:expat)))

haskell-9.0-beam-core

(define-public haskell-9.0-bech32-th
  (package
    (name "haskell-9.0-bech32-th")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-bech32)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis "Template Haskell extensions to the Bech32 library.")
    (description "Template Haskell extensions to the Bech32 library, including
quasi-quoters for compile-time checking of Bech32 string
literals.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-bech32-th

(define-public haskell-9.0-binary-conduit
  (package
    (name "haskell-9.0-binary-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-9.0-binary-conduit

(define-public haskell-9.0-binary-tagged
  (package
    (name "haskell-9.0-binary-tagged")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-singleton-bool)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-structured)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
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

haskell-9.0-binary-tagged

(define-public haskell-9.0-bitvec
  (package
    (name "haskell-9.0-bitvec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-bitvec

(define-public haskell-9.0-board-games
  (package
    (name "haskell-9.0-board-games")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/board-games/board-games-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ylwibyl0j1v0bdrpfnjhdm431npagavxzgi2l5sp0scgpkcyyx7"))))
    (properties `((upstream-name . "board-games") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbuildexamples" "-fsplitbase")
       #:cabal-revision
       ("1" "0rb5bqjg6r8p2v2wfdhivsbgbn55acdjsj6hcy6bv5w50qmg1l6c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-cgi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-enummapset)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-html)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-httpd-shed)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://code.haskell.org/~thielema/games/")
    (synopsis "Three games for inclusion in a web server")
    (description "Three games that might run as CGI script in a web server:
Connect Four, Rows&Columns, Mastermind

Check running versions at
<http://www.henning-thielemann.de/VierGewinnt> and
<http://www.henning-thielemann.de/ZeilenSpalten>.

You can build an example web server by installing with

> cabal install board-games -fbuildExamples

Then start the server with

> ./dist/build/board-games/board-games

and play the games in your browser at the URL
<http://localhost:8080/>.

Currently the games use German texts.
I wanted to use gettext, but this is not thread-safe.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-board-games

(define-public haskell-9.0-boltzmann-samplers
  (package
    (name "haskell-9.0-boltzmann-samplers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-ad)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Lysxia/boltzmann-samplers#readme")
    (synopsis "Uniform random generators")
    (description
     "Random generators with a uniform distribution conditioned
to a given size.
See also @@<http://hackage.haskell.org/package/testing-feat testing-feat>@@,
which is currently a faster method with similar results.")
    (license license:expat)))

haskell-9.0-boltzmann-samplers

(define-public haskell-9.0-bookkeeping
  (package
    (name "haskell-9.0-bookkeeping")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bookkeeping/bookkeeping-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0afa4g5c9csjn747732qqbs3ghp8c4jyxhfb9k09igfaladrvzfl"))))
    (properties `((upstream-name . "bookkeeping") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-transaction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-bookkeeping#readme")
    (synopsis "A module for bookkeeping by double entry.")
    (description
     "A module for bookkeeping by double entry. This module provides a way to do bookkeeping programmatically.")
    (license license:expat)))

haskell-9.0-bookkeeping

(define-public haskell-9.0-bugsnag-hs
  (package
    (name "haskell-9.0-bugsnag-hs")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-hs/bugsnag-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0af7xgjcgv5wly2hq0n82paa4qi35xv726y3f44zcvipjh8c4zvq"))))
    (properties `((upstream-name . "bugsnag-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/bugsnag-hs#readme")
    (synopsis "A Bugsnag client for Haskell.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/bugsnag-hs>.")
    (license license:bsd-3)))

haskell-9.0-bugsnag-hs

(define-public haskell-9.0-bzlib-conduit
  (package
    (name "haskell-9.0-bzlib-conduit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a21zin5plsl37hkxh2jv8cxwyjrbs2fy7n5cyrzgdaa7lmp6b7b"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-9.0-bzlib-conduit

(define-public haskell-9.0-cabal-file
  (package
    (name "haskell-9.0-cabal-file")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hackage-security)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-cabal)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-cmd)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)))
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

haskell-9.0-cabal-file

(define-public haskell-9.0-cabal-install
  (package
    (name "haskell-9.0-cabal-install")
    (version "3.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install/cabal-install-"
                    version ".tar.gz"))
              (sha256
               (base32
                "121az3z76b9696bxm235jdlria9rr61f6117s4d26p17ipy8pbb1"))))
    (properties `((upstream-name . "cabal-install") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-native-dns" "-f-debug-expensive-assertions" "-f-debug-conflict-sets" "-f-debug-tracetree" "-flukko")
       #:cabal-revision
       ("2" "11ik469w43dq36aavaiph90ri2i58qpi5ajqm76sq0wkh1fdmk57")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-echo)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-edit-distance)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hackage-security)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-lukko)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-tar)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The \\'cabal\\' command-line program simplifies the process of managing
Haskell software by automating the fetching, configuration, compilation
and installation of Haskell libraries and programs.")
    (license license:bsd-3)))

haskell-9.0-cabal-install

(define-public haskell-9.0-cassava-conduit
  (package
    (name "haskell-9.0-cassava-conduit")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-conduit/cassava-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114ab0kxy7rj1hps1sy9i0mkj2lp046zjlpll2apmf3mxdminva0"))))
    (properties `((upstream-name . "cassava-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/domdere/cassava-conduit")
    (synopsis "Conduit interface for cassava package")
    (description "Conduit interface for cassava package

PRs welcome.")
    (license license:bsd-3)))

haskell-9.0-cassava-conduit

(define-public haskell-9.0-cborg-json
  (package
    (name "haskell-9.0-cborg-json")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cborg)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-9.0-cborg-json

(define-public haskell-9.0-cereal-conduit
  (package
    (name "haskell-9.0-cereal-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-9.0-cereal-conduit

(define-public haskell-9.0-cheapskate
  (package
    (name "haskell-9.0-cheapskate")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate/cheapskate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17n6laihqrjn62l8qw4565nf77zkvrl68bjmc3vzr4ckqfblhdzd"))))
    (properties `((upstream-name . "cheapskate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dingus")
       #:cabal-revision
       ("1" "15hdlp062gv8x7giwcfbj1kfmhpj1bg7y2w4wr2yl436haxkrbmq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/cheapskate")
    (synopsis "Experimental markdown processor.")
    (description "This is an experimental Markdown processor in pure
Haskell.  It aims to process Markdown efficiently and in
the most forgiving possible way.  It is designed to deal
with any input, including garbage, with linear
performance.  Output is sanitized by default for
protection against XSS attacks.

Several markdown extensions are implemented, including
fenced code blocks, significant list start numbers, and
autolinked URLs.  See README.markdown for details.")
    (license license:bsd-3)))

haskell-9.0-cheapskate

(define-public haskell-9.0-chiphunk
  (package
    (name "haskell-9.0-chiphunk")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-space)))
    (home-page "https://github.com/CthulhuDen/chiphunk#readme")
    (synopsis "Haskell bindings for Chipmunk2D physics engine")
    (description
     "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>")
    (license license:bsd-3)))

haskell-9.0-chiphunk

(define-public haskell-9.0-cleff-plugin
  (package
    (name "haskell-9.0-cleff-plugin")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cleff-plugin/cleff-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "092lwskcwhgylzx1a02fjjgd15v0ipvx4mxnmdii2r782v697g37"))))
    (properties `((upstream-name . "cleff-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cleff)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/re-xyr/cleff#readme")
    (synopsis "Automatic disambiguation for extensible effects")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/cleff/tree/master/cleff-plugin#readme>")
    (license license:bsd-3)))

haskell-9.0-cleff-plugin

(define-public haskell-9.0-commonmark-extensions
  (package
    (name "haskell-9.0-commonmark-extensions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-commonmark)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-emojis)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides some useful extensions to core commonmark
syntax: smart quotes, definition lists, tables, footnotes, math,
and more.")
    (license license:bsd-3)))

haskell-9.0-commonmark-extensions

(define-public haskell-9.0-conduit-concurrent-map
  (package
    (name "haskell-9.0-conduit-concurrent-map")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-concurrent-map/conduit-concurrent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mpbklyfqdc1wzx5z4dy2x2y5zi8bb7p83q04csybj5c5f4136yq"))))
    (properties `((upstream-name . "conduit-concurrent-map") (hidden? . #f)))
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
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-say)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nh2/conduit-concurrent-map")
    (synopsis "Concurrent, order-preserving mapping Conduit")
    (description
     "Provides a @@Conduit@@ that maps a function concurrently over incoming elements, maintaining input order.")
    (license license:expat)))

haskell-9.0-conduit-concurrent-map

(define-public haskell-9.0-conduit-extra
  (package
    (name "haskell-9.0-conduit-extra")
    (version "1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lzip3af77wxf3a3vilfymqhd26gkvabx2fkj22w74nq960c6l49"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-9.0-conduit-extra

(define-public haskell-9.0-covariance
  (package
    (name "haskell-9.0-covariance")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/covariance/covariance-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aqml07q4rxihv3mrflprx2gm1c56np2m4n8kbipcdiflndn1017"))))
    (properties `((upstream-name . "covariance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-glasso)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/covariance")
    (synopsis
     "Well-conditioned estimation of large-dimensional covariance matrices")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/covariance#readme>")
    (license license:gpl3+)))

haskell-9.0-covariance

(define-public haskell-9.0-criterion
  (package
    (name "haskell-9.0-criterion")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-binary-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-code-page)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-criterion-measurement)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-js-chart)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-microstache)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
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

haskell-9.0-criterion

(define-public haskell-9.0-cubicbezier
  (package
    (name "haskell-9.0-cubicbezier")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fast-math)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-integration)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-matrices)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-space)))
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

haskell-9.0-cubicbezier

(define-public haskell-9.0-cursor-brick
  (package
    (name "haskell-9.0-cursor-brick")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-brick)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cursor)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/cursor-brick#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>")
    (license license:expat)))

haskell-9.0-cursor-brick

(define-public haskell-9.0-cursor-fuzzy-time
  (package
    (name "haskell-9.0-cursor-fuzzy-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cursor)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-fuzzy-time)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Cursors for the fuzzy-time parser and resolver")
    (license license:expat)))

haskell-9.0-cursor-fuzzy-time

(define-public haskell-9.0-d10
  (package
    (name "haskell-9.0-d10")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/d10/d10-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0494hnk99nski7xsas06kbskvi4m9k7h5hizn1w8034xc34n0ppg"))))
    (properties `((upstream-name . "d10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/typeclasses/d10")
    (synopsis "Digits 0-9")
    (description
     "Data types representing the digits zero through nine.

== Modules

Each of the following modules defines a different type named
@@D10@@, all of which are different representations of the same
concept:

* \"D10.Char\" - Defines a @@D10@@ type as a newtype for @@Char@@,
  where the values are restricted to characters between
  @@'0'@@ and @@'9'@@
* \"D10.Num\" - Defines a @@D10@@ type as a newtype for any
  type with an instance of the @@Num@@ class, where the values
  are restricted to numbers between @@fromInteger 0@@ and
  @@fromInteger 9@@
* \"D10.Safe\" - Defines a @@D10@@ type as @@D0 | D1 | D2 | ... | D9@@

The @@Arithmetic@@ modules provide infix operators (@@+@@), (@@-@@), (@@*@@)
for modular arithmetic:

* \"D10.Char.Arithmetic\"
* \"D10.Num.Arithmetic\"
* \"D10.Safe.Arithmetic\"

The following modules export constructors that can be used
incorrectly:

* \"D10.Char.Unsafe\"
* \"D10.Num.Unsafe\"

Functions to test whether values of various types represent
digits in the range 0 to 9:

* \"D10.Predicate\"

== Quasi-quoters

* The \"D10.Char\" and \"D10.Num\" modules include quasi-quoters
  named @@d10@@ used to express single digits. For example, 7
  can be written as @@[d10|7|]@@. This is an important feature
  because the @@D10@@ types defined in these modules have
  unsafe constructors, and the quasi-quoters provide
  compile-time assurance that we never construct a @@D10@@
  that represents a value outside the range 0 to 9.
* \"D10.Char\", \"D10.Num\", and \"D10.Safe\" include quasi-quoters
  named @@d10list@@ to express lists of digits. For example,
  [4, 5, 6] can be written as @@[d10list|456|]@@.")
    (license license:expat)))

haskell-9.0-d10

(define-public haskell-9.0-data-sketches
  (package
    (name "haskell-9.0-data-sketches")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-sketches/data-sketches-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3157ch2l2vn6s1b6mcfjw3lnvp45vm3dykzbjmfglhz7x9dxbz"))))
    (properties `((upstream-name . "data-sketches") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-data-sketches-core)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iand675/datasketches-haskell#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/iand675/datasketches-haskell#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-data-sketches

(define-public haskell-9.0-dataurl
  (package
    (name "haskell-9.0-dataurl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTF)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-dataurl

(define-public haskell-9.0-dbcleaner
  (package
    (name "haskell-9.0-dbcleaner")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/dbcleaner")
    (synopsis "Clean database tables automatically around hspec tests")
    (description "A simple database cleaner library for testing that provides
different cleanup strategies.")
    (license license:expat)))

haskell-9.0-dbcleaner

(define-public haskell-9.0-dependent-sum
  (package
    (name "haskell-9.0-dependent-sum")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-constraints-extras)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-dependent-sum

(define-public haskell-9.0-di-df1
  (package
    (name "haskell-9.0-di-df1")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-df1)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-di-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-di-handle)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-di-monad)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Write logs in the df1 format using the di logging framework")
    (description
     "Write logs in the df1 format using the di logging framework.")
    (license license:bsd-3)))

haskell-9.0-di-df1

(define-public haskell-9.0-doctemplates
  (package
    (name "haskell-9.0-doctemplates")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08l8lgmvn83xwbdlh4m2jljj5gcyxiq1vjd1ggysv36d81swsg1x"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-HsYAML)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doclayout)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-doctemplates

(define-public haskell-9.0-drifter-postgresql
  (package
    (name "haskell-9.0-drifter-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-drifter)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/michaelxavier/drifter-postgresql")
    (synopsis "PostgreSQL support for the drifter schema migration tool")
    (description "Support for postgresql-simple Query migrations as well as
arbitrary Haskell IO functions. Be sure to check the
examples dir for a usage example.")
    (license license:expat)))

haskell-9.0-drifter-postgresql

(define-public haskell-9.0-ecstasy
  (package
    (name "haskell-9.0-ecstasy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-ecstasy

(define-public haskell-9.0-elynx-seq
  (package
    (name "haskell-9.0-elynx-seq")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-seq/elynx-seq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mcdg4nv9hdmw0lcr2vhy748d3ykcrlplc8hz14ywkxaxlrqb1sm"))))
    (properties `((upstream-name . "elynx-seq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-matrices)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-elynx-seq

(define-public haskell-9.0-elynx-tree
  (package
    (name "haskell-9.0-elynx-tree")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tree/elynx-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jhr5czybmp98cxzipa01wjkxz9jbryqlj02lcmbxlal7sqifsy4"))))
    (properties `((upstream-name . "elynx-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-elynx-nexus)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-elynx-tree

(define-public haskell-9.0-envelope
  (package
    (name "haskell-9.0-envelope")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-envelope

(define-public haskell-9.0-equational-reasoning
  (package
    (name "haskell-9.0-equational-reasoning")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-desugar)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (home-page "https://hackage.haskell.org/package/equational-reasoning")
    (synopsis "Proof assistant for Haskell using DataKinds & PolyKinds")
    (description
     "A simple convenient library to write equational / preorder proof as in Agda.
Since 0.6.0.0, this no longer depends on @@singletons@@ package, and the @@Proof.Induction@@ module goes to @@equational-reasoning-induction@@ package.")
    (license license:bsd-3)))

haskell-9.0-equational-reasoning

(define-public haskell-9.0-essence-of-live-coding
  (package
    (name "haskell-9.0-essence-of-live-coding")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding/essence-of-live-coding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bmcy6j0zw9v7z4sr0m300ckr1mdh3wxj975wbgbl8qlkwsfwv9l"))))
    (properties `((upstream-name . "essence-of-live-coding") (hidden? . #f)))
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
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-foreign-store)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.")
    (license license:bsd-3)))

haskell-9.0-essence-of-live-coding

(define-public haskell-9.0-eventful-core
  (package
    (name "haskell-9.0-eventful-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-sum-type-boilerplate)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Core module for eventful")
    (description "Core module for eventful")
    (license license:expat)))

haskell-9.0-eventful-core

(define-public haskell-9.0-fold-debounce-conduit
  (package
    (name "haskell-9.0-fold-debounce-conduit")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce-conduit/fold-debounce-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xy6vr2hbw41fcs3rlk7wyxqrkqd3nfw5rcr1aiij86zaaifpry5"))))
    (properties `((upstream-name . "fold-debounce-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-fold-debounce)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/debug-ito/fold-debounce-conduit")
    (synopsis
     "Regulate input traffic from conduit Source with Control.FoldDebounce")
    (description
     "Regulate input traffic from conduit Source with Control.FoldDebounce. See \"Data.Conduit.FoldDebounce\"")
    (license license:bsd-3)))

haskell-9.0-fold-debounce-conduit

(define-public haskell-9.0-fsnotify
  (package
    (name "haskell-9.0-fsnotify")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-hinotify)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shelly)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-9.0-fsnotify

(define-public haskell-9.0-genvalidity-hspec
  (package
    (name "haskell-9.0-genvalidity-hspec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-9.0-genvalidity-hspec

(define-public haskell-9.0-glabrous
  (package
    (name "haskell-9.0-glabrous")
    (version "2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/glabrous/glabrous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yz2h8x8hhy8nqy2pppax0mbb3k2ydcspbyngy19afphxxd5bbkz"))))
    (properties `((upstream-name . "glabrous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-text)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/glabrous")
    (synopsis "A template DSL library")
    (description "A minimalistic, Mustache-like syntax, truly logic-less,
pure Text template DSL library")
    (license license:bsd-3)))

haskell-9.0-glabrous

(define-public haskell-9.0-goldplate
  (package
    (name "haskell-9.0-goldplate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fugue/goldplate")
    (synopsis "A lightweight golden test runner")
    (description
     "Language-agnostic golden test runner for command-line applications.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-goldplate

(define-public haskell-9.0-graph-core
  (package
    (name "haskell-9.0-graph-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTF)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-9.0-graph-core

(define-public haskell-9.0-gravatar
  (package
    (name "haskell-9.0-gravatar")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-pureMD5)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pbrisbin/gravatar#readme")
    (synopsis "Generate Gravatar image URLs")
    (description "Generate Gravatar image URLs")
    (license license:expat)))

haskell-9.0-gravatar

(define-public haskell-9.0-greskell
  (package
    (name "haskell-9.0-greskell")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell/greskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0havwzskc9abganrgj991r7szcagzw4vkm8qh6b7xqykdf4479xv"))))
    (properties `((upstream-name . "greskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-server-test" "-f-server-behavior-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-greskell-core)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell binding for Gremlin graph query language")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is the main entry point of greskell family.
It re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,
and adds some useful functions to it.")
    (license license:bsd-3)))

haskell-9.0-greskell

(define-public haskell-9.0-greskell-websocket
  (package
    (name "haskell-9.0-greskell-websocket")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-websocket/greskell-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nw8jz843080w6jq4j8bmqv9pz66va1yp36a0d1vkybhdhlxs5vy"))))
    (properties `((upstream-name . "greskell-websocket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-server-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-greskell-core)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell client for Gremlin Server using WebSocket serializer")
    (description
     "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),
and best used with [greskell](http://hackage.haskell.org/package/greskell) package.")
    (license license:bsd-3)))

haskell-9.0-greskell-websocket

(define-public haskell-9.0-groundhog-postgresql
  (package
    (name "haskell-9.0-groundhog-postgresql")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-postgresql/groundhog-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03l54srq5hlx70xvcfzp212zf2bdpil61q3kq6fhwqcrqklvwpy1"))))
    (properties `((upstream-name . "groundhog-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-groundhog)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/groundhog-postgresql")
    (synopsis "PostgreSQL backend for the groundhog library.")
    (description "This package uses postgresql-simple and postgresql-libpq.")
    (license license:bsd-3)))

haskell-9.0-groundhog-postgresql

(define-public haskell-9.0-groundhog-sqlite
  (package
    (name "haskell-9.0-groundhog-sqlite")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-sqlite/groundhog-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07hnm4pja70algvcd3gzn6zwh2c3is4p6m2kcicpfhjiclhv8fqn"))))
    (properties `((upstream-name . "groundhog-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-direct-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-groundhog)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/groundhog-sqlite")
    (synopsis "Sqlite3 backend for the groundhog library")
    (description
     "It depends on direct-sqlite library which includes Sqlite C sources, so there are no system dependencies.")
    (license license:bsd-3)))

haskell-9.0-groundhog-sqlite

(define-public haskell-9.0-hadoop-streaming
  (package
    (name "haskell-9.0-hadoop-streaming")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hadoop-streaming/hadoop-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zlk9spilimpnvgyifpwp4k2n4ki5sv7lsaw912q9fxp8mmwycsy"))))
    (properties `((upstream-name . "hadoop-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zliu41/hadoop-streaming")
    (synopsis "A simple Hadoop streaming library")
    (description
     "A simple Hadoop streaming library based on <https://hackage.haskell.org/package/conduit conduit>,
useful for writing mapper and reducer logic in Haskell and running it on AWS Elastic MapReduce,
Azure HDInsight, GCP Dataproc, and so forth.")
    (license license:bsd-3)))

haskell-9.0-hadoop-streaming

(define-public haskell-9.0-hall-symbols
  (package
    (name "haskell-9.0-hall-symbols")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-matrix)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/hall-symbols#readme")
    (synopsis "Symmetry operations generater of Hall Symbols")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>")
    (license license:bsd-3)))

haskell-9.0-hall-symbols

(define-public haskell-9.0-happstack-server-tls
  (package
    (name "haskell-9.0-happstack-server-tls")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-happstack-server)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-sendfile)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "extend happstack-server with https:// support (TLS/SSL)")
    (description
     "Allows you to use https:// without relying on apache, nginx, etc")
    (license license:bsd-3)))

haskell-9.0-happstack-server-tls

(define-public haskell-9.0-happy-meta
  (package
    (name "haskell-9.0-happy-meta")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/happy-meta")
    (synopsis "Quasi-quoter for Happy parsers")
    (description
     "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.")
    (license license:bsd-3)))

haskell-9.0-happy-meta

(define-public haskell-9.0-hashids
  (package
    (name "haskell-9.0-hashids")
    (version "1.0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashids/hashids-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zl43g73czc4253a235vnnsv64m5rf7337q7qjgfrfb0pjyxsj55"))))
    (properties `((upstream-name . "hashids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one.")
    (license license:expat)))

haskell-9.0-hashids

(define-public haskell-9.0-haskintex
  (package
    (name "haskell-9.0-haskintex")
    (version "0.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskintex/haskintex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12q6j9z7hwb93sli4wk4lidlf3m7y3dazpp5ymvpbxnb7wjzirr6"))))
    (properties `((upstream-name . "haskintex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-HaTeX)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://daniel-diaz.github.io/projects/haskintex")
    (synopsis "Haskell Evaluation inside of LaTeX code.")
    (description
     "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained
in some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language
extension and, in brief, anything you can do within Haskell.
Additionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.
You can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,
and therefore, easy to understand, use and predict.

Additions from last version:

* /haskintex/ is now able to detect that is running on a cabal sandbox, and will use the sandbox package
db if this is the case. Unless the flag @@-nosandbox@@ is given, in which case the sandbox will be ignored.

* New flag @@-nosandbox@@. Ignore sandbox if /haskintex/ runs on one.
")
    (license license:bsd-3)))

haskell-9.0-haskintex

(define-public haskell-9.0-haskoin-core
  (package
    (name "haskell-9.0-haskoin-core")
    (version "0.21.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-core/haskoin-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12i490xjfb0aav18ay3ahh0hpa9l5095a4hmva1ka3497clm7cfr"))))
    (properties `((upstream-name . "haskoin-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base16)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-murmur3)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-secp256k1-haskell)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Bitcoin & Bitcoin Cash library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-core#readme>")
    (license license:expat)))

haskell-9.0-haskoin-core

(define-public haskell-9.0-hedgehog-classes
  (package
    (name "haskell-9.0-hedgehog-classes")
    (version "0.2.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-classes/hedgehog-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qanfnvciykm5hmiqyf0icn4xn16v6zvlfal98lphhcmym26m9x1"))))
    (properties `((upstream-name . "hedgehog-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fcomonad" "-fsemirings" "-fprimitive" "-fvector")
       #:cabal-revision
       ("3" "09khb9px24zj24ahb51w1a6glgmcnhk2xn89gn1qwzhs3xn4vlj5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-wl-pprint-annotated)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hedgehogqa/haskell-hedgehog-classes")
    (synopsis "Hedgehog will eat your typeclass bugs")
    (description
     "This library provides Hedgehog properties to ensure
that typeclass instances adhere to the set of laws
that they are supposed to. There are other libraries
that do similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing any
new typeclasses that the user needs to learn, and otherwise minimal
API overhead.

This library is directly inspired by `quickcheck-classes`.")
    (license license:bsd-3)))

haskell-9.0-hedgehog-classes

(define-public haskell-9.0-hedgehog-fn
  (package
    (name "haskell-9.0-hedgehog-fn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-9.0-hedgehog-fn

(define-public haskell-9.0-hedgehog-quickcheck
  (package
    (name "haskell-9.0-hedgehog-quickcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
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

haskell-9.0-hedgehog-quickcheck

(define-public haskell-9.0-hedn
  (package
    (name "haskell-9.0-hedn")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13cmpyx7givc5ay43slf2ss4dqgnhb91nvyxp4201zznl5w570nh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-deriving-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/hedn")
    (synopsis "EDN parsing and encoding")
    (description
     "A EDN parsing and encoding library.

Based on \"specs\" published at <https://github.com/edn-format/edn>.")
    (license license:bsd-3)))

haskell-9.0-hedn

(define-public haskell-9.0-here
  (package
    (name "haskell-9.0-here")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-9.0-here

(define-public haskell-9.0-heterocephalus
  (package
    (name "haskell-9.0-heterocephalus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)))
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

haskell-9.0-heterocephalus

(define-public haskell-9.0-hi-file-parser
  (package
    (name "haskell-9.0-hi-file-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/hi-file-parser#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/hi-file-parser/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.0-hi-file-parser

(define-public haskell-9.0-hledger-lib
  (package
    (name "haskell-9.0-hledger-lib")
    (version "1.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06b9nkpkwbr14jgbc04635qd7b3s068jvdfkfiza2zb4yzhdzh1n"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-Decimal)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-cassava-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doclayout)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pretty-simple)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-tabular)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-timeit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-uglymemo)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
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

haskell-9.0-hledger-lib

(define-public haskell-9.0-hmatrix-vector-sized
  (package
    (name "haskell-9.0-hmatrix-vector-sized")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-vector-sized/hmatrix-vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15crzx0cmhmrv2y2gg53x6rzmvawzwgck82c6v6xf49lp02svmj8"))))
    (properties `((upstream-name . "hmatrix-vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-9.0-hmatrix-vector-sized

(define-public haskell-9.0-hslua-aeson
  (package
    (name "haskell-9.0-hslua-aeson")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x966djzb9blrs586407qx6lz8bh23s048jv9nbgzy99qwxm20db"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Allow aeson data types to be used with Lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-9.0-hslua-aeson

(define-public haskell-9.0-hslua-classes
  (package
    (name "haskell-9.0-hslua-classes")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-classes/hslua-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gz30ppa7fjm555mxmwfjq767wn6z60jkw36sdmryrby1raspz4s"))))
    (properties `((upstream-name . "hslua-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Type classes for HsLua")
    (description "Type classes for convenient marshalling and calling of
Lua functions.")
    (license license:expat)))

haskell-9.0-hslua-classes

(define-public haskell-9.0-hslua-objectorientation
  (package
    (name "haskell-9.0-hslua-objectorientation")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-objectorientation/hslua-objectorientation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ghqsaknl4b8l3f6src8q7b54r5crmja62mhfwhz8a35px3rzrx"))))
    (properties `((upstream-name . "hslua-objectorientation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Object orientation tools for HsLua")
    (description "Expose Haskell objects to Lua with an object oriented
interface.")
    (license license:expat)))

haskell-9.0-hslua-objectorientation

(define-public haskell-9.0-hspec-hedgehog
  (package
    (name "haskell-9.0-hspec-hedgehog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)))
    (home-page "https://github.com/parsonsmatt/hspec-hedgehog#readme")
    (synopsis "Integrate Hedgehog and Hspec!")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>")
    (license license:bsd-3)))

haskell-9.0-hspec-hedgehog

(define-public haskell-9.0-http-api-data-qq
  (package
    (name "haskell-9.0-http-api-data-qq")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/http-api-data-qq#readme")
    (synopsis "Quasiquoter for building URLs with ToHttpApiData types")
    (description "Quasiquoter for building URLs with strings interpolated
using ToHttpApiData instances")
    (license license:bsd-3)))

haskell-9.0-http-api-data-qq

(define-public haskell-9.0-http-client-openssl
  (package
    (name "haskell-9.0-http-client-openssl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-9.0-http-client-openssl

(define-public haskell-9.0-http-io-streams
  (package
    (name "haskell-9.0-http-io-streams")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbrotli" "-ffast-xor")
       #:cabal-revision
       ("1" "0v2xp9fhrw77vh4vz5qk9lip5mhbf9lz5nkdrfcvrilfjgg4s17b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-brotli-streams)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-openssl-streams)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-xor)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
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

haskell-9.0-http-io-streams

(define-public haskell-9.0-http-link-header
  (package
    (name "haskell-9.0-http-link-header")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis "HTTP Link header parser/writer")
    (description
     "A parser and writer for the HTTP Link header per RFC 5988 (see README.md for more info)")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-http-link-header

(define-public haskell-9.0-http-streams
  (package
    (name "haskell-9.0-http-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-http-common)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-openssl-streams)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
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

haskell-9.0-http-streams

(define-public haskell-9.0-hvega
  (package
    (name "haskell-9.0-hvega")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega-Lite visualizations (version 4) in Haskell.")
    (description
     "This is based on the elm-vegalite package
(<http://package.elm-lang.org/packages/gicentre/elm-vegalite/latest>)
by Jo Wood of the giCentre at the City University of London.")
    (license license:bsd-3)))

haskell-9.0-hvega

(define-public haskell-9.0-hw-conduit
  (package
    (name "haskell-9.0-hw-conduit")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iv001vm0xlz9msw5f6bcr2a4fd7rhyd1zmk3axnh80g4m8lknzj"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04vgiy5i3qwxspdxwb4nyw0snzqvsiqilwibb8zjv0nd51d9kpwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-9.0-hw-conduit

(define-public haskell-9.0-hw-diagnostics
  (package
    (name "haskell-9.0-hw-diagnostics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doctest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-diagnostics#readme")
    (synopsis "Diagnostics library")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-diagnostics

(define-public haskell-9.0-hw-hedgehog
  (package
    (name "haskell-9.0-hw-hedgehog")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hedgehog/hw-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kksignrvx566vfz52q5lid9f2zh02dpvnw1gznnkhwnvbldmbi8"))))
    (properties `((upstream-name . "hw-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0c9wy5jmsmfwz151k9zxfsj5663zz3rsvmr0i9vsv5agw8fb8xhq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doctest-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-9.0-hw-hedgehog

(define-public haskell-9.0-hw-string-parse
  (package
    (name "haskell-9.0-hw-string-parse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doctest-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-string-parse#readme")
    (synopsis "String parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-string-parse

(define-public haskell-9.0-hxt-css
  (package
    (name "haskell-9.0-hxt-css")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-9.0-hxt-css

(define-public haskell-9.0-hxt-curl
  (package
    (name "haskell-9.0-hxt-curl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-curl)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-hxt-curl

(define-public haskell-9.0-hxt-expat
  (package
    (name "haskell-9.0-hxt-expat")
    (version "9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-expat/hxt-expat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mi2f2i31nqjqzwl82iypm1qngrpxp7lz506pjgqfbn840yc9n8h"))))
    (properties `((upstream-name . "hxt-expat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hexpat)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)))
    (propagated-inputs (list (@ (gnu packages xml) expat)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://www.fh-wedel.de/~si/HXmlToolbox/index.html")
    (synopsis "Expat parser for HXT")
    (description "The Expat interface for the HXT.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-hxt-expat

(define-public haskell-9.0-hxt-http
  (package
    (name "haskell-9.0-hxt-http")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)))
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

haskell-9.0-hxt-http

(define-public haskell-9.0-hxt-tagsoup
  (package
    (name "haskell-9.0-hxt-tagsoup")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hxt-charproperties)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-hxt-tagsoup

(define-public haskell-9.0-incremental-parser
  (package
    (name "haskell-9.0-incremental-parser")
    (version "0.5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental-parser/incremental-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gk3qxn8hg15h6aw7aswjr302pda2m20irzmbc6av2hw254d8b9p"))))
    (properties `((upstream-name . "incremental-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-input-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-rank2classes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/incremental-parser")
    (synopsis
     "Generic parser library capable of providing partial results from partial input.")
    (description
     "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski
derivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out
of the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser
result is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-incremental-parser

(define-public haskell-9.0-interpolate
  (package
    (name "haskell-9.0-interpolate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-9.0-interpolate

(define-public haskell-9.0-interpolatedstring-perl6
  (package
    (name "haskell-9.0-interpolatedstring-perl6")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-interpolatedstring-perl6

(define-public haskell-9.0-ip6addr
  (package
    (name "haskell-9.0-ip6addr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-IPv6Addr)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-9.0-ip6addr

(define-public haskell-9.0-ipynb
  (package
    (name "haskell-9.0-ipynb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-microlens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-9.0-ipynb

(define-public haskell-9.0-jsonpath
  (package
    (name "haskell-9.0-jsonpath")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonpath/jsonpath-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d9h6j0xzrpxc56wym9b0sdanpw1v2rcx1sdm49h6iriwwmckb10"))))
    (properties `((upstream-name . "jsonpath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-casing)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-9.0-jsonpath

(define-public haskell-9.0-language-c-quote
  (package
    (name "haskell-9.0-language-c-quote")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")
       #:cabal-revision
       ("1" "1vl92h4z294ycg87140qk7v40r7vz43n8anpd2w1jdnwd6w4f4m3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-exception-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-exception-transformers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mainland-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-srcloc)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-9.0-language-c-quote

(define-public haskell-9.0-lens
  (package
    (name "haskell-9.0-lens")
    (version "5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gzwx4b758phm51hz5i4bbkbvjw1ka7qj04zd9l9sh9n6s9ksm7c"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-dump-splices" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-ftrustworthy" "-f-j")
       #:cabal-revision
       ("3" "17qmk274b88k4ivhnkc6600djhh9d7pr4s1xhzi3ln2cspj5gvb3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-assoc)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-reflect)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-lens

(define-public haskell-9.0-libyaml
  (package
    (name "haskell-9.0-libyaml")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libyaml/libyaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dcpbsjg6n305l07isxmavgp01lbv1qggy16acjyxjlz35pxchlg"))))
    (properties `((upstream-name . "libyaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("1" "00f1rag6sd7c8kza2agw9089p9vf21iiga2aq41nbf6d3yqn7dkz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Low-level, streaming YAML interface.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/libyaml>")
    (license license:bsd-3)))

haskell-9.0-libyaml

(define-public haskell-9.0-literatex
  (package
    (name "haskell-9.0-literatex")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/literatex/literatex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j82z5q6dzgi7b8si0fzxa3zv8rgqdhwm82sxh3wqsb6z1jfwk37"))))
    (properties `((upstream-name . "literatex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-write-hie")
       #:cabal-revision
       ("1" "091nqn5dsfr0hrsw92vs7n93p9h3j49q9v2n9ijcsb1cd6b473qf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-ttc)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/literatex-haskell#readme")
    (synopsis "transform literate source code to Markdown")
    (description
     "This package provides a library as well as a command-line utility that
transforms literate source code to Markdown.  Please see the README on
GitHub at <https://github.com/ExtremaIS/literatex-haskell#readme>.")
    (license license:expat)))

haskell-9.0-literatex

(define-public haskell-9.0-lzma-conduit
  (package
    (name "haskell-9.0-lzma-conduit")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pmvmchrg429b2yk485x0066lxcr37cbyczlyp3ala2iaq8hm61z"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-lzma)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-9.0-lzma-conduit

(define-public haskell-9.0-math-extras
  (package
    (name "haskell-9.0-math-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/zliu41/math-extras")
    (synopsis "A variety of mathematical utilities")
    (description "A variety of mathematical utilities not covered in base.")
    (license license:bsd-3)))

haskell-9.0-math-extras

(define-public haskell-9.0-mighty-metropolis
  (package
    (name "haskell-9.0-mighty-metropolis")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-mcmc-types)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-mighty-metropolis

(define-public haskell-9.0-min-max-pqueue
  (package
    (name "haskell-9.0-min-max-pqueue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/zliu41/min-max-pqueue")
    (synopsis "Double-ended priority queues.")
    (description
     "Min-max priority queues, also known as double-ended priority queues.")
    (license license:bsd-3)))

haskell-9.0-min-max-pqueue

(define-public haskell-9.0-mnist-idx-conduit
  (package
    (name "haskell-9.0-mnist-idx-conduit")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx-conduit/mnist-idx-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0319icnnw38fivjwz9m142wyp059hn5rydr6cdjq73d5d9c77xhx"))))
    (properties `((upstream-name . "mnist-idx-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/mnist-idx-conduit")
    (synopsis "conduit utilities for MNIST IDX files")
    (description
     "Conduit decoders for MNIST IDX data files, as described in http://yann.lecun.com/exdb/mnist/ . The IDX format is a low-level binary representation for storing general vector, image or tensor data. Here the parsers are specialized to the MNIST dataset, which stores scans of handwritten digits and is a classic benchmark for text classification.")
    (license license:bsd-3)))

haskell-9.0-mnist-idx-conduit

(define-public haskell-9.0-mod
  (package
    (name "haskell-9.0-mod")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/mod")
    (synopsis "Fast type-safe modular arithmetic")
    (description
     "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,
promoting moduli to the type level, with an emphasis on performance.
Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-9.0-mod

(define-public haskell-9.0-ndjson-conduit
  (package
    (name "haskell-9.0-ndjson-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-9.0-ndjson-conduit

(define-public haskell-9.0-oeis
  (package
    (name "haskell-9.0-oeis")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis/oeis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0aa5i0328k8pf0y439b95c3ipv70lfabvv55jp64pwb9kx6p5ymv"))))
    (properties `((upstream-name . "oeis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/oeis")
    (synopsis
     "Interface to the Online Encyclopedia of Integer Sequences (OEIS)")
    (description
     "Interface to the <http://oeis.org/ Online Encyclopedia of Integer Sequences (OEIS)>.")
    (license license:bsd-3)))

haskell-9.0-oeis

(define-public haskell-9.0-opaleye
  (package
    (name "haskell-9.0-opaleye")
    (version "0.9.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/opaleye/opaleye-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lkdi2svbv64z4rnsfxbr7ijb3a5rmsx4c6igzql7ajrlwha49rx"))))
    (properties `((upstream-name . "opaleye") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-product-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tomjaguarpaw/haskell-opaleye")
    (synopsis "An SQL-generating DSL targeting PostgreSQL")
    (description "An SQL-generating DSL targeting PostgreSQL.  Allows
Postgres queries to be written within Haskell in a
typesafe and composable fashion.")
    (license license:bsd-3)))

haskell-9.0-opaleye

(define-public haskell-9.0-optparse-enum
  (package
    (name "haskell-9.0-optparse-enum")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-enum-text)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-fmt)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/optparse-enum#readme")
    (synopsis "An enum-text based toolkit for optparse-applicative")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/optparse-enum#readme>")
    (license license:bsd-3)))

haskell-9.0-optparse-enum

(define-public haskell-9.0-pdf-toolbox-content
  (package
    (name "haskell-9.0-pdf-toolbox-content")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files")
    (description "Tools for processing PDF content streams")
    (license license:bsd-3)))

haskell-9.0-pdf-toolbox-content

(define-public haskell-9.0-peregrin
  (package
    (name "haskell-9.0-peregrin")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/peregrin/peregrin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m7s8ws47g9icf9rfi8sk51bjwpbz5av17lbsnfg2cz3gji0977w"))))
    (properties `((upstream-name . "peregrin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/peregrin")
    (synopsis "Database migration support for use in other libraries.")
    (description "Database migration support for use in other libraries.
Currently only supports PostgreSQL.")
    (license license:expat)))

haskell-9.0-peregrin

(define-public haskell-9.0-pg-harness-client
  (package
    (name "haskell-9.0-pg-harness-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "Client library for pg-harness-server")
    (description
     "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>
for conveniently creating temporary PostgreSQL databases for use in tests.")
    (license license:bsd-2)))

haskell-9.0-pg-harness-client

(define-public haskell-9.0-pg-transact
  (package
    (name "haskell-9.0-pg-transact")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "A postgresql-simple transaction monad")
    (description "A postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-9.0-pg-transact

(define-public haskell-9.0-pipes-csv
  (package
    (name "haskell-9.0-pipes-csv")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-csv/pipes-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cv8vb5jm95h3jqm4xhndgijcivmcxdjppvcs88bpjbfspfzb1cl"))))
    (properties `((upstream-name . "pipes-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-MissingH)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-9.0-pipes-csv

(define-public haskell-9.0-pipes-fastx
  (package
    (name "haskell-9.0-pipes-fastx")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-9.0-pipes-fastx

(define-public haskell-9.0-pointed
  (package
    (name "haskell-9.0-pointed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
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
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-9.0-pointed

(define-public haskell-9.0-poly
  (package
    (name "haskell-9.0-poly")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poly/poly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h7nbyiwnbxyj2jss04raws7zapfq7mvzj7fmi8rqyr0aw91k4zl"))))
    (properties `((upstream-name . "poly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-finite-typelits)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/poly#readme")
    (synopsis "Polynomials")
    (description "Polynomials backed by `Vector`.")
    (license license:bsd-3)))

haskell-9.0-poly

(define-public haskell-9.0-polysemy-uncontrolled
  (package
    (name "haskell-9.0-polysemy-uncontrolled")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-uncontrolled/polysemy-uncontrolled-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01z19dy9gb78iwanszyipszq05piaa3n4qjmyj0yg22a1xsm02mi"))))
    (properties `((upstream-name . "polysemy-uncontrolled") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-polysemy-methodology)))
    (home-page "https://hackage.haskell.org/package/polysemy-uncontrolled")
    (synopsis "Uncontrolled toy effect for polysemy.")
    (description "")
    (license license:expat)))

haskell-9.0-polysemy-uncontrolled

(define-public haskell-9.0-polysemy-vinyl
  (package
    (name "haskell-9.0-polysemy-vinyl")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-vinyl/polysemy-vinyl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06y91nv2fcis058gqv5hlpl5a6kmia5r9sc6npp6102lc19vkkc4"))))
    (properties `((upstream-name . "polysemy-vinyl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13f289dxr03habyggn3vl7lzrl2r3a9r0y0bisrfmq48qaiv08n1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-polysemy-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-polysemy-several)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-vinyl)))
    (home-page "https://hackage.haskell.org/package/polysemy-vinyl")
    (synopsis "Functions for mapping vinyl records in polysemy.")
    (description "Extra functions for using vinyl records in polysemy.")
    (license license:expat)))

haskell-9.0-polysemy-vinyl

(define-public haskell-9.0-postgresql-migration
  (package
    (name "haskell-9.0-postgresql-migration")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cryptohash)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/andrevdm/postgresql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.0-postgresql-migration

(define-public haskell-9.0-postgresql-orm
  (package
    (name "haskell-9.0-postgresql-orm")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-orm")
    (synopsis
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.")
    (description
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See
\"Database.PostgreSQL.ORM\" for documentation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-postgresql-orm

(define-public haskell-9.0-postgresql-schema
  (package
    (name "haskell-9.0-postgresql-schema")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-schema/postgresql-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wnmhh8pzs9hzsmqkvr89jbdbbd1j87fnly2c80rsd7wr5qcrpkk"))))
    (properties `((upstream-name . "postgresql-schema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-basic-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shelly)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/mfine/postgresql-schema")
    (synopsis "PostgreSQL Schema Management")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-postgresql-schema

(define-public haskell-9.0-postgresql-simple-url
  (package
    (name "haskell-9.0-postgresql-simple-url")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
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

haskell-9.0-postgresql-simple-url

(define-public haskell-9.0-prospect
  (package
    (name "haskell-9.0-prospect")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/isovector/prospect#readme")
    (synopsis "Explore continuations with trepidation")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>")
    (license license:bsd-3)))

haskell-9.0-prospect

(define-public haskell-9.0-protocol-buffers-descriptor
  (package
    (name "haskell-9.0-protocol-buffers-descriptor")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-protocol-buffers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis
     "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification")
    (description "Uses protocol-buffers package")
    (license license:bsd-3)))

haskell-9.0-protocol-buffers-descriptor

(define-public haskell-9.0-psql-helpers
  (package
    (name "haskell-9.0-psql-helpers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/agrafix/psql-helpers#readme")
    (synopsis
     "A small collection of helper functions to generate postgresql queries")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-psql-helpers

(define-public haskell-9.0-qm-interpolated-string
  (package
    (name "haskell-9.0-qm-interpolated-string")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12jxkkbpmkdrjrkj242z6l4vhbgwj79b8s5l3gxs9fbg4s4pqp2k"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-qm-interpolated-string

(define-public haskell-9.0-quickbench
  (package
    (name "haskell-9.0-quickbench")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickbench/quickbench-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16bkhk5fskhhjqzklqwv51s1k7cxgcyr4p1vifmrd6smxvidb5rn"))))
    (properties `((upstream-name . "quickbench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-docopt)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-tabular)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-quickbench

(define-public haskell-9.0-rattle
  (package
    (name "haskell-9.0-rattle")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rattle/rattle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd3knid238fa85rm2d0kavhyry6d6lilpk2p4ki9njgq2003bbk"))))
    (properties `((upstream-name . "rattle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-filepattern)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-heaps)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-js-dgtable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-js-flot)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-js-jquery)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shake)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/rattle#readme")
    (synopsis "Forward build system, with caching and speculation")
    (description
     "A forward build system like Fabrciate but with speculation and remote caching.")
    (license license:bsd-3)))

haskell-9.0-rattle

(define-public haskell-9.0-reform-hamlet
  (package
    (name "haskell-9.0-reform-hamlet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-reform)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using Hamlet with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Hamlet.")
    (license license:bsd-3)))

haskell-9.0-reform-hamlet

(define-public haskell-9.0-reform-happstack
  (package
    (name "haskell-9.0-reform-happstack")
    (version "0.2.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-happstack/reform-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0knsx790vf5xvnxhfdz48gz3352z98ghy1ld7yh3rmp1apciqd35"))))
    (properties `((upstream-name . "reform-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-happstack-server)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-reform)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "Happstack support for reform.")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Happstack.")
    (license license:bsd-3)))

haskell-9.0-reform-happstack

(define-public haskell-9.0-reroute
  (package
    (name "haskell-9.0-reroute")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reroute/reroute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jvh5ngpf1w4y9b1ipx1c65q8gmwsajp8k5ha0sjn89hbc8cp48y"))))
    (properties `((upstream-name . "reroute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hvect)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/Spock")
    (synopsis "abstract implementation of typed and untyped web routing")
    (description
     "abstraction over how urls with/without parameters are mapped to their corresponding handlers")
    (license license:expat)))

haskell-9.0-reroute

(define-public haskell-9.0-rescue
  (package
    (name "haskell-9.0-rescue")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rescue/rescue-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "096wlxiz8bjvjpnp68qzmkplddm3nh5417b3amn9x6kj7wvbf1ky"))))
    (properties `((upstream-name . "rescue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-world-peace)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/expede/rescue#readme")
    (synopsis "More understandable exceptions")
    (description "An error handling library focused on clarity and control")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-rescue

(define-public haskell-9.0-rhbzquery
  (package
    (name "haskell-9.0-rhbzquery")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhbzquery/rhbzquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00175smanmcr6k8b83kj7mif47jggxn0pvy64yjc4ikpbw822c2q"))))
    (properties `((upstream-name . "rhbzquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-config-ini)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-email-validate)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-rhbzquery-notests)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-cmd)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-rhbzquery

(define-public haskell-9.0-roc-id
  (package
    (name "haskell-9.0-roc-id")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roc-id/roc-id-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ac4hrl6qihrhcyx41rf0qnmf9bi848nhdgs71mq3i9gqbnxfi1i"))))
    (properties `((upstream-name . "roc-id") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-Only)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonathanknowles/roc-id#readme")
    (synopsis "Implementation of the ROC National ID standard.")
    (description
     "This package provides an implementation of the ROC National Identification
Number (中華民國身分證號碼) standard.

In particular, it provides functions for parsing and validating identification
numbers from textual input.

See the \"ROC.ID\" module to get started.

For more details of the standard on which this package is based, see:

* https://zh.wikipedia.org/wiki/中華民國國民身分證
* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)")
    (license license:bsd-3)))

haskell-9.0-roc-id

(define-public haskell-9.0-rocksdb-query
  (package
    (name "haskell-9.0-rocksdb-query")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-query/rocksdb-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh88q0vq0b13ig6vmwi8wa73d45qxdkbbc29zphch6p2z4n81wq"))))
    (properties `((upstream-name . "rocksdb-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-rocksdb-haskell-jprupp)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-query#readme")
    (synopsis "RocksDB database querying library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/rocksdb-query#readme>")
    (license license:expat)))

haskell-9.0-rocksdb-query

(define-public haskell-9.0-safe-coloured-text-terminfo
  (package
    (name "haskell-9.0-safe-coloured-text-terminfo")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-terminfo/safe-coloured-text-terminfo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f94zzmanmxplkcg1s954rq00ppv69icyjpzr5s0g6c14zp1k85b"))))
    (properties `((upstream-name . "safe-coloured-text-terminfo")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-safe-coloured-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-9.0-safe-coloured-text-terminfo

(define-public haskell-9.0-safe-money
  (package
    (name "haskell-9.0-safe-money")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-space)))
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

haskell-9.0-safe-money

(define-public haskell-9.0-safeio
  (package
    (name "haskell-9.0-safeio")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-9.0-safeio

(define-public haskell-9.0-sequence-formats
  (package
    (name "haskell-9.0-sequence-formats")
    (version "1.6.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequence-formats/sequence-formats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qylf0nx0g7z3wr95bza5vpmmsd4q3mvp8xsc7g2pwvsdpgxz9c9"))))
    (properties `((upstream-name . "sequence-formats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-safe)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stschiff/sequence-formats")
    (synopsis
     "A package with basic parsing utilities for several Bioinformatic data formats.")
    (description
     "Contains utilities to parse and write Eigenstrat, Fasta, FreqSum, VCF, Plink and other file formats used in population genetics analyses.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-sequence-formats

(define-public haskell-9.0-serialise
  (package
    (name "haskell-9.0-serialise")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cborg)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-half)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-serialise

(define-public haskell-9.0-servant
  (package
    (name "haskell-9.0-servant")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-singleton-bool)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-sop-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.0-servant

(define-public haskell-9.0-shake-language-c
  (package
    (name "haskell-9.0-shake-language-c")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-language-c/shake-language-c-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0smbshksjw114m09n5i1ynkhibvd9kix9n7h696p75g40ka7k6"))))
    (properties `((upstream-name . "shake-language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-fclabels)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shake)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/samplecount/shake-language-c")
    (synopsis "Utilities for cross-compiling with Shake")
    (description
     "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @@C@@, @@C++@@ and @@ObjC@@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-shake-language-c

(define-public haskell-9.0-singletons-th
  (package
    (name "haskell-9.0-singletons-th")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-th/singletons-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0w7sg0lbpizrzns4g55wxsk5jm8wlqw0w9rz4jzqwy15byb572"))))
    (properties `((upstream-name . "singletons-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11mmccdqxplqz7mp1brxpr9hqnkqkhbwnp32mihz4ird0k8gwqij")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-singletons)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-desugar)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-th-orphans)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "@@singletons-th@@ defines Template Haskell functionality that allows
/promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents. This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.

@@singletons-th@@ generates code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-th@@ only supports the latest major version
of GHC (currently GHC 9.0). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-base@@ library uses @@singletons-th@@ to define promoted and
singled functions from the @@base@@ library, including the \"Prelude\".")
    (license license:bsd-3)))

haskell-9.0-singletons-th

(define-public haskell-9.0-snap-blaze
  (package
    (name "haskell-9.0-snap-blaze")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-snap-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-9.0-snap-blaze

(define-public haskell-9.0-squeather
  (package
    (name "haskell-9.0-squeather")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/squeather/squeather-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pjiq97gq8rjp4v7cx2bhj7zcwkswc593fxdwqajssi1i39679r6"))))
    (properties `((upstream-name . "squeather") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://hackage.haskell.org/package/squeather")
    (synopsis
     "Use databases with the version 3 series of the SQLite C library")
    (description
     "This library allows you to use databases with the version 3 series
of the [SQLite](https://sqlite.org) C library.  The biggest difference
between this library and others available on Hackage is that it uses the
extended error descriptions that SQLite makes available.  It also cleans up
resources such as database and statement handles in an automatic, though
non-deterministic, fashion.")
    (license license:bsd-3)))

haskell-9.0-squeather

(define-public haskell-9.0-state-codes
  (package
    (name "haskell-9.0-state-codes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acamino/state-codes#README")
    (synopsis "ISO 3166-2:US state codes and i18n names")
    (description
     "This package provides the ISO 3166-2:US state codes and i18n names")
    (license license:expat)))

haskell-9.0-state-codes

(define-public haskell-9.0-store
  (package
    (name "haskell-9.0-store")
    (version "0.7.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "125n9jcqjcyk7ypky4i0fydy1msgn8ldrhyhclqp1w0p7s2wazsg"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-integer-simple" "-f-small-bench")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cryptohash)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-nats)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-store-core)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-th-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-th-reify-many)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-utilities)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mgsloan/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-9.0-store

(define-public haskell-9.0-string-interpolate
  (package
    (name "haskell-9.0-string-interpolate")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-interpolate/string-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gmph9mikqq8hch9wjyyx6dxfxwhmdfrwsrxkvbk7i24lvi19hhp"))))
    (properties `((upstream-name . "string-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extended-benchmarks" "-f-text-builder" "-f-bytestring-builder")
       #:cabal-revision
       ("1" "1nrpng7r59a25z4qns8vy26rvp1wgn5f4bs8ism40q66ags8f2ad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-text)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md")
    (synopsis "Haskell string/text/bytestring interpolation that just works")
    (description
     "Unicode-aware string interpolation that handles all textual types.

See the README at <https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md> for more info.")
    (license license:bsd-3)))

haskell-9.0-string-interpolate

(define-public haskell-9.0-symmetry-operations-symbols
  (package
    (name "haskell-9.0-symmetry-operations-symbols")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-matrix)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/symmetry-operations-symbols#readme")
    (synopsis "Derivation of symbols and coordinate triplets Library")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>")
    (license license:bsd-3)))

haskell-9.0-symmetry-operations-symbols

(define-public haskell-9.0-tar-conduit
  (package
    (name "haskell-9.0-tar-conduit")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgn3hyf20g1gfnzy8f41s7nj54kfcyjk2izw99svrw8f3dphi80"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-9.0-tar-conduit

(define-public haskell-9.0-tasty-hedgehog
  (package
    (name "haskell-9.0-tasty-hedgehog")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cy49z8n124xh2ra2482vfy5if1n6d9lbdjma2zg1mxfj0k0zyfb"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1i7i2yws3bdmsg2hl7dh65zvh9sna3gnlv0l4m1sqqdx5dji1a3w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-9.0-tasty-hedgehog

(define-public haskell-9.0-tasty-lua
  (package
    (name "haskell-9.0-tasty-lua")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-lua/tasty-lua-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vnyvgcjsvqhwwyqkbgqksr9ppj5whiihpwcqkg33sl7jj3ysdwv"))))
    (properties `((upstream-name . "tasty-lua") (hidden? . #f)))
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
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Write tests in Lua, integrate into tasty.")
    (description "Allow users to define tasty tests from Lua.")
    (license license:expat)))

haskell-9.0-tasty-lua

(define-public haskell-9.0-teardown
  (package
    (name "haskell-9.0-teardown")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-teardown

(define-public haskell-9.0-texmath
  (package
    (name "haskell-9.0-texmath")
    (version "0.12.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k7hh75jzgysh7b7jkvy4w07dbkvm5fcc5hkkixz6xzrp2fvnws3"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
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
(See <http://johnmacfarlane.net/texmath here> for a live demo of
bidirectional conversion between LaTeX and MathML.)

The package also includes several utility modules which may be
useful for anyone looking to manipulate either TeX math or
MathML.  For example, a copy of the MathML operator dictionary is
included.  .  Use the @@executable@@ flag to install a standalone
executable, @@texmath@@, that by default reads a LaTeX formula from
@@stdin@@ and writes MathML to @@stdout@@.  With flags all the
functionality exposed by 'Text.TeXMath' can be accessed through
this executable.  (Use the @@--help@@ flag for a description of all
functionality)

The @@texmath@@ executable can also be used as a CGI script, when
renamed as @@texmath-cgi@@.  It will expect query parameters for
@@from@@, @@to@@, @@input@@, and optionally @@inline@@, and return a JSON
object with either @@error@@ and a message or @@success@@ and the
converted result.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-texmath

(define-public haskell-9.0-tracing
  (package
    (name "haskell-9.0-tracing")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtth/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.")
    (license license:bsd-3)))

haskell-9.0-tracing

(define-public haskell-9.0-tracing-control
  (package
    (name "haskell-9.0-tracing-control")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-lifted)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
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

haskell-9.0-tracing-control

(define-public haskell-9.0-tuples
  (package
    (name "haskell-9.0-tuples")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/tuples")
    (synopsis "Small monomorphic tuples")
    (description "This library provides small tuples where all the elements
are the same type. The elements always unpack into the
data constructor. This can be helpful when the tuple type
is itself nested inside of another data constructor.")
    (license license:bsd-3)))

haskell-9.0-tuples

(define-public haskell-9.0-universe
  (package
    (name "haskell-9.0-universe")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-universe-instances-extended)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-universe-some)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-universe

(define-public haskell-9.0-users-postgresql-simple
  (package
    (name "haskell-9.0-users-postgresql-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-users)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
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

haskell-9.0-users-postgresql-simple

(define-public haskell-9.0-users-test
  (package
    (name "haskell-9.0-users-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-users)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "Library to test backends for the users library")
    (description
     "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.

All backend packages should conform to this specification.")
    (license license:expat)))

haskell-9.0-users-test

(define-public haskell-9.0-wai-conduit
  (package
    (name "haskell-9.0-wai-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-9.0-wai-conduit

(define-public haskell-9.0-wai-middleware-caching-lru
  (package
    (name "haskell-9.0-wai-middleware-caching-lru")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-lrucache)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-lru#readme")
    (synopsis "Initial project template from stack")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-wai-middleware-caching-lru

(define-public haskell-9.0-wai-session-postgresql
  (package
    (name "haskell-9.0-wai-session-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-session)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/hce/postgresql-session#readme")
    (synopsis "PostgreSQL backed Wai session store")
    (description
     "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.")
    (license license:bsd-3)))

haskell-9.0-wai-session-postgresql

(define-public haskell-9.0-wai-slack-middleware
  (package
    (name "haskell-9.0-wai-slack-middleware")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-9.0-wai-slack-middleware

(define-public haskell-9.0-web-routes-happstack
  (package
    (name "haskell-9.0-web-routes-happstack")
    (version "0.23.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-happstack/web-routes-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ks9c8bln8yiff7dqfm3ai7scci304q94w1zaqvzph57m1whrd6"))))
    (properties `((upstream-name . "web-routes-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-happstack-server)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/web-routes-happstack")
    (synopsis "Adds support for using web-routes with Happstack")
    (description
     "Added Happstack class instances for RouteT. Provides a default router for Site.")
    (license license:bsd-3)))

haskell-9.0-web-routes-happstack

(define-public haskell-9.0-wide-word
  (package
    (name "haskell-9.0-wide-word")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wide-word/wide-word-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10sj7nca2sba74bkiicnp95xrfq2j1al93ggw3z24982nm9x3j8r"))))
    (properties `((upstream-name . "wide-word") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "150ikl5cf15lbk383pv1w8smpwbp0dzc0vby653fbzm8a2svcx76")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/erikd/wide-word")
    (synopsis
     "Data types for large but fixed width signed and unsigned integers")
    (description
     "A library to provide data types for large (ie > 64 bits) but fixed width signed
and unsigned integers with the usual typeclass instances to allow them to be used
interchangeably with `Word64`.

The types and operations are coded to be as fast as possible using strictness
annotations, `INLINEABLE` pragmas and unboxed values and operations where
appropriate.")
    (license license:bsd-2)))

haskell-9.0-wide-word

(define-public haskell-9.0-withdependencies
  (package
    (name "haskell-9.0-withdependencies")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/withdependencies/withdependencies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hjld3ndafnaxwx1c6s88dc3bimbc5vwfdf6lcsq22apzh1gmdm6"))))
    (properties `((upstream-name . "withdependencies") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bartavelle/withdependencies")
    (synopsis
     "Run computations that depend on one or more elements in a stream.")
    (description
     "Run computations that depend on one or more elements in a stream. It lets you model dependencies as an applicative functor.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-withdependencies

(define-public haskell-9.0-witness
  (package
    (name "haskell-9.0-witness")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witness/witness-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0888969dypgykmhp33nar4a6yhrbd5i6agnbq415ni5cfdx1c2cr"))))
    (properties `((upstream-name . "witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-countable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/witness")
    (synopsis "values that witness types")
    (description
     "A witness is a value that /witnesses/ some sort of constraint on some list of type variables. This library provides support for simple witnesses, that constrain a type variable to a single type, and equality witnesses, that constrain two type variables to be the same type. It also provides classes for representatives, which are values that represent types. See the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).")
    (license license:bsd-3)))

haskell-9.0-witness

(define-public haskell-9.0-wordpress-auth
  (package
    (name "haskell-9.0-wordpress-auth")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hs-php-session)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-uri-encode)))
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

haskell-9.0-wordpress-auth

(define-public haskell-9.0-x509-system
  (package
    (name "haskell-9.0-x509-system")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "049bdaxrih49nkhkyl2342qnbx2f0q99z8rld648bz1kkgyizz38"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description
     "System X.509 handling for accessing operating system dependents store and other storage methods")
    (license license:bsd-3)))

haskell-9.0-x509-system

(define-public haskell-9.0-x509-validation
  (package
    (name "haskell-9.0-x509-validation")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j7is28ljz4yxwxz5ax3x7ykgwkr38dx46bw7vgj4arkk7hl93hd"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-9.0-x509-validation

(define-public haskell-9.0-xeno
  (package
    (name "haskell-9.0-xeno")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i7snivbl0xby5p1wgai1g44qphj91n8chhkfg6vajcf05fr964l"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-libxml2" "-f-whitespace-around-equals")
       #:cabal-revision
       ("1" "1f3gkprlqddvkch2qylj02xwsjjhbpgnbiira0dpvgg9hv6qxkhm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-hexml)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-mutable-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-9.0-xeno

(define-public haskell-9.0-xmonad
  (package
    (name "haskell-9.0-xmonad")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-setlocale)))
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

haskell-9.0-xmonad

