;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage016)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.2))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.2-BNFC-meta
  (package
    (name "haskell-9.2-BNFC-meta")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-alex-meta)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-happy-meta)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-BNFC-meta

(define-public haskell-9.2-Chart-cairo
  (package
    (name "haskell-9.2-Chart-cairo")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Chart-cairo/Chart-cairo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0clm68alzsakkn5m4h49dgx33crajacsykb4hry2fh9zxp9j743f"))))
    (properties `((upstream-name . "Chart-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1d48i6y0lzj066swdb3x56jipxwlx1szwn7j43d50hxmcfjrsgc9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-Chart)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "Cairo backend for Charts.")
    (description "Cairo backend for Charts.")
    (license license:bsd-3)))

haskell-9.2-Chart-cairo

(define-public haskell-9.2-HasBigDecimal
  (package
    (name "haskell-9.2-HasBigDecimal")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HasBigDecimal/HasBigDecimal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "182hdsbl3adldkix6m4dv7fn2cjvvjjx76hwdmd0j0bh4h7y61yi"))))
    (properties `((upstream-name . "HasBigDecimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/thma/HasBigDecimal#readme")
    (synopsis "A library for arbitrary precision decimal numbers.")
    (description
     "Please see the README on GitHub at <https://github.com/thma/HasBigDecimal#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-HasBigDecimal

(define-public haskell-9.2-SciBaseTypes
  (package
    (name "haskell-9.2-SciBaseTypes")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SciBaseTypes/SciBaseTypes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12k2arn3qbgfa8bc344vv02smqj3yd6rqhnpfib3yi43nkbaazqa"))))
    (properties `((upstream-name . "SciBaseTypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debugdump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-DPutils)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-log-domain)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/SciBaseTypes")
    (synopsis "Base types and classes for statistics, sciences and humanities")
    (description "This library provides a set of basic types and classes for
statistics, sciences, and the humanities.")
    (license license:bsd-3)))

haskell-9.2-SciBaseTypes

(define-public haskell-9.2-active
  (package
    (name "haskell-9.2-active")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/active")
    (synopsis "Abstractions for animation")
    (description
     "\"Active\" abstraction for animated things with finite start and end times.")
    (license license:bsd-3)))

haskell-9.2-active

(define-public haskell-9.2-aeson-commit
  (package
    (name "haskell-9.2-aeson-commit")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-commit/aeson-commit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z0fp6ip6i67gb06cjdmd3gd20wl64964kfkir35hh6mpi9wpln6"))))
    (properties `((upstream-name . "aeson-commit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-qq)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/xc-jp/aeson-commit#readme")
    (synopsis "Parse Aeson data with commitment")
    (description
     "Commitment mechanism for @@aeson@@ parsers.
Commitment means that if some initial parsing succeeds, subsequent failures are unrecoverable.")
    (license license:bsd-3)))

haskell-9.2-aeson-commit

(define-public haskell-9.2-aeson-diff
  (package
    (name "haskell-9.2-aeson-diff")
    (version "1.1.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-diff/aeson-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sd13q0nj0k1sam5xfj6dcjcki18f375sa69hm6i4xc6snfhn3cb"))))
    (properties `((upstream-name . "aeson-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1028adallw7bm72948lj322bb5a99gfs0qc1j0pnm8hryp6n7ma5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-edit-distance-vector)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ysangkok/aeson-diff")
    (synopsis "Extract and apply patches to JSON documents.")
    (description
     "
This is a small library for working with changes to JSON documents. It
includes a library and two command-line executables in the style of the
diff(1) and patch(1) commands available on many systems.
")
    (license license:bsd-3)))

haskell-9.2-aeson-diff

(define-public haskell-9.2-aeson-picker
  (package
    (name "haskell-9.2-aeson-picker")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/aeson-picker#readme")
    (synopsis "Tiny library to get fields from JSON format")
    (description "Tiny library to get fields from JSON format")
    (license license:bsd-3)))

haskell-9.2-aeson-picker

(define-public haskell-9.2-aeson-schemas
  (package
    (name "haskell-9.2-aeson-schemas")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-qq)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-first-class-families)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-test-utils)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/aeson-schemas#readme")
    (synopsis "Easily consume JSON data on-demand with type-safety")
    (description
     "Parse JSON data easily and safely without defining new data types. Useful
for deeply nested JSON data, which is difficult to parse using the default
FromJSON instances.")
    (license license:bsd-3)))

haskell-9.2-aeson-schemas

(define-public haskell-9.2-aeson-typescript
  (package
    (name "haskell-9.2-aeson-typescript")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-string-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/codedownio/aeson-typescript#readme")
    (synopsis "Generate TypeScript definition files from your ADTs")
    (description
     "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>")
    (license license:bsd-3)))

haskell-9.2-aeson-typescript

(define-public haskell-9.2-aeson-yaml
  (package
    (name "haskell-9.2-aeson-yaml")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yaml/aeson-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06x1l0a0dvzf8n2xmqny5qpsgdsl03xlh2z9x7wdxiykl8p4xd24"))))
    (properties `((upstream-name . "aeson-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-binaries")
       #:cabal-revision
       ("3" "11srm7kkslnicqvbk728kzpy58am8rz680f7l6axn2nfh5ykx8n6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-string-qq)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/clovyr/aeson-yaml")
    (synopsis "Output any Aeson value as YAML (pure Haskell library)")
    (description
     "This library exposes functions for encoding any Aeson value as YAML. There
is also support for encoding multiple values into YAML \"documents\".

This library is pure Haskell, and does not depend on C FFI with libyaml. It
is also licensed under the BSD3 license.")
    (license license:bsd-3)))

haskell-9.2-aeson-yaml

(define-public haskell-9.2-agda2lagda
  (package
    (name "haskell-9.2-agda2lagda")
    (version "0.2021.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/agda2lagda/agda2lagda-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1108xzl4fv86qpasg1wbc26bypd06s41kmgzybrggc76pv15hbis"))))
    (properties `((upstream-name . "agda2lagda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-goldplate)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/agda2lagda")
    (synopsis "Translate .agda files into .lagda.tex files.")
    (description "Simple command line tool to convert plain Agda
or Haskell files into literate files.  Line comments
are interpreted as text, the rest as code blocks.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-agda2lagda

(define-public haskell-9.2-apecs
  (package
    (name "haskell-9.2-apecs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-9.2-apecs

(define-public haskell-9.2-arbtt-notests
  (package
    (name "haskell-9.2-arbtt-notests")
    (version "0.12.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/arbtt/arbtt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a2gabg8v28jcl1nddj4pfmpwc57g68i0qnnx3p26k3psrkmy6xq"))))
    (properties `((upstream-name . "arbtt") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-X11)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-bytestring-progress)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-terminal-progress-bar)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-tz)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://arbtt.nomeata.de/")
    (synopsis "Automatic Rule-Based Time Tracker")
    (description
     "arbtt is a background daemon that stores which windows are open, which one
has the focus and how long since your last action (and possbly more sources
later), and stores this. It is also a program that will, based on
expressive rules you specify, derive what you were doing, and what for.

The documentation, which includes the changelog, can also be found at
<http://arbtt.nomeata.de/doc/users_guide/>.

WARNING: The log file might contain very sensitive private data. Make sure
you understand the consequences of a full-time logger and be careful with this
data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-arbtt-notests

(define-public haskell-9.2-arithmoi
  (package
    (name "haskell-9.2-arithmoi")
    (version "0.12.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mxkzcg2pik4p1ik648h3w953zmf47ycafm2gd7hgg4gadsnslj"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-chimera)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-exact-pi)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-integer-roots)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-mod)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-rerun)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-9.2-arithmoi

(define-public haskell-9.2-autodocodec-yaml
  (package
    (name "haskell-9.2-autodocodec-yaml")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autodocodec-yaml/autodocodec-yaml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00cf3zz0jgnqq45rkpf5a9jlds16rgfc15ndhv1fgq7yz935g93f"))))
    (properties `((upstream-name . "autodocodec-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-autodocodec-schema)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for yaml")
    (description "")
    (license license:expat)))

haskell-9.2-autodocodec-yaml

(define-public haskell-9.2-aws-xray-client
  (package
    (name "haskell-9.2-aws-xray-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-qq)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray.")
    (description
     "The core client for enabling AWX X-Ray.

See other `aws-xray-client-*` packages for usage and integration examples.")
    (license license:expat)))

haskell-9.2-aws-xray-client

(define-public haskell-9.2-base64-bytestring-type
  (package
    (name "haskell-9.2-base64-bytestring-type")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring-type/base64-bytestring-type-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kq4rjj6by02rf3hg815jfdqpdk0xygm5f46r2pn8mb99yd01zn"))))
    (properties `((upstream-name . "base64-bytestring-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcereal" "-fserialise" "-fhttp-api-data")
       #:cabal-revision
       ("15" "0yka3aazfd5jj0dqh89cpjc8sgx3yhiiqfhrpb9z5p4zvbyvym6g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-serialise)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-9.2-base64-bytestring-type

(define-public haskell-9.2-bench
  (package
    (name "haskell-9.2-bench")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bench/bench-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sy97qpv6paar2d5syppk6lc06wjx6qyz5aidsmh30jq853nydx6"))))
    (properties `((upstream-name . "bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0i4rsw28q2qzihv7cvf32nidpmsl4hks8wzafyi8v5i4gb5jqa7q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-turtle)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Gabriella439/bench")
    (synopsis "Command-line benchmark tool")
    (description "Think of this as a more powerful alternative to the @@time@@
command.  Use this command-line tool to benchmark a command
using Haskell's @@criterion@@ library.")
    (license license:bsd-3)))

haskell-9.2-bench

(define-public haskell-9.2-bm
  (package
    (name "haskell-9.2-bm")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bm/bm-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1rpwlbhn5fkndw19ryksm9x2fcg7z7xscigi4zfs9v4w16skn7zj"))))
    (properties `((upstream-name . "bm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("3" "12san5rjl486n4wf3918bd3rm64n52d82vgz85pjb8gc2s8drdk1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/bm-haskell#readme")
    (synopsis "open bookmarks and queries from the command line")
    (description
     "This package provides a command-line utility that opens bookmarks and
queries.  Please see the README on GitHub at
<https://github.com/ExtremaIS/bm-haskell#readme>.")
    (license license:expat)))

haskell-9.2-bm

(define-public haskell-9.2-buffer-builder
  (package
    (name "haskell-9.2-buffer-builder")
    (version "0.2.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l70h4j1dmhm96fsxg1mhiw00h9jqw0wy02v31lsz0jwpdr2513"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-9.2-buffer-builder

(define-public haskell-9.2-byteslice
  (package
    (name "haskell-9.2-byteslice")
    (version "0.2.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byteslice/byteslice-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mzqlyh0mswk64irz0sr8fk0v9y9ksb1k1j3g51l9vhhnz0cavhj"))))
    (properties `((upstream-name . "byteslice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-favoid-rawmemchr")
       #:cabal-revision
       ("1" "1g5670xillqbfpnsxppfjkvaaff4rjlk6116pc5s1pds0zsnbyy8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-primitive-addr)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-run-st)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tuples)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/byteslice")
    (synopsis "Slicing managed and unmanaged memory")
    (description
     "This library provides types that allow the user to talk about a slice of
a ByteArray or a MutableByteArray. It also offers UnmanagedBytes, which
is kind of like a slice into unmanaged memory. However, it is just an
address and a length.")
    (license license:bsd-3)))

haskell-9.2-byteslice

(define-public haskell-9.2-cabal-debian
  (package
    (name "haskell-9.2-cabal-debian")
    (version "5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-debian/cabal-debian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fz71v2yx3rykvzswvqza5v9jwdhy2ahxj003gkkhfwfc2qjip3p"))))
    (properties `((upstream-name . "cabal-debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-debian)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hsemail)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-newtype-generics)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/clinty/cabal-debian")
    (synopsis "Create a Debianization for a Cabal package")
    (description
     "This package supports the generation of a package Debianization (i.e.
the files in the @@debian@@ subdirectory) for a cabal package,
either through a library API or using the cabal-debian executable.
For documentation of the executable, run
@@cabal-debian --help@@, for documentation of the library API follow
the link to the @@Debian.Debianize@@ module below.")
    (license license:bsd-3)))

haskell-9.2-cabal-debian

(define-public haskell-9.2-call-alloy
  (package
    (name "haskell-9.2-call-alloy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-trifecta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/marcellussiegburg/call-alloy#readme")
    (synopsis "A simple library to call Alloy given a specification")
    (description
     "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-alloy#readme>")
    (license license:expat)))

haskell-9.2-call-alloy

(define-public haskell-9.2-citeproc
  (package
    (name "haskell-9.2-citeproc")
    (version "0.8.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/citeproc/citeproc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rja6vdggmh7d40gsg2xfs9md6m1zbfddpsd27a15qyqb3530jzw"))))
    (properties `((upstream-name . "citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-icu" "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-timeit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-unicode-collation)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/citeproc")
    (synopsis "Generates citations and bibliography from CSL styles.")
    (description "citeproc parses CSL style files and uses them to
generate a list of formatted citations and bibliography
entries.  For more information about CSL, see
<https://citationstyles.org/>.")
    (license license:bsd-2)))

haskell-9.2-citeproc

(define-public haskell-9.2-conduit-algorithms
  (package
    (name "haskell-9.2-conduit-algorithms")
    (version "0.0.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-algorithms/conduit-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i5jq66xylcnk3yhv2m6lhyqfdrwr94w8v67jzwlvja15jv7mj9v"))))
    (properties `((upstream-name . "conduit-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-lzma-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-stm-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-9.2-conduit-algorithms

(define-public haskell-9.2-conferer-aeson
  (package
    (name "haskell-9.2-conferer-aeson")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-aeson/conferer-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rdal3smq1s14zmsn7g26vc6sqj21rsa2a1vcbrwrfgh9x36jkn"))))
    (properties `((upstream-name . "conferer-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "000fs57llk3f1x0rgdkxzbqzwzh5fx3mirpx0scmnj936byapp4c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-qq)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-conferer)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's source for reading json files")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-conferer-aeson

(define-public haskell-9.2-configuration-tools
  (package
    (name "haskell-9.2-configuration-tools")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configuration-tools/configuration-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gindjq9vd0fmsw6smwd3syz3k3bfkzsgmchqg6jllr6bhgvykjy"))))
    (properties `((upstream-name . "configuration-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-remote-configs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alephcloud/hs-configuration-tools")
    (synopsis "Tools for specifying and parsing configurations")
    (description
     "Tools for specifying and parsing configurations

This package provides a collection of utils on top of the packages
<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,
<http://hackage.haskell.org/package/aeson aeson>, and
<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and
applications in a convenient and composable way.

The main features are

1. configuration management through integration of command line option
parsing and configuration files and

2. a @@Setup.hs@@ file that generates a @@PkgInfo@@ module for each component
of a package that provides information about the package and the build.

Documentation on how to use this package can be found in the
<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>
and in the API documentation of the modules \"Configuration.Utils\" and
\"Configuration.Utils.Setup\".")
    (license license:expat)))

haskell-9.2-configuration-tools

(define-public haskell-9.2-data-interval
  (package
    (name "haskell-9.2-data-interval")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-extended-reals)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-lattices)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
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

haskell-9.2-data-interval

(define-public haskell-9.2-dbus
  (package
    (name "haskell-9.2-dbus")
    (version "1.2.27")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dbus/dbus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lkk9hd78h2ilvi0bj5jqq5q5lwyxzdlknwvckhwyxnlf3y6dz8z"))))
    (properties `((upstream-name . "dbus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/haskell-dbus#readme")
    (synopsis "A client library for the D-Bus IPC system.")
    (description
     "D-Bus is a simple, message-based protocol for inter-process
communication, which allows applications to interact with other parts of
the machine and the user's session using remote procedure calls.

D-Bus is a essential part of the modern Linux desktop, where it replaces
earlier protocols such as CORBA and DCOP.

This library is an implementation of the D-Bus protocol in Haskell. It
can be used to add D-Bus support to Haskell applications, without the
awkward interfaces common to foreign bindings.

Example: connect to the session bus, and get a list of active names.

@@
&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;

import Data.List (sort)
import DBus
import DBus.Client

main = do
&#x20;   client <- connectSession
&#x20;
&#x20;   -- Request a list of connected clients from the bus
&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")
&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"
&#x20;       &#x7d;
&#x20;
&#x20;   -- org.freedesktop.DBus.ListNames() returns a single value, which is
&#x20;   -- a list of names (here represented as [String])
&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)
&#x20;
&#x20;   -- Print each name on a line, sorted so reserved names are below
&#x20;   -- temporary names.
&#x20;   mapM_ putStrLn (sort names)
@@

>$ ghc --make list-names.hs
>$ ./list-names
>:1.0
>:1.1
>:1.10
>:1.106
>:1.109
>:1.110
>ca.desrt.dconf
>org.freedesktop.DBus
>org.freedesktop.Notifications
>org.freedesktop.secrets
>org.gnome.ScreenSaver")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-dbus

(define-public haskell-9.2-declarative
  (package
    (name "haskell-9.2-declarative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-mcmc-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-mighty-metropolis)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-mwc-probability)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-speedy-slice)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-declarative

(define-public haskell-9.2-dependent-map
  (package
    (name "haskell-9.2-dependent-map")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-map/dependent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b0zhyl3wkl4kkrxvq7vwjz3gn0ndxjjgyw9cky8a6xyv190pkjk"))))
    (properties `((upstream-name . "dependent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "160p9crvlx1sn60inkwxa6mv1h2d4fgqnpsb2km67zrkpdfyd2s2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-constraints-extras)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-dependent-sum)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/dependent-map")
    (synopsis "Dependent finite maps (partial dependent products)")
    (description "Provides a type called @@DMap@@ which generalizes
@@Data.Map.Map@@, allowing keys to specify the type
of value that can be associated with them.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-dependent-map

(define-public haskell-9.2-dependent-sum-template
  (package
    (name "haskell-9.2-dependent-sum-template")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-sum-template/dependent-sum-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03xffmih70ksk7jgfs3ypaa91bm1x21fjxqpj1gkhp9gbj6w2vyl"))))
    (properties `((upstream-name . "dependent-sum-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-constraints-extras)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-dependent-sum)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-th-extras)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/dependent-sum")
    (synopsis
     "Template Haskell code to generate instances of classes in dependent-sum package")
    (description
     "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-dependent-sum-template

(define-public haskell-9.2-dhall
  (package
    (name "haskell-9.2-dhall")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-atomic-write)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cborg)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-cborg-json)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-fix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-dotgen)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-half)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-lens-family-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pretty-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-repline)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-serialise)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-text-manipulate)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-uri-encode)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-dhall

(define-public haskell-9.2-diagrams-core
  (package
    (name "haskell-9.2-diagrams-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-dual-tree)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Core libraries for diagrams EDSL")
    (description "The core modules underlying diagrams,
an embedded domain-specific language
for compositional, declarative drawing.")
    (license license:bsd-3)))

haskell-9.2-diagrams-core

(define-public haskell-9.2-discrimination
  (package
    (name "haskell-9.2-discrimination")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discrimination/discrimination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qq7fs1dsfqgf4969gksqcp3swcx0wbzdh66a89fv78k6y94g0pc"))))
    (properties `((upstream-name . "discrimination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0mlask4a08z0bkns89857vj96cqdqvdxqf5q7qsa0kpdaqkwrjz9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-promises)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/discrimination/")
    (synopsis
     "Fast generic linear-time sorting, joins and container construction.")
    (description
     "This package provides fast, generic, linear-time discrimination and sorting.

The techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.")
    (license license:bsd-3)))

haskell-9.2-discrimination

(define-public haskell-9.2-distribution-nixpkgs
  (package
    (name "haskell-9.2-distribution-nixpkgs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-language-nix)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/distribution-nixpkgs#readme")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-9.2-distribution-nixpkgs

(define-public haskell-9.2-diversity
  (package
    (name "haskell-9.2-diversity")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diversity/diversity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ci864ki4hfrm4g82xbqhmkcvvifglrwf8ljjbawk32wpmz15yqv"))))
    (properties `((upstream-name . "diversity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-ordlist)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-fasta)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/GregorySchwartz/diversity")
    (synopsis "Quantify the diversity of a population")
    (description
     "Find the diversity of a collection of entities, mainly for use with fasta sequences.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-diversity

(define-public haskell-9.2-ede
  (package
    (name "haskell-9.2-ede")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-text-manipulate)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-trifecta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-ede

(define-public haskell-9.2-eliminators
  (package
    (name "haskell-9.2-eliminators")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "118bd51hfbh29yhs9ai3srk431avwsmccm1500mp21fbwxq8phsj"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-singleton-nats)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-singletons-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-desugar)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-9.2-eliminators

(define-public haskell-9.2-elynx-markov
  (package
    (name "haskell-9.2-elynx-markov")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-markov/elynx-markov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4nrpm3g9zwk1gf0v93nlr8vb5pd8sgn1mnzj6b968vq3zb2ab3"))))
    (properties `((upstream-name . "elynx-markov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-elynx-seq)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-integration)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Simulate molecular sequences along trees")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx-markov

(define-public haskell-9.2-fakedata
  (package
    (name "haskell-9.2-fakedata")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata/fakedata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12sldxpn14zx5zwblw28k593rdqz50d246rz8j3zj41ljmnbwj4i"))))
    (properties `((upstream-name . "fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-fakedata-parser)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-string-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-9.2-fakedata

(define-public haskell-9.2-faktory
  (package
    (name "haskell-9.2-faktory")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-casing)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-scanner)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-faktory

(define-public haskell-9.2-feed
  (package
    (name "haskell-9.2-feed")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/feed/feed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0marh7qmggq1z5339nid3gil7k786d3yk79b0rwfkxxaxmr41xd8"))))
    (properties `((upstream-name . "feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "032578cqdl7c7ibmbn92z6b72r8yvnwlhxwnr709pzdjc9qd4ghr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-party/feed")
    (synopsis "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.")
    (description
     "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.

To help working with the multiple feed formats we've
ended up with, this set of modules provides parsers,
pretty printers and some utility code for querying
and just generally working with a concrete representation
of feeds in Haskell.

See here for an example of how to create an Atom feed:
<https://github.com/haskell-party/feed/blob/master/tests/Example/CreateAtom.hs>

For basic reading and editing of feeds, consult
the documentation of the Text.Feed.* hierarchy.")
    (license license:bsd-3)))

haskell-9.2-feed

(define-public haskell-9.2-fix-whitespace
  (package
    (name "haskell-9.2-fix-whitespace")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fix-whitespace/fix-whitespace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q36vr3pfk1x14hl86g4g557299ih0510j7cf37h8n5nv8bs8gq2"))))
    (properties `((upstream-name . "fix-whitespace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-filepattern)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agda/fix-whitespace")
    (synopsis "Fixes whitespace issues.")
    (description
     "Removes trailing whitespace, lines containing only whitespace, expands tabs,
and ensures that every file ends in a newline character.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-fix-whitespace

(define-public haskell-9.2-follow-file
  (package
    (name "haskell-9.2-follow-file")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/follow-file/follow-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nxvw17ndjrg34mc2a0bcyprcng52f6mn3l7mhx2fc11njdf2b93"))))
    (properties `((upstream-name . "follow-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-attoparsec-path)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hinotify)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/follow-file#readme")
    (synopsis
     "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>")
    (license license:bsd-3)))

haskell-9.2-follow-file

(define-public haskell-9.2-force-layout
  (package
    (name "haskell-9.2-force-layout")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/force-layout")
    (synopsis "Simple force-directed layout")
    (description "Simulation engine for doing simple force-based layout,
/e.g./ for trees or graphs.  See the diagrams-contrib package
for usage examples.")
    (license license:bsd-3)))

haskell-9.2-force-layout

(define-public haskell-9.2-fourmolu
  (package
    (name "haskell-9.2-fourmolu")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fourmolu/fourmolu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zq9fv5yszm7icirgwj8g4lhg21lg87fhz56sssjnfikzmkwyh1l"))))
    (properties `((upstream-name . "fourmolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-ffixity-th")
       #:cabal-revision
       ("1" "0hbjn9qzbr7a9571isi4i651gdi60qqa40idpfg87qlg2sd61485")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-MemoTrie)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fourmolu/fourmolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.2-fourmolu

(define-public haskell-9.2-frontmatter
  (package
    (name "haskell-9.2-frontmatter")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/frontmatter/frontmatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17dr2g1rywai80hx2v51ljwjpsn6m1jgg6lb4gq9fwq9snq9gsv6"))))
    (properties `((upstream-name . "frontmatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-9.2-frontmatter

(define-public haskell-9.2-generics-eot
  (package
    (name "haskell-9.2-generics-eot")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-mockery)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-shake)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-9.2-generics-eot

(define-public haskell-9.2-genvalidity-criterion
  (package
    (name "haskell-9.2-genvalidity-criterion")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-criterion/genvalidity-criterion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mjfvnrzfqxv3xkj840sgbx99z5mi2y7cv2vn2z6ra4bs752jhx9"))))
    (properties `((upstream-name . "genvalidity-criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Criterion benchmarks for generators")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-criterion

(define-public haskell-9.2-genvalidity-hspec-aeson
  (package
    (name "haskell-9.2-genvalidity-hspec-aeson")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ga4g62z0fwkxbr2390dbmhpxpzczgz923gq0vvhnvc34r1vjh6"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-aeson

(define-public haskell-9.2-genvalidity-path
  (package
    (name "haskell-9.2-genvalidity-path")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rafj9sj8xv0b404wb7gjm1qnkvq2f8b9fk40pq5r2jp1wd0id1z"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-validity-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-path

(define-public haskell-9.2-geojson
  (package
    (name "haskell-9.2-geojson")
    (version "4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/geojson/geojson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p8vl13g9axbqqj3qbl453p4qwwmz0xjhpa5vmlk1fjznr04mdx6"))))
    (properties `((upstream-name . "geojson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-validation)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zellige/hs-geojson")
    (synopsis "A thin GeoJSON Layer above the aeson library")
    (description
     "A thin GeoJSON Layer above the aeson library.

It currently conforms to version 1.0 of the GeoJSON spec which can be found here:

<https://tools.ietf.org/html/rfc7946>")
    (license license:bsd-3)))

haskell-9.2-geojson

(define-public haskell-9.2-hamtsolo
  (package
    (name "haskell-9.2-hamtsolo")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamtsolo/hamtsolo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zgkwj2q3jpg6x6acrq2dbp0n0gps2wrrg2wx4ybpvy9vbw9qppc"))))
    (properties `((upstream-name . "hamtsolo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-9.2-hamtsolo

(define-public haskell-9.2-happstack-hsp
  (package
    (name "haskell-9.2-happstack-hsp")
    (version "7.3.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-hsp/happstack-hsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y23yzppvxjhmvaq9yl02v8mp6ww91jpsvqfhpzxkw1jccz54bcq"))))
    (properties `((upstream-name . "happstack-hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-happstack-server)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-harp)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-hsp)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hsx2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "Support for using HSP templates in Happstack")
    (description
     "Happstack is a web application framework. HSP is an XML templating solution. This package makes it easy to use HSP templates with Happstack.")
    (license license:bsd-3)))

haskell-9.2-happstack-hsp

(define-public haskell-9.2-happstack-jmacro
  (package
    (name "haskell-9.2-happstack-jmacro")
    (version "7.0.12.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-jmacro/happstack-jmacro-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zqfivzwq6wfwfgds5icy5rs5vrxiw9w1wzxn5jlqn7zkz3svbl9"))))
    (properties `((upstream-name . "happstack-jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-digest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-happstack-server)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-jmacro)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "Support for using JMacro with Happstack")
    (description
     "JMacro provides QuasiQuote support for embedding javascript in Haskell source. This module provides some helper functions for serving the generated javascript via Happstack")
    (license license:bsd-3)))

haskell-9.2-happstack-jmacro

(define-public haskell-9.2-haskell-gi
  (package
    (name "haskell-9.2-haskell-gi")
    (version "0.26.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi/haskell-gi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05r84czb05n69g7p7jazljh95yzdh2lpzgjjypgpg75mh83igr2w"))))
    (properties `((upstream-name . "haskell-gi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "Generate Haskell bindings for GObject Introspection capable libraries")
    (description
     "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably
Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-haskell-gi

(define-public haskell-9.2-hedgehog
  (package
    (name "haskell-9.2-hedgehog")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dbk75hk6hqpzkjdlpw3s63qhm42kqigij33p321by6xndb59jg1"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-barbies)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-concurrent-output)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-erf)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-wl-pprint-annotated)))
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

haskell-9.2-hedgehog

(define-public haskell-9.2-hie-bios
  (package
    (name "haskell-9.2-hie-bios")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hie-bios/hie-bios-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pcbgrn0hl19rk72z7mcd44j72lsmnl88nlk95rlb47l0ymr3ij1"))))
    (properties `((upstream-name . "hie-bios") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hvhln1mnvghs05959fi5i71gaw04zhdk4wg558h2p4ybjcjsvb5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mpickering/hie-bios")
    (synopsis "Set up a GHC API session")
    (description
     "Set up a GHC API session and obtain flags required to compile a source file")
    (license license:bsd-3)))

haskell-9.2-hie-bios

(define-public haskell-9.2-hindent
  (package
    (name "haskell-9.2-hindent")
    (version "5.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hindent/hindent-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pc20iza3v0ljzbx6cycm1j1kbmz8h95xwfq47fd6zfmsrx9w6vn"))))
    (properties `((upstream-name . "hindent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mihaimaruseac/hindent")
    (synopsis "Extensible Haskell pretty printer")
    (description
     "Extensible Haskell pretty printer. Both a library and an executable.

See the Github page for usage\\/explanation: <https://github.com/mihaimaruseac/hindent>")
    (license license:bsd-3)))

haskell-9.2-hindent

(define-public haskell-9.2-hinfo
  (package
    (name "haskell-9.2-hinfo")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hinfo/hinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04q4camvpfhgqmph4xpilwin9z5ig2v2mwhz2gz8wmgzyqxfbklv"))))
    (properties `((upstream-name . "hinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-9.2-hinfo

(define-public haskell-9.2-hledger-lib
  (package
    (name "haskell-9.2-hledger-lib")
    (version "1.27.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w2jnpyfc6pp3n5fzdjd78hdh9vv9w98xwd2j6dw98rm6hlapwhb"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-Decimal)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-breakpoint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cassava-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pretty-simple)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-tabular)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-timeit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-uglymemo)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
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

haskell-9.2-hledger-lib

(define-public haskell-9.2-hlint
  (package
    (name "haskell-9.2-hlint")
    (version "3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bkk03c9hacvfd73dk89g4r81b50g7pjgw5pavldali4qwss34cz"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fthreaded" "-fgpl" "-f-ghc-lib" "-f-hsyaml")
       #:cabal-revision
       ("1" "1rdaffg5n179yfcn5zjwjb0bki09qy13gz2ijky455y9pbaz8yz9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-cpphs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-deriving-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-filepattern)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hscolour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-refact)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-9.2-hlint

(define-public haskell-9.2-hpack
  (package
    (name "haskell-9.2-hpack")
    (version "0.35.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpack/hpack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hpc6bwx94v943p73l12nnncbs656f2fn7q3hb4qs13xrxygzl4g"))))
    (properties `((upstream-name . "hpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-infer-license)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "A modern format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-9.2-hpack

(define-public haskell-9.2-hpc-lcov
  (package
    (name "haskell-9.2-hpc-lcov")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpc-lcov/hpc-lcov-" version
                    ".tar.gz"))
              (sha256
               (base32
                "009z1i0ddjx7sazybirrpw99675p1fyl84ykg4dyypa7rz81vv3z"))))
    (properties `((upstream-name . "hpc-lcov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "11sbnn7rdfm7l7k3rcw4g4mvzrbgrw1jlyx726v47j3l39n54qsn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/hpc-lcov#readme")
    (synopsis "Convert HPC output into LCOV format")
    (description "Convert HPC output into LCOV format.")
    (license license:bsd-3)))

haskell-9.2-hpc-lcov

(define-public haskell-9.2-hreader-lens
  (package
    (name "haskell-9.2-hreader-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hreader)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-hset)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-action)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/dredozubov/hreader-lens")
    (synopsis "Optics for hreader package")
    (description "")
    (license license:expat)))

haskell-9.2-hreader-lens

(define-public haskell-9.2-hslua-packaging
  (package
    (name "haskell-9.2-hslua-packaging")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Utilities to build Lua modules.")
    (description "Utilities to package up Haskell functions and
values into a Lua module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.2-hslua-packaging

(define-public haskell-9.2-hspec-expectations-json
  (package
    (name "haskell-9.2-hspec-expectations-json")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-qq)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-hspec-expectations-json

(define-public haskell-9.2-hspec-golden-aeson
  (package
    (name "haskell-9.2-hspec-golden-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-9.2-hspec-golden-aeson

(define-public haskell-9.2-hspec-junit-formatter
  (package
    (name "haskell-9.2-hspec-junit-formatter")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-junit-formatter/hspec-junit-formatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gzgfisji7w4gsixlchlrg5ylkmdqq2mk5sc0jdwqxz865kjq01g"))))
    (properties `((upstream-name . "hspec-junit-formatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-iso8601-time)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/hspec-junit-formatter#readme")
    (synopsis "A JUnit XML runner/formatter for hspec")
    (description
     "Allows hspec tests to write JUnit XML output for parsing in various tools.")
    (license license:expat)))

haskell-9.2-hspec-junit-formatter

(define-public haskell-9.2-hsx-jmacro
  (package
    (name "haskell-9.2-hsx-jmacro")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-hsp)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-jmacro)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "hsp+jmacro support")
    (description
     "HSP allows for the use of literal XML in Haskell program text. JMacro allows for the use of javascript-syntax for generating javascript in Haskell. This library makes it easy to embed JMacro generated javascript in HSX templates.")
    (license license:bsd-3)))

haskell-9.2-hsx-jmacro

(define-public haskell-9.2-html-conduit
  (package
    (name "haskell-9.2-html-conduit")
    (version "1.3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-conduit/html-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bwrdam3y47kqllgg6w098ghqb8jb10dp4wxirsvx5ddpx9zpi6"))))
    (properties `((upstream-name . "html-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-9.2-html-conduit

(define-public haskell-9.2-http-client-overrides
  (package
    (name "haskell-9.2-http-client-overrides")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-overrides/http-client-overrides-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15asl6xksr7qmjbm64my3h1x3sx7558vdidx7zlkl8lf1k0w0kcl"))))
    (properties `((upstream-name . "http-client-overrides") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbiemcmichael/http-client-overrides")
    (synopsis "HTTP client overrides")
    (description
     "A library for applying overrides to 'ManagerSettings' when using the
<http://hackage.haskell.org/package/http-client http-client> library.")
    (license license:bsd-3)))

haskell-9.2-http-client-overrides

(define-public haskell-9.2-jose
  (package
    (name "haskell-9.2-jose")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kii03gr6n8ayp1q3hid5qslzwgxm6isjnw8klvg7j82kliikycj"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-concise)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-monad-time)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-jose")
    (synopsis
     "JSON Object Signing and Encryption (JOSE) and JSON Web Token (JWT) library")
    (description
     "
An implementation of the Javascript Object Signing and Encryption
(JOSE) and JSON Web Token (JWT; RFC 7519) formats.

The JSON Web Signature (JWS; RFC 7515) implementation is complete.

EdDSA signatures (RFC 8037) are supported (Ed25519 only).

JWK Thumbprint (RFC 7638) is supported.

JSON Web Encryption (JWE; RFC 7516) is not yet implemented.

The __ECDSA implementation is vulnerable to timing attacks__ and
should only be used for verification.")
    (license license:asl2.0)))

haskell-9.2-jose

(define-public haskell-9.2-jsonpath
  (package
    (name "haskell-9.2-jsonpath")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-aeson-casing)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-9.2-jsonpath

(define-public haskell-9.2-junit-xml
  (package
    (name "haskell-9.2-junit-xml")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/junit-xml/junit-xml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sm738irwvmdnn8cvf0rnvp8s5gmr0ih241l27sasqq18nra2v04"))))
    (properties `((upstream-name . "junit-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/junit-xml#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/junit-xml>.")
    (license license:bsd-3)))

haskell-9.2-junit-xml

(define-public haskell-9.2-koji
  (package
    (name "haskell-9.2-koji")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-haxr)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/koji-hs")
    (synopsis "Koji buildsystem XML-RPC API bindings")
    (description
     "This library provides Haskell bindings to the Koji XML RPC API.
Koji is a distributed rpm buildsystem used by Fedora, Centos,
Red Hat, and other projects. See <https://pagure.io/koji/>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-koji

(define-public haskell-9.2-lackey
  (package
    (name "haskell-9.2-lackey")
    (version "2.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lackey/lackey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0drcq03vsya11002wg7i3phbgyylcyx4zry3ixflffm8sz00smci"))))
    (properties `((upstream-name . "lackey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-foreign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tfausak/lackey#readme")
    (synopsis "Generate Ruby clients from Servant APIs.")
    (description "Lackey generates Ruby clients from Servant APIs.")
    (license license:expat)))

haskell-9.2-lackey

(define-public haskell-9.2-lsp-types
  (package
    (name "haskell-9.2-lsp-types")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-types/lsp-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00lqq5lw7pi8qrnjlibsvhldp747kdc9zkr6rg3bbkbz7kxw8p9q"))))
    (properties `((upstream-name . "lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-ospath")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-mod)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-some)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-tuple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-9.2-lsp-types

(define-public haskell-9.2-lxd-client-config
  (package
    (name "haskell-9.2-lxd-client-config")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lxd-client-config/lxd-client-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kxg42hrgq5w38v1zsq8v9x0ky83c02k8rx2qcyazh7bkg4m4f4h"))))
    (properties `((upstream-name . "lxd-client-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-lxd-client-config#readme")
    (synopsis "Read the configuration file of the standard LXD client.")
    (description
     "This package can read the configuration file of the standard LXD client.

It can for example extract information about the configured LXD remotes on
your system.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-lxd-client-config

(define-public haskell-9.2-markdown
  (package
    (name "haskell-9.2-markdown")
    (version "0.1.17.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown/markdown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aglxvgpp6f8gvlvkdx0d5vik552wjiv0xys8b1jlh7zdbwwghcq"))))
    (properties `((upstream-name . "markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-9.2-markdown

(define-public haskell-9.2-massiv-io
  (package
    (name "haskell-9.2-massiv-io")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-io/massiv-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "121i65nihxrl71mp38fvc8p445v1l35s4jsb5s8l0nh61d4gax2p"))))
    (properties `((upstream-name . "massiv-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-Color)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-massiv)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-netpbm)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/massiv-io")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-9.2-massiv-io

(define-public haskell-9.2-massiv-test
  (package
    (name "haskell-9.2-massiv-test")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-test/massiv-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hd9y2n038ja3wz317ah0k84dz30cnmzx0nms9hkr5inf62gbd3n"))))
    (properties `((upstream-name . "massiv-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-massiv)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-scheduler)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis
     "Library that contains generators, properties and tests for Massiv Array Library.")
    (description
     "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.")
    (license license:bsd-3)))

haskell-9.2-massiv-test

(define-public haskell-9.2-mcmc
  (package
    (name "haskell-9.2-mcmc")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mcmc/mcmc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15sdqfq9sfjwkbzwi3qsjg8d59nj44qx3sh3sd9zk3hmc11k8wp4"))))
    (properties `((upstream-name . "mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-ad)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-circular)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-covariance)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-dirichlet)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-log-domain)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/mcmc#readme")
    (synopsis "Sample from a posterior using Markov chain Monte Carlo")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/mcmc#readme>")
    (license license:gpl3+)))

haskell-9.2-mcmc

(define-public haskell-9.2-mmark
  (package
    (name "haskell-9.2-mmark")
    (version "0.0.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmark/mmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zahgky724s0x89c9jp4fa6m0kzh461sc2lcpwaw61hqgamaay4c"))))
    (properties `((upstream-name . "mmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0jpin5hrh2wi5yqzzccww3rb94ylb3i7y0wm16q8knq4680fq8zx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-html-entity-map)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-modern-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-metrics)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-9.2-mmark

(define-public haskell-9.2-mono-traversable-instances
  (package
    (name "haskell-9.2-mono-traversable-instances")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-instances/mono-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fnkz8dlfz0bl7mx2p5y96w91zdhdvnzx1a9a8zlfxz06mwarhgb"))))
    (properties `((upstream-name . "mono-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-dlist-instances)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description
     "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>")
    (license license:expat)))

haskell-9.2-mono-traversable-instances

(define-public haskell-9.2-mono-traversable-keys
  (package
    (name "haskell-9.2-mono-traversable-keys")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-keys/mono-traversable-keys-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v0bh73l6fa3bvyfakm2sbp9qi7bd8aw468kr8d51zsl8r0b6nil"))))
    (properties `((upstream-name . "mono-traversable-keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-keys)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/recursion-ninja/mono-traversable-keys#readme")
    (synopsis
     "Type-classes for interacting with monomorphic containers with a key")
    (description
     "This is the extension of two other popular packages,
<http://hackage.haskell.org/package/mono-traversable mono-traversable> and
<http://hackage.haskell.org/package/keys keys>,
designed to provided the functionality of the @@keys@@ package to the monomorphic
containers enhanced by the @@mono-traversable@@ package.")
    (license license:bsd-3)))

haskell-9.2-mono-traversable-keys

(define-public haskell-9.2-morpheus-graphql-app
  (package
    (name "haskell-9.2-morpheus-graphql-app")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-app/morpheus-graphql-app-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mg12a8s2zcxcbm1zm5a4gn6vz8d9d1qdhk930zddxqbll5gq7nq"))))
    (properties `((upstream-name . "morpheus-graphql-app") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL App")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql-app

(define-public haskell-9.2-morpheus-graphql-code-gen-utils
  (package
    (name "haskell-9.2-morpheus-graphql-code-gen-utils")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-code-gen-utils/morpheus-graphql-code-gen-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d5v3b63v9yf47a5hh2am6v09hwm4sfxls38iwvlxva3km0s1qgn"))))
    (properties `((upstream-name . "morpheus-graphql-code-gen-utils")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL CLI")
    (description "code generator for Morpheus GraphQL")
    (license license:bsd-3)))

haskell-9.2-morpheus-graphql-code-gen-utils

(define-public haskell-9.2-mustache
  (package
    (name "haskell-9.2-mustache")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mustache/mustache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hp4g8mjh6aibhj7114dkpsnibxcf223lcaqm6hsysb8c2d1ajlr"))))
    (properties `((upstream-name . "mustache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-9.2-mustache

(define-public haskell-9.2-net-mqtt
  (package
    (name "haskell-9.2-net-mqtt")
    (version "0.8.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/net-mqtt/net-mqtt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k6yghgj693hbyk2zsjh3ns1yx9ypjjfj3mrrandn6lvpif08h9x"))))
    (properties `((upstream-name . "net-mqtt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-checkers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-network-conduit-tls)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dustin/mqtt-hs#readme")
    (synopsis "An MQTT Protocol Implementation.")
    (description
     "Please see the README on GitHub at <https://github.com/dustin/mqtt-hs#readme>")
    (license license:bsd-3)))

haskell-9.2-net-mqtt

(define-public haskell-9.2-network-messagepack-rpc
  (package
    (name "haskell-9.2-network-messagepack-rpc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-data-msgpack)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc")
    (synopsis "MessagePack RPC")
    (description
     "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.")
    (license license:bsd-3)))

haskell-9.2-network-messagepack-rpc

(define-public haskell-9.2-nqe
  (package
    (name "haskell-9.2-nqe")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nqe/nqe-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "17ymmb0sy95yf5abdgq60j9bi9pdr746ap7x0byakd3gi7kciijg"))))
    (properties `((upstream-name . "nqe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-stm-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unique)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/nqe#readme>")
    (license license:expat)))

haskell-9.2-nqe

(define-public haskell-9.2-nvim-hs
  (package
    (name "haskell-9.2-nvim-hs")
    (version "2.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1szvh65sbxk81321ml0b1iib5ziiks2l8liwkgs4z47pmb14cps9"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-foreign-store)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-messagepack)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs")
    (synopsis "Haskell plugin backend for neovim")
    (description
     "This package provides a plugin provider for neovim. It allows you to write
plugins for one of the great editors of our time in the best programming
language of our time! ;-)

You should find all the documentation you need inside the \"Neovim\" module.
Most other modules are considered internal, so don't be annoyed if using
things from there may break your code!

The following modules may also be of interest and they should not change
their API: \"Neovim.Quickfix\"

If you want to write unit tests that interact with neovim, \"Neovim.Test\"
provides some useful functions for that.

If you are keen to debug /nvim-hs/ or a module you are writing, take a look
at the \"Neovim.Debug\" module.

If you spot any errors or if you have great ideas, feel free to open an issue
on github.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-nvim-hs

(define-public haskell-9.2-openapi3
  (package
    (name "haskell-9.2-openapi3")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-generics-sop)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-optics-th)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/openapi3")
    (synopsis "OpenAPI 3.0 data model")
    (description
     "This library is intended to be used for decoding and encoding OpenAPI 3.0 API
specifications as well as manipulating them.

The original OpenAPI 3.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.2-openapi3

(define-public haskell-9.2-ormolu
  (package
    (name "haskell-9.2-ormolu")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ormolu/ormolu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rnf4x352k856avfllk4rc9v0wwkydr030cmp7j29p0y9cwf5pkg"))))
    (properties `((upstream-name . "ormolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-ffixity-th")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-MemoTrie)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/ormolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.2-ormolu

(define-public haskell-9.2-pipes-fluid
  (package
    (name "haskell-9.2-pipes-fluid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/pipes-fluid#readme")
    (synopsis
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (description
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (license license:bsd-3)))

haskell-9.2-pipes-fluid

(define-public haskell-9.2-polysemy-fs
  (package
    (name "haskell-9.2-polysemy-fs")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-fs/polysemy-fs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16lf6a5ypf5injdl8aljrnrdrfz21b0rhcmypx5ngvw1k2mgh6zl"))))
    (properties `((upstream-name . "polysemy-fs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cbplvbx35q3h4ln9ldyk8yvx1c4sgbybbm02frf8nlp1khxji0w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-unliftio-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-fs")
    (synopsis "Low level filesystem operations for polysemy.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-polysemy-fs

(define-public haskell-9.2-postgresql-typed
  (package
    (name "haskell-9.2-postgresql-typed")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0khc6bc1gvlhvrmpgj4ilazimwpjvd2p83lfbbpip9dpj2b5h2ri"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc" "-ftls")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-HDBC)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dylex/postgresql-typed")
    (synopsis
     "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend")
    (description
     "Automatically type-check SQL statements at compile time.
Uses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.
Allows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.
Supports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.

Also includes an optional HDBC backend that, since it uses the raw PostgreSQL protocol, may be more efficient than the normal libpq backend in some cases (though provides no more type safety than HDBC-postgresql when used without templates).

Originally based on Chris Forno's templatepg library.")
    (license license:bsd-3)))

haskell-9.2-postgresql-typed

(define-public haskell-9.2-prim-uniq
  (package
    (name "haskell-9.2-prim-uniq")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prim-uniq/prim-uniq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l7jlv3pfasn89n2wpgff972npy423vqsidkkn5crxfyqjyzxbdv"))))
    (properties `((upstream-name . "prim-uniq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-dependent-sum)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/prim-uniq")
    (synopsis "Opaque unique identifiers in primitive state monads")
    (description "Opaque unique identifiers in primitive state monads
and a GADT-like type using them as witnesses of type
equality.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-prim-uniq

(define-public haskell-9.2-prometheus-client
  (package
    (name "haskell-9.2-prometheus-client")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-client/prometheus-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f9csz40asdkmmh6kp8sc8gkbxvkrvv8v2byxn4jp67lg7s3g9bx"))))
    (properties `((upstream-name . "prometheus-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-data-sketches)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "Haskell client library for http://prometheus.io.")
    (description "Haskell client library for http://prometheus.io.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-prometheus-client

(define-public haskell-9.2-qchas
  (package
    (name "haskell-9.2-qchas")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-9.2-qchas

(define-public haskell-9.2-rainbox
  (package
    (name "haskell-9.2-rainbox")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-rainbow)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-rainbox

(define-public haskell-9.2-ratel-wai
  (package
    (name "haskell-9.2-ratel-wai")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hh99f7dwl5gihgqjn627s6sn4p68h1lifl2m8qqlhhdnnbwy4lr"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-ratel)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel-wai")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-9.2-ratel-wai

(define-public haskell-9.2-reanimate-svg
  (package
    (name "haskell-9.2-reanimate-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/reanimate/reanimate-svg#readme")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-9.2-reanimate-svg

(define-public haskell-9.2-rebase
  (package
    (name "haskell-9.2-rebase")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-groups)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-selective)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-vector-instances)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
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

haskell-9.2-rebase

(define-public haskell-9.2-reddit-scrape
  (package
    (name "haskell-9.2-reddit-scrape")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reddit-scrape/reddit-scrape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i95qlp84v8q2a7czfl66vqmzypp0pg5qlk25nyg4wsja22pryaj"))))
    (properties `((upstream-name . "reddit-scrape") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-scalpel)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/reddit-scrape")
    (synopsis "Library for getting links from a sub-reddit")
    (description "")
    (license license:bsd-2)))

haskell-9.2-reddit-scrape

(define-public haskell-9.2-reform-hsp
  (package
    (name "haskell-9.2-reform-hsp")
    (version "0.2.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-hsp/reform-hsp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vjbj41yl158h59wcx190jb4s627bhrhcbp21ykn93n4j454kfns"))))
    (properties `((upstream-name . "reform-hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-hsp)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hsx2hs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-reform)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using HSP with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with HSP.")
    (license license:bsd-3)))

haskell-9.2-reform-hsp

(define-public haskell-9.2-rp-tree
  (package
    (name "haskell-9.2-rp-tree")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rp-tree/rp-tree-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01iy2awnwqgfqyigpggj6gfig930lx655bih1a2hd5ga2fbrymmp"))))
    (properties `((upstream-name . "rp-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-boxes)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-heaps)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-serialise)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-splitmix-distributions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/rp-tree")
    (synopsis "Random projection trees")
    (description
     "Random projection trees for approximate nearest neighbor search in high-dimensional vector spaces

To use the library, import \"Data.RPTree\", which also contains all documentation.")
    (license license:bsd-3)))

haskell-9.2-rp-tree

(define-public haskell-9.2-safecopy
  (package
    (name "haskell-9.2-safecopy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-generic-data)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-action)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/safecopy")
    (synopsis "Binary serialization with version control.")
    (description
     "An extension to Data.Serialize with built-in version control.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-safecopy

(define-public haskell-9.2-sbp
  (package
    (name "haskell-9.2-sbp")
    (version "4.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbp/sbp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "14p0a23kmn9z9l8rm9q94zgyx5p0wnjrgf51shk2magjg055llkb"))))
    (properties `((upstream-name . "sbp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-basic-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-binary-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/swift-nav/libsbp")
    (synopsis "SwiftNav's SBP Library")
    (description
     "Haskell bindings for Swift Navigation Binary Protocol (SBP), a fast,
simple, and minimal binary protocol for communicating with Swift
devices. It is the native binary protocol used by the Piksi GPS
receiver to transmit solutions, observations, status and debugging
messages, as well as receive messages from the host operating
system, such as differential corrections and the almanac.")
    (license license:expat)))

haskell-9.2-sbp

(define-public haskell-9.2-sdl2
  (package
    (name "haskell-9.2-sdl2")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)))
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

haskell-9.2-sdl2

(define-public haskell-9.2-servant-checked-exceptions-core
  (package
    (name "haskell-9.2-servant-checked-exceptions-core")
    (version "2.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions-core/servant-checked-exceptions-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "023fb1a15wjx6bwfix072sprckzkn2kzdkwbh6dr2yh4rg5snvrn"))))
    (properties `((upstream-name . "servant-checked-exceptions-core")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-docs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-world-peace)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-servant-checked-exceptions-core

(define-public haskell-9.2-servant-elm
  (package
    (name "haskell-9.2-servant-elm")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-elm/servant-elm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hn7qkz4aw5snc4lbprbshzr3dagfry1bms0fx9bfif61312swqy"))))
    (properties `((upstream-name . "servant-elm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-integration")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elm-bridge)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-foreign)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mattjbray/servant-elm#readme")
    (synopsis
     "Automatically derive Elm functions to query servant webservices.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-servant-elm

(define-public haskell-9.2-servant-ruby
  (package
    (name "haskell-9.2-servant-ruby")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-ruby/servant-ruby-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x1746k97i3y836mr5h29l70ldzrg8akhfmg2qicwbwz6qs7hy33"))))
    (properties `((upstream-name . "servant-ruby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-casing)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-foreign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/joneshf/servant-ruby#readme")
    (synopsis "Generate a Ruby client from a Servant API with Net::HTTP.")
    (description "Generate a Ruby client from a Servant API with Net::HTTP.")
    (license license:bsd-3)))

haskell-9.2-servant-ruby

(define-public haskell-9.2-servant-xml
  (package
    (name "haskell-9.2-servant-xml")
    (version "1.0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-xml/servant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jzzw4bwjcnax53xx8yjfldd21zgbvynpagf1ikxpzq3sgqhdl2x"))))
    (properties `((upstream-name . "servant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-xmlbf)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xmlbf-xeno)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/servant-xml")
    (synopsis "Servant support for the XML Content-Type")
    (description
     "Servant support for the Content-Type of /application\\/xml/. Anything with 'ToXml' and 'FromXml' instances can be automatically marshalled.")
    (license license:bsd-3)))

haskell-9.2-servant-xml

(define-public haskell-9.2-shelly
  (package
    (name "haskell-9.2-shelly")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec-contrib)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
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

haskell-9.2-shelly

(define-public haskell-9.2-skylighting-core
  (package
    (name "haskell-9.2-skylighting-core")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iwzfgynj3l8rnvvrl4kg0i1n31rz15da8cf1943gw1vcfh6w585"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library.
It derives its tokenizers from XML syntax
definitions used by KDE's KSyntaxHighlighting
framework, so any syntax supported by that
framework can be added. An optional command-line
program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides the core highlighting
functionality under a permissive license. It also
bundles XML parser definitions licensed under the
GPL.")
    (license license:bsd-3)))

haskell-9.2-skylighting-core

(define-public haskell-9.2-stache
  (package
    (name "haskell-9.2-stache")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1naqj54qm59f04x310lvj4fsrp3xar1v643i79gp7h48kyn1c2vy"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0bzamvkkxn2vrag7rb72n3i7sqvjr3rpyp172krp4ak1ydqlsyi7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:expat)))

haskell-9.2-stache

(define-public haskell-9.2-strict-base-types
  (package
    (name "haskell-9.2-strict-base-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-strict-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Strict variants of the types provided in base.")
    (description
     "Since version 0.7 the functionality in this package
have been merged into `strict`, `aeson` and `quickcheck-instances`
packages, and lens functionality moved into `strict-lens` package.")
    (license license:bsd-3)))

haskell-9.2-strict-base-types

(define-public haskell-9.2-svg-tree
  (package
    (name "haskell-9.2-svg-tree")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
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

haskell-9.2-svg-tree

(define-public haskell-9.2-swagger2
  (package
    (name "haskell-9.2-swagger2")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-generics-sop)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-optics-th)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.2-swagger2

(define-public haskell-9.2-sydtest-discover
  (package
    (name "haskell-9.2-sydtest-discover")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-discover/sydtest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1naraj9cp0036ppd42l4zjz6rfzn25n71nkvxjd0x979pakv3h7v"))))
    (properties `((upstream-name . "sydtest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "Automatic test suite discovery for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-discover

(define-public haskell-9.2-tagstream-conduit
  (package
    (name "haskell-9.2-tagstream-conduit")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagstream-conduit/tagstream-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d0yfq5fixggppdf05s0sw46lmfvb7q17005x720ah66zkcl05nc"))))
    (properties `((upstream-name . "tagstream-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yihuang/tagstream-conduit")
    (synopsis "streamlined html tag parser")
    (description
     "Tag-stream is a library for parsing HTML//XML to a token stream.
It can parse unstructured and malformed HTML from the web.
It also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.
You can start from the `tests/Tests.hs` module to see what it can do.")
    (license license:bsd-3)))

haskell-9.2-tagstream-conduit

(define-public haskell-9.2-tlynx
  (package
    (name "haskell-9.2-tlynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tlynx/tlynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hf4zfm6gapqd2yi0pylrmrjsgx98c21diixiv7bc7z6xs7g4pbl"))))
    (properties `((upstream-name . "tlynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-elynx-tree)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-tlynx

(define-public haskell-9.2-tree-diff
  (package
    (name "haskell-9.2-tree-diff")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-trifecta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-tree-diff

(define-public haskell-9.2-tztime
  (package
    (name "haskell-9.2-tztime")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-doctest-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-hunit-compat)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-test-utils)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-tz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/tztime")
    (synopsis "Safe timezone-aware handling of time.")
    (description
     "This package introduces:

* The `TZTime` data type, a valid and unambiguous point in time in some time zone.
* Functions for safely manipulating a `TZTime`.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-tztime

(define-public haskell-9.2-ua-parser
  (package
    (name "haskell-9.2-ua-parser")
    (version "0.7.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ua-parser/ua-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dkwhd2rl4fsjsvx68wclq4ipzxaxxlw1jailb379q0d77j8934s"))))
    (properties `((upstream-name . "ua-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-text)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-9.2-ua-parser

(define-public haskell-9.2-vinyl
  (package
    (name "haskell-9.2-vinyl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vinyl")
    (synopsis "Extensible Records")
    (description "Extensible records for Haskell with lenses.")
    (license license:expat)))

haskell-9.2-vinyl

(define-public haskell-9.2-within
  (package
    (name "haskell-9.2-within")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/within/within-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yzfzizx45ngvvbshgw9z8hxl8z7vcr1gann6wnxq4b9669h29ic"))))
    (properties `((upstream-name . "within") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-like)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/within")
    (synopsis "A value within another path.")
    (description
     "Simple newtype for representing a value within a well-typed directory. Useful for when you need to jump between directories and change filenames independently. Uses the path library.")
    (license license:expat)))

haskell-9.2-within

(define-public haskell-9.2-wreq
  (package
    (name "haskell-9.2-wreq")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-authenticate-oauth)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-wreq

(define-public haskell-9.2-xml-conduit-writer
  (package
    (name "haskell-9.2-xml-conduit-writer")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit-writer/xml-conduit-writer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n5fk6sj5grcfz51psbf8h4z40hd4dk8zpk870c6ipm2s9dc1488"))))
    (properties `((upstream-name . "xml-conduit-writer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/dpwiz/xml-conduit-writer")
    (synopsis "Warm and fuzzy creation of XML documents.")
    (description "“It can scarcely be denied that the supreme goal of
all theory is to make the irreducible basic elements
as simple and as few as possible without having to
surrender the adequate representation of a single
datum of experience.” ­— Albert Einstein

Check out more examples in test/Main.hs and
look at the results with --enable-tests.")
    (license license:expat)))

haskell-9.2-xml-conduit-writer

(define-public haskell-9.2-xml-hamlet
  (package
    (name "haskell-9.2-xml-hamlet")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-hamlet/xml-hamlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "109fck1626d74s00ssjffg837584wf7dxpswkil37wqqfy94mw2z"))))
    (properties `((upstream-name . "xml-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-9.2-xml-hamlet

(define-public haskell-9.2-xml-indexed-cursor
  (package
    (name "haskell-9.2-xml-indexed-cursor")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-indexed-cursor/xml-indexed-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x6slq1av9id5ph7ysg0g467knkcbvp0g0jr7x8w334ffgy25mj6"))))
    (properties `((upstream-name . "xml-indexed-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-xml-indexed-cursor

(define-public haskell-9.2-xml-lens
  (package
    (name "haskell-9.2-xml-lens")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-lens/xml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i6c4xqacinhxnyszzna7s9x79rrcs1c7jq6zimcwh4302l5d6cm"))))
    (properties `((upstream-name . "xml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0n4clndkzg6cjw0slkbrn64byzdnlsxrf6va3xgvsry9d1i18ihf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fumieval/xml-lens")
    (synopsis "Lenses, traversals, and prisms for xml-conduit")
    (description
     "This package provides DOM selectors based on lenses and prisms. See README.md for examples")
    (license license:bsd-3)))

haskell-9.2-xml-lens

(define-public haskell-9.2-xmonad-contrib
  (package
    (name "haskell-9.2-xmonad-contrib")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-contrib/xmonad-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lwj8xkyaw6h0rv3lz2jdqrwzz7yghfmnhpndygkb3wgyhvq6dxb"))))
    (properties `((upstream-name . "xmonad-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse_xft" "-f-pedantic")
       #:cabal-revision
       ("1" "0dc9nbn0kaw98rgpi1rq8np601zjhdr1y0ydg6yb82wwaqawql6z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-X11)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-X11-xft)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xmonad)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://xmonad.org/")
    (synopsis "Community-maintained extensions for xmonad")
    (description
     "Community-maintained tiling algorithms and extension modules for xmonad,
an X11 tiling window manager.

For an introduction to building, configuring and using xmonad
extensions, see \"XMonad.Doc\". In particular:

\"XMonad.Doc.Configuring\", a guide to configuring xmonad

\"XMonad.Doc.Extending\", using the contributed extensions library

\"XMonad.Doc.Developing\", introduction to xmonad internals and writing
your own extensions.
")
    (license license:bsd-3)))

haskell-9.2-xmonad-contrib

(define-public haskell-9.2-zip
  (package
    (name "haskell-9.2-zip")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1c5pr3hv11dpn4ybd4742qkpqmvb9l3l7xmzlsf65wm2p8071dvj"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-disable-bzip2" "-f-disable-zstd")
       #:cabal-revision
       ("3" "0q72y8qsz1y01rlmi3chdb0p06qng7ffzv0ylmiqqn36f9qjl405")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-digest)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-9.2-zip

