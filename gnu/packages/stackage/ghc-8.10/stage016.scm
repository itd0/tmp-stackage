;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage016)
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
(define-public haskell-8.10-BNFC-meta
  (package
    (name "haskell-8.10-BNFC-meta")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-alex-meta)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-happy-meta)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
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

haskell-8.10-BNFC-meta

(define-public haskell-8.10-aeson-commit
  (package
    (name "haskell-8.10-aeson-commit")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-commit/aeson-commit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w185p6s91pxd0kmgxxv62v81q7f77q4bgs8iv02xv34wp1jm9jv"))))
    (properties `((upstream-name . "aeson-commit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hspec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/xc-jp/aeson-commit#readme")
    (synopsis "Parse Aeson data with commitment")
    (description
     "Commitment mechanism for @@aeson@@ parsers.
Commitment means that if some initial parsing succeeds, subsequent failures are unrecoverable.")
    (license license:bsd-3)))

haskell-8.10-aeson-commit

(define-public haskell-8.10-aeson-schemas
  (package
    (name "haskell-8.10-aeson-schemas")
    (version "1.3.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-schemas/aeson-schemas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cp6q92z0zkz9kdkaialcx2v9plvmkcghrg54jv841iqxjwcbj3r"))))
    (properties `((upstream-name . "aeson-schemas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1yllgsypwpk627x29bjcv49y4m4g8q2xgkj34z6nyib6w1bbjmna")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-first-class-families)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-th-test-utils)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/aeson-schemas#readme")
    (synopsis "Easily consume JSON data on-demand with type-safety")
    (description
     "Parse JSON data easily and safely without defining new data types. Useful
for deeply nested JSON data, which is difficult to parse using the default
FromJSON instances.")
    (license license:bsd-3)))

haskell-8.10-aeson-schemas

(define-public haskell-8.10-aeson-typescript
  (package
    (name "haskell-8.10-aeson-typescript")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-typescript/aeson-typescript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xbj6m1lxpv4qclz5msrdplpy3mdxq5icjl3fq4bwbqy5rs6vczv"))))
    (properties `((upstream-name . "aeson-typescript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/codedownio/aeson-typescript#readme")
    (synopsis "Generate TypeScript definition files from your ADTs")
    (description
     "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>")
    (license license:bsd-3)))

haskell-8.10-aeson-typescript

(define-public haskell-8.10-agda2lagda
  (package
    (name "haskell-8.10-agda2lagda")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-goldplate)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "https://github.com/andreasabel/agda2lagda")
    (synopsis "Translate .agda files into .lagda.tex files.")
    (description "Simple command line tool to convert plain Agda
or Haskell files into literate files.  Line comments
are interpreted as text, the rest as code blocks.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-agda2lagda

(define-public haskell-8.10-apply-refact
  (package
    (name "haskell-8.10-apply-refact")
    (version "0.9.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apply-refact/apply-refact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sn5g71sx8xa4ggyk49m661iip6zrzl65vb87l16l31kf79bbm7w"))))
    (properties `((upstream-name . "apply-refact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hgdjm6ydfc29d922h1cpwrch61r5qchzrw21dz80kdry53qxl5q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-filemanip)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-refact)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (home-page "https://github.com/mpickering/apply-refact")
    (synopsis "Perform refactorings specified by the refact library.")
    (description
     "Perform refactorings specified by the refact library. It is primarily used with HLint's --refactor flag.")
    (license license:bsd-3)))

haskell-8.10-apply-refact

(define-public haskell-8.10-arbor-lru-cache
  (package
    (name "haskell-8.10-arbor-lru-cache")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arbor-lru-cache/arbor-lru-cache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ayr6d5p7x2b2ggck56skbbzsmf44vrsr5jf3bzhnqwcm1lljbv0"))))
    (properties `((upstream-name . "arbor-lru-cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)))
    (home-page "https://github.com/arbor/arbor-lru-cache#readme")
    (synopsis "LRU cache based on STM")
    (description
     "Please see the README on GitHub at <https://github.com/arbor/arbor-lru-cache#readme>")
    (license license:expat)))

haskell-8.10-arbor-lru-cache

(define-public haskell-8.10-aur
  (package
    (name "haskell-8.10-aur")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)))
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

haskell-8.10-aur

(define-public haskell-8.10-authenticate-oauth
  (package
    (name "haskell-8.10-authenticate-oauth")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hry1zbi7gbyfi94w9cyg6m7ii7xm68jnsph63zxdj2s4ns0ylp0"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "08i6mmk2jqlrd1aksjx02arly7dfpkwc0dwxpr7hs4rbxajbckyr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-RSA)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-SHA)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-8.10-authenticate-oauth

(define-public haskell-8.10-base64-bytestring-type
  (package
    (name "haskell-8.10-base64-bytestring-type")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-serialise)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-8.10-base64-bytestring-type

(define-public haskell-8.10-bcp47
  (package
    (name "haskell-8.10-bcp47")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bcp47/bcp47-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1drfv04v5137c726c9bpz8lh1c0blb4mfnca4dgzai91pjk026sd"))))
    (properties `((upstream-name . "bcp47") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-country)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-iso639)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "Language tags as specified by BCP 47")
    (description
     "/Language tags for use in cases where it is desirable to indicate the/
/language used in an information object./

/ - /<https://tools.ietf.org/html/bcp47>

This package exposes a language tag data type 'BCP47' and a 'Trie' data
structure for collecting and querying information that varies based on
language tag.

> import Data.BCP47 (en, enGB, sw)
> import Data.BCP47.Trie (Trie, fromList, lookup)
>
> color :: Trie Text
> color = fromList [(en, \"color\"), (sw, \"rangi\")]
>
> main = do
>   print $ match en color -- Just \"color\"
>   print $ match enGB color -- Nothing
>   print $ lookup enGB color -- Just \"color\"")
    (license license:expat)))

haskell-8.10-bcp47

(define-public haskell-8.10-bech32-th
  (package
    (name "haskell-8.10-bech32-th")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bech32-th/bech32-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ypn8y4b0iw7jb167biy0zjs4hp9k9nlf8y4nsczfv5n4p4cadnq"))))
    (properties `((upstream-name . "bech32-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "1b614lymjd3idcbzrkha7labfskv1m0kbljrnhwcz7sbymfcbdbk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-bech32)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis "Template Haskell extensions to the Bech32 library.")
    (description "Template Haskell extensions to the Bech32 library, including
quasi-quoters for compile-time checking of Bech32 string
literals.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-bech32-th

(define-public haskell-8.10-bench
  (package
    (name "haskell-8.10-bench")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-criterion)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-turtle)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Gabriella439/bench")
    (synopsis "Command-line benchmark tool")
    (description "Think of this as a more powerful alternative to the @@time@@
command.  Use this command-line tool to benchmark a command
using Haskell's @@criterion@@ library.")
    (license license:bsd-3)))

haskell-8.10-bench

(define-public haskell-8.10-bits-extra
  (package
    (name "haskell-8.10-bits-extra")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c54008kinzcx93kc8vcp7wq7la662m8nk82ax76i9b0gvbkk21f"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "01qlnzbc3kgbyacqg9c7ldab2s91h9s4kalld0wz9q2k1d4063lv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-8.10-bits-extra

(define-public haskell-8.10-bitwise-enum
  (package
    (name "haskell-8.10-bitwise-enum")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitwise-enum/bitwise-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmdr8csmxwab7s4nmqdfpqdssivh90fddk94i8wkwj1la867y1z"))))
    (properties `((upstream-name . "bitwise-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f94gscpmffhx1m88nq6h6y46b1xpzp1kwfxb362zq6k1rq7dbk9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/jnbooth/bitwise-enum")
    (synopsis "Bitwise operations on bounded enumerations")
    (description
     "Bitwise operations on bounded enumerations.

[\"Data.Enum.Set\"] Constant-time sets using bit flags.

[\"Data.Enum.Memo\"] Constant-time lookup memoization for functions on enumerated types.")
    (license license:bsd-3)))

haskell-8.10-bitwise-enum

(define-public haskell-8.10-blanks
  (package
    (name "haskell-8.10-blanks")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blanks/blanks-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a38cwk65zkzhq8yc95v4kamyp9k1y1vnfii84yqzvrrlbfzxbqf"))))
    (properties `((upstream-name . "blanks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/ejconlon/blanks#readme")
    (synopsis
     "Fill-in-the-blanks - A library factoring out substitution from ASTs")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/blanks#readme>")
    (license license:bsd-3)))

haskell-8.10-blanks

(define-public haskell-8.10-boltzmann-samplers
  (package
    (name "haskell-8.10-boltzmann-samplers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015) haskell-8.10-ad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-boltzmann-samplers

(define-public haskell-8.10-bugsnag-hs
  (package
    (name "haskell-8.10-bugsnag-hs")
    (version "0.2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-hs/bugsnag-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qnbkp2c5fhv6b9mq3xr849if418qihy6xczzlsf7q4y0vx36kg9"))))
    (properties `((upstream-name . "bugsnag-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/bugsnag-hs#readme")
    (synopsis "A Bugsnag client for Haskell.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/bugsnag-hs>.")
    (license license:bsd-3)))

haskell-8.10-bugsnag-hs

(define-public haskell-8.10-chimera
  (package
    (name "haskell-8.10-chimera")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chimera/chimera-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p8in1a37hrb0qwvabwi4a9ahzydkd8j3v402cn2i3xmkzcr0kh9"))))
    (properties `((upstream-name . "chimera") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-frepresentable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/chimera#readme")
    (synopsis
     "Lazy infinite streams with O(1) indexing and applications for memoization")
    (description
     "There are plenty of memoizing libraries on Hackage, but they
usually fall into two categories:

* Store cache as a flat array, enabling us
to obtain cached values in O(1) time, which is nice.
The drawback is that one must specify the size
of the array beforehand,
limiting an interval of inputs,
and actually allocate it at once.
* Store cache as a lazy binary tree.
Thanks to laziness, one can freely use the full range of inputs.
The drawback is that obtaining values from a tree
takes logarithmic time and is unfriendly to CPU cache,
which kinda defeats the purpose.

This package intends to tackle both issues,
providing a data type 'Chimera' for
lazy infinite compact streams with cache-friendly O(1) indexing.

Additional features include:

* memoization of recursive functions and recurrent sequences,
* memoization of functions of several, possibly signed arguments,
* efficient memoization of boolean predicates.")
    (license license:bsd-3)))

haskell-8.10-chimera

(define-public haskell-8.10-conduit
  (package
    (name "haskell-8.10-conduit")
    (version "1.3.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/conduit/conduit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15r1rw5sp09zxjlfvjwpjva1pnn4my4gc28kxpd51kf74wpq7f9c"))))
    (properties `((upstream-name . "conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Streaming data processing library.")
    (description
     "`conduit` is a solution to the streaming data problem, allowing for production,
transformation, and consumption of streams of data in constant memory. It is an
alternative to lazy I\\/O which guarantees deterministic resource handling.

For more information about conduit in general, and how this package in
particular fits into the ecosystem, see [the conduit
homepage](https://github.com/snoyberg/conduit#readme).

Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.")
    (license license:expat)))

haskell-8.10-conduit

(define-public haskell-8.10-conferer-aeson
  (package
    (name "haskell-8.10-conferer-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-conferer)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's source for reading json files")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-conferer-aeson

(define-public haskell-8.10-core-data
  (package
    (name "haskell-8.10-core-data")
    (version "0.2.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-data/core-data-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i4v84gfrjfimc9nh12mf0fabqysm575c8kiq8awk2f1xmbz2f7q"))))
    (properties `((upstream-name . "core-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-core-text)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis
     "Convenience wrappers around common data structures and encodings")
    (description
     "Wrappers around common data structures and encodings.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:expat)))

haskell-8.10-core-data

(define-public haskell-8.10-cuckoo-filter
  (package
    (name "haskell-8.10-cuckoo-filter")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cuckoo-filter/cuckoo-filter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yya8r3igwms910xp3cc4y1y34f5yw3yqqy1wy49d4xsi6smyjdc"))))
    (properties `((upstream-name . "cuckoo-filter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-criterion)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisCoffey/cuckoo-filter#readme")
    (synopsis "Pure and impure Cuckoo Filter")
    (description
     "Please see the README on Github at <https://github.com/ChrisCoffey/cuckoo-filter#readme>")
    (license license:expat)))

haskell-8.10-cuckoo-filter

(define-public haskell-8.10-dependent-map
  (package
    (name "haskell-8.10-dependent-map")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-constraints-extras)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)))
    (home-page "https://github.com/obsidiansystems/dependent-map")
    (synopsis "Dependent finite maps (partial dependent products)")
    (description "Provides a type called @@DMap@@ which generalizes
@@Data.Map.Map@@, allowing keys to specify the type
of value that can be associated with them.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-dependent-map

(define-public haskell-8.10-dependent-sum-template
  (package
    (name "haskell-8.10-dependent-sum-template")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-constraints-extras)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-extras)))
    (home-page "https://github.com/obsidiansystems/dependent-sum")
    (synopsis
     "Template Haskell code to generate instances of classes in dependent-sum package")
    (description
     "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-dependent-sum-template

(define-public haskell-8.10-distribution-opensuse
  (package
    (name "haskell-8.10-distribution-opensuse")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-opensuse/distribution-opensuse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yrir5x70nsw5rajcphmr7bzi7k2m05iw97bl7b3v3a5q1i69as5"))))
    (properties `((upstream-name . "distribution-opensuse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hsemail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parsec-class)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-turtle)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/peti/distribution-opensuse/")
    (synopsis
     "Types, functions, and tools to manipulate the openSUSE distribution")
    (description
     "This library is a loose collection of types, functions, and tools that
users and developers of the
<https://opensuse.org/ openSUSE Linux distribution> might find useful.")
    (license license:bsd-3)))

haskell-8.10-distribution-opensuse

(define-public haskell-8.10-dns
  (package
    (name "haskell-8.10-dns")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dns/dns-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1jv89bdhvwb51d9h9157k2r1cg7x0gzari91lddwvghrkx8v9k90"))))
    (properties `((upstream-name . "dns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-8.10-dns

(define-public haskell-8.10-egison-pattern-src
  (package
    (name "haskell-8.10-egison-pattern-src")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/egison-pattern-src/egison-pattern-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14g13m9c4353j8hir5inqhfzwapkxdkbvkzfbrrgca6hyj7mn1vf"))))
    (properties `((upstream-name . "egison-pattern-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egison/egison-pattern-src#readme")
    (synopsis
     "Manipulating Egison patterns: abstract syntax, parser, and pretty-printer")
    (description
     "@@egison-pattern-src@@ provides a standalone syntax definition for patterns in [the Egison programming language](https://www.egison.org/).
This package enables you to embed Egison's patterns in your parser (pretty-printer) by supplying expression and name parsers (printers) externally.")
    (license license:bsd-3)))

haskell-8.10-egison-pattern-src

(define-public haskell-8.10-ekg
  (package
    (name "haskell-8.10-ekg")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-ekg-core)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-ekg-json)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-snap-server)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tibbe/ekg")
    (synopsis "Remote monitoring of processes")
    (description
     "This library lets you remotely monitor a running process over HTTP.
It provides a simple way to integrate a monitoring server into any
application.")
    (license license:bsd-3)))

haskell-8.10-ekg

(define-public haskell-8.10-envelope
  (package
    (name "haskell-8.10-envelope")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-envelope

(define-public haskell-8.10-eventful-core
  (package
    (name "haskell-8.10-eventful-core")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-sum-type-boilerplate)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Core module for eventful")
    (description "Core module for eventful")
    (license license:expat)))

haskell-8.10-eventful-core

(define-public haskell-8.10-fast-logger
  (package
    (name "haskell-8.10-fast-logger")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-logger/fast-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mbnah6n8lig494523czcd95dfn01f438qai9pf20wpa2gdbz4x6"))))
    (properties `((upstream-name . "fast-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nq3x3lkvggldbf3a28gl1nb2gf5c3ya8d1zja16ag3n7iqnahcc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-easy-file)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unix-time)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system for Haskell")
    (license license:bsd-3)))

haskell-8.10-fast-logger

(define-public haskell-8.10-flat
  (package
    (name "haskell-8.10-flat")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flat/flat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02i4nzzkmm11sp312k2d3d3g0gm2gzhh3ibczxxscl986svam7p3"))))
    (properties `((upstream-name . "flat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1f9vlfnkr20nh5nayj18wvwh061w0byrd88j01k9gnrmb7qykpf6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-text)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://quid2.org")
    (synopsis "Principled and efficient bit-oriented binary serialization.")
    (description
     "Reference implementation of `flat`, a principled and efficient binary serialization format.")
    (license license:bsd-3)))

haskell-8.10-flat

(define-public haskell-8.10-fourmolu
  (package
    (name "haskell-8.10-fourmolu")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fourmolu/fourmolu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v89dvcr8l0swj23kkakc39q6lyxjz90rqgwy7m6a5p6iv3h2wms"))))
    (properties `((upstream-name . "fourmolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "16ky7wzmnwhzkk18r63ynq78vlrg065z6mp3hqgs92khpjr33g1l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-HsYAML)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/parsonsmatt/fourmolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-8.10-fourmolu

(define-public haskell-8.10-genvalidity-criterion
  (package
    (name "haskell-8.10-genvalidity-criterion")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-criterion/genvalidity-criterion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r28kqqwaaavchdncdwa4q52z3li5515rfa9wz5lcnyrscim62xg"))))
    (properties `((upstream-name . "genvalidity-criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-criterion)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Criterion benchmarks for generators")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-criterion

(define-public haskell-8.10-genvalidity-hspec-aeson
  (package
    (name "haskell-8.10-genvalidity-hspec-aeson")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vqbvkjhq35jm3sr7g5jmwnalzcf8yy76fvd33x6gwayv78rp0ab"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-hspec-aeson

(define-public haskell-8.10-genvalidity-path
  (package
    (name "haskell-8.10-genvalidity-path")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sv059xwz0qrw5718qszh3h7n923xxq3klvzmfrr7k4k5q48513l"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-validity-path)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-path

(define-public haskell-8.10-ghc-typelits-presburger
  (package
    (name "haskell-8.10-ghc-typelits-presburger")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-presburger/ghc-typelits-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11rzfvs2kvknz8892bii2ljh6hbaa1zy0hnwi6pi1xghvwp1fckq"))))
    (properties `((upstream-name . "ghc-typelits-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
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

haskell-8.10-ghc-typelits-presburger

(define-public haskell-8.10-greskell
  (package
    (name "haskell-8.10-greskell")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell/greskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zqxln8gcjb3i88b9x156rv3v4d0zlrkca11w1bmbjly8zpgrl4x"))))
    (properties `((upstream-name . "greskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hint-test" "-f-server-test" "-f-server-behavior-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-greskell-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell binding for Gremlin graph query language")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is the main entry point of greskell family.
It re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,
and adds some useful functions to it.")
    (license license:bsd-3)))

haskell-8.10-greskell

(define-public haskell-8.10-greskell-websocket
  (package
    (name "haskell-8.10-greskell-websocket")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-websocket/greskell-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wjfvx25k603ymsalvgzrpnyw20mliky5mclrx6caxqyh0plqdak"))))
    (properties `((upstream-name . "greskell-websocket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-server-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-greskell-core)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell client for Gremlin Server using WebSocket serializer")
    (description
     "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),
and best used with [greskell](http://hackage.haskell.org/package/greskell) package.")
    (license license:bsd-3)))

haskell-8.10-greskell-websocket

(define-public haskell-8.10-haskell-awk
  (package
    (name "haskell-8.10-haskell-awk")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-awk/haskell-awk-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r4hsvzbqagk06fc81cr1awfz0zqgs4hmbwl99mip47z578wrw9l"))))
    (properties `((upstream-name . "haskell-awk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-easy-file)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-filelock)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-list-t)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stringsearch)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (home-page "https://github.com/gelisam/hawk#readme")
    (synopsis
     "Transform text from the command-line using Haskell expressions.")
    (description
     "Hawk is a command line utility to process streams of text using Haskell code. It is intended to be used in a UNIX pipeline. It offers a configuration system to personalize imported modules and a way to represent values on the console.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-haskell-awk

(define-public haskell-8.10-hprotoc
  (package
    (name "haskell-8.10-hprotoc")
    (version "2.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hprotoc/hprotoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r7zr4sbg6355zavbzjixvfv10aglz1zs9ajnznpjhnj6lfisf32"))))
    (properties `((upstream-name . "hprotoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0hxhvjk3mswx712viv7krcgiynxq4bjs71vbk2pgm2d50i5qr8mr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-protocol-buffers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-protocol-buffers-descriptor)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis "Parse Google Protocol Buffer specifications")
    (description
     "Parse language defined at <http://code.google.com/apis/protocolbuffers/docs/proto.html> and general haskell code to implement messages.")
    (license license:bsd-3)))

haskell-8.10-hprotoc

(define-public haskell-8.10-hslua-module-doclayout
  (package
    (name "haskell-8.10-hslua-module-doclayout")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-doclayout/hslua-module-doclayout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fwzx85lv2547gs42lp7mx9w7b0vl4hpc0ql7ip5yqp17q58a08y"))))
    (properties `((upstream-name . "hslua-module-doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-doclayout)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-doclayout")
    (synopsis "Lua module wrapping Text.DocLayout.")
    (description "Lua module wrapping @@Text.DocLayout@@.")
    (license license:expat)))

haskell-8.10-hslua-module-doclayout

(define-public haskell-8.10-hslua-module-path
  (package
    (name "haskell-8.10-hslua-module-path")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-path/hslua-module-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zxfljcn74rky26ijqmba6grpj0h9plgr47wxdaf7gcz1y8dhn68"))))
    (properties `((upstream-name . "hslua-module-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-path")
    (synopsis "Lua module to work with file paths.")
    (description "Lua module to work with file paths in a platform
independent way.")
    (license license:expat)))

haskell-8.10-hslua-module-path

(define-public haskell-8.10-hslua-module-system
  (package
    (name "haskell-8.10-hslua-module-system")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-system/hslua-module-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hk2splyasbplnggknjhlb423axc5b32xq8aq8zal4vvwlqhzvf1"))))
    (properties `((upstream-name . "hslua-module-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-tasty-lua)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-system")
    (synopsis "Lua module wrapper around Haskell's System module.")
    (description "Provides access to system information and functionality
to Lua scripts via Haskell's `System` module.

Intended usage for this package is to preload it by adding
the loader function to `package.preload`. Note that the
Lua `package` library must have already been loaded before
the loader can be added.")
    (license license:expat)))

haskell-8.10-hslua-module-system

(define-public haskell-8.10-hslua-module-text
  (package
    (name "haskell-8.10-hslua-module-text")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-text/hslua-module-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vmd15n905i2pcsx748hz3h9kv5nnv74y663rj57q8mp0b40cbfl"))))
    (properties `((upstream-name . "hslua-module-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04y4rjfgzsz3q3m2d7ph97ligxlld74v6vhhmncj0riyxdfvy6p9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-text")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.")
    (license license:expat)))

haskell-8.10-hslua-module-text

(define-public haskell-8.10-hspec-expectations-json
  (package
    (name "haskell-8.10-hspec-expectations-json")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-json/hspec-expectations-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m244ypfr4cg2jll3ackn9khm8zwdp1yp7hf4b24bfzws0qmb1b7"))))
    (properties `((upstream-name . "hspec-expectations-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-hspec-expectations-json

(define-public haskell-8.10-http-client-openssl
  (package
    (name "haskell-8.10-http-client-openssl")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-openssl/http-client-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114aci8nvbzvhscla6172y7s47yp689rslhg8h7y3hmkh2zq7r65"))))
    (properties `((upstream-name . "http-client-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-proxy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.10-http-client-openssl

(define-public haskell-8.10-http-link-header
  (package
    (name "haskell-8.10-http-link-header")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "16xbv4cz8b9gh42za6bhz73qcqrd5ix330cs4prj2jn124hb9xwx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis "HTTP Link header parser/writer")
    (description
     "A parser and writer for the HTTP Link header per RFC 5988 (see README.md for more info)")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-http-link-header

(define-public haskell-8.10-hw-bits
  (package
    (name "haskell-8.10-hw-bits")
    (version "0.7.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18l9r0yhddkzgbc2vvk0qr9brb5ih25zjfga3bddb5j8gpaaq65q"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")
       #:cabal-revision
       ("2" "1almm4nl56gf99wys1kzalqcz0dkaih0pgxsyqv4q1j1w3ggfmfq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-bitvec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hw-int)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-bits

(define-public haskell-8.10-hw-fingertree
  (package
    (name "haskell-8.10-hw-fingertree")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b1aff5aa9ifapyf2qvqggxfm36x5w7l7c37bfy9qdll264pdh0i"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hg9hnga0d15a5md67q7xl53kgp34hwvl4aw9s8xkjm4fs7a54z9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)))
    (home-page "https://github.com/haskell-works/hw-fingertree#readme")
    (synopsis "Generic finger-tree structure, with example instances")
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

haskell-8.10-hw-fingertree

(define-public haskell-8.10-hw-fingertree-strict
  (package
    (name "haskell-8.10-hw-fingertree-strict")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree-strict/hw-fingertree-strict-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zhh694m8hbin7059ys8c6sqjvyfsazcsp0jxqg59w5ypqjznzca"))))
    (properties `((upstream-name . "hw-fingertree-strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vr8xqvwihg3j83bqfhcqlnlpdq7k2v6kkx1xly7fdjw2hcwgkhl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
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

haskell-8.10-hw-fingertree-strict

(define-public haskell-8.10-hw-parser
  (package
    (name "haskell-8.10-hw-parser")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-parser/hw-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zsbw725mw3fn4814qricqanbvx1kgbnqvgwijqgfv8jz7yf5gxa"))))
    (properties `((upstream-name . "hw-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1kiak3rgwd62xs2a6lwg638jk45i172i6cja3xjxx8ph15aaq1p7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Simple parser support. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-parser

(define-public haskell-8.10-incremental-parser
  (package
    (name "haskell-8.10-incremental-parser")
    (version "0.5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental-parser/incremental-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11qzq2knpv0h8m1qfd6byqq5kbzxiz91vcgaicm1mlj0m554wlrs"))))
    (properties `((upstream-name . "incremental-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-checkers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-input-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rank2classes)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
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

haskell-8.10-incremental-parser

(define-public haskell-8.10-inline-c-cpp
  (package
    (name "haskell-8.10-inline-c-cpp")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c-cpp/inline-c-cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bqrhyic3cw1pqg7knsmkqx5swpr4kvf9bmz0mhmqbl6brmv5il0"))))
    (properties `((upstream-name . "inline-c-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-std-vector-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-inline-c)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c-cpp")
    (synopsis "Lets you embed C++ code into Haskell.")
    (description
     "Utilities to inline C++ code into Haskell using inline-c.  See
tests for example on how to build.")
    (license license:expat)))

haskell-8.10-inline-c-cpp

(define-public haskell-8.10-interpolator
  (package
    (name "haskell-8.10-interpolator")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolator/interpolator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lrng3y109brnm6jlqnbhrdi38qgwlb0lymxjdv2yv71x7rwdgvf"))))
    (properties `((upstream-name . "interpolator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-product-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)))
    (home-page "https://github.com/tvision-insights/interpolator")
    (synopsis
     "Runtime interpolation of environment variables in records using profunctors")
    (description
     "Runtime interpolation of environment variables in records using profunctors. See
the [README](https://github.com/tvision-insights/interpolator/blob/master/README.md).")
    (license license:expat)))

haskell-8.10-interpolator

(define-public haskell-8.10-kan-extensions
  (package
    (name "haskell-8.10-kan-extensions")
    (version "5.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kan-extensions/kan-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rkjxwc2k2425d2shdra6wzd4f4dpj76hxmq8mish4f0lz9gxxml"))))
    (properties `((upstream-name . "kan-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-invariant)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://github.com/ekmett/kan-extensions/")
    (synopsis
     "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads")
    (description
     "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.")
    (license license:bsd-3)))

haskell-8.10-kan-extensions

(define-public haskell-8.10-katip
  (package
    (name "haskell-8.10-katip")
    (version "0.8.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/katip/katip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m74n6fyxczfgg3swkkgr6864mzji1l0dpwpxk5zd93488zrij9v"))))
    (properties `((upstream-name . "katip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("2" "1add31lcw9v3qs7lrqrmz5j911kw80l7lvhx25sj0jr9x6za7l2f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hostname)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-string-conv)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/Soostone/katip")
    (synopsis "A structured logging framework.")
    (description
     "Katip is a structured logging framework. See README.md for more details.")
    (license license:bsd-3)))

haskell-8.10-katip

(define-public haskell-8.10-koji
  (package
    (name "haskell-8.10-koji")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-haxr)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/koji-hs")
    (synopsis "Koji buildsystem XML-RPC API bindings")
    (description
     "This library provides Haskell bindings to the Koji XML RPC API.
Koji is a distributed rpm buildsystem used by Fedora, Centos,
Red Hat, and other projects. See <https://pagure.io/koji/>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-koji

(define-public haskell-8.10-liboath-hs
  (package
    (name "haskell-8.10-liboath-hs")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/liboath-hs/liboath-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08wnzsk82ahyb3fy2sd1ci6aw0h3wiiad2j4kxs1j90wbrwkd3ri"))))
    (properties `((upstream-name . "liboath-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-inline-c)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages authentication) oath-toolkit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages authentication) oath-toolkit)))
    (home-page "https://github.com/parsonsmatt/liboath-hs#readme")
    (synopsis "Bindings to liboath")
    (description "See README for details.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-liboath-hs

(define-public haskell-8.10-massiv-test
  (package
    (name "haskell-8.10-massiv-test")
    (version "0.1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-test/massiv-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f2f401flik0sj1wqlzghhr0dxbz2lyvlb4ij38n3m2vgpkgkd57"))))
    (properties `((upstream-name . "massiv-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fmja3adixmljm4f90s8ckg26wr89hmhdwl6sr0nmlpz9x2w25q0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-massiv)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-scheduler)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis
     "Library that contains generators, properties and tests for Massiv Array Library.")
    (description
     "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.")
    (license license:bsd-3)))

haskell-8.10-massiv-test

(define-public haskell-8.10-mcmc
  (package
    (name "haskell-8.10-mcmc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mcmc/mcmc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vfbbzk7rwgan0lf1qxr03mbxlxgq1jccbsvffw4hy1k2s65wysi"))))
    (properties `((upstream-name . "mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-circular)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dirichlet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-log-domain)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-monad-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/mcmc#readme")
    (synopsis "Sample from a posterior using Markov chain Monte Carlo")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/mcmc#readme>")
    (license license:gpl3+)))

haskell-8.10-mcmc

(define-public haskell-8.10-morpheus-graphql
  (package
    (name "haskell-8.10-morpheus-graphql")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql/morpheus-graphql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k9nlik5qi1ff4m731da5wlaadx024irgn2v1hyz2bv9n1q28cqs"))))
    (properties `((upstream-name . "morpheus-graphql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-morpheus-graphql-app)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-relude)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.10-morpheus-graphql

(define-public haskell-8.10-morpheus-graphql-subscriptions
  (package
    (name "haskell-8.10-morpheus-graphql-subscriptions")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-subscriptions/morpheus-graphql-subscriptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14bpnzxxiid5582z5fi8nwb8rrhm7lgxscgkjxw34ng41wyv6686"))))
    (properties `((upstream-name . "morpheus-graphql-subscriptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-morpheus-graphql-app)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-relude)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Subscriptions")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.10-morpheus-graphql-subscriptions

(define-public haskell-8.10-mutable-containers
  (package
    (name "haskell-8.10-mutable-containers")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mutable-containers/mutable-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zhkhlvg9yw45fg3srvzx7j81547djpkfw7higdvlj7fmph6c6b4"))))
    (properties `((upstream-name . "mutable-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Abstactions and concrete implementations of mutable containers")
    (description
     "See docs and README at <http://www.stackage.org/package/mutable-containers>")
    (license license:expat)))

haskell-8.10-mutable-containers

(define-public haskell-8.10-network-ip
  (package
    (name "haskell-8.10-network-ip")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p4mn7vz74kxmsc8xvg7gx5rs38knnv518bc0qv0b07ki51wq7g0"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-data-dword)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-endian)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-data-serializer)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-data-textual)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-text-printer)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-8.10-network-ip

(define-public haskell-8.10-opentelemetry-wai
  (package
    (name "haskell-8.10-opentelemetry-wai")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-wai/opentelemetry-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09mh8kfh49vx2gascwwmzs4s649sm5i90nsifp76kjvg1nvqhd1m"))))
    (properties `((upstream-name . "opentelemetry-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-opentelemetry)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-wai")
    (synopsis "")
    (description "OpenTelemetry middleware for wai")
    (license license:asl2.0)))

haskell-8.10-opentelemetry-wai

(define-public haskell-8.10-ormolu
  (package
    (name "haskell-8.10-ormolu")
    (version "0.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ormolu/ormolu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1aamgzimjn9h7kwby9ajfgbj5dx08nmxyalwvpg9rs4xd8pbpd9s"))))
    (properties `((upstream-name . "ormolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1fi8fxyhw9jdwhsbmrikjqd461wrz7h4kdszrahlvdjfdsn4wh7d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/tweag/ormolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-8.10-ormolu

(define-public haskell-8.10-pipes-bytestring
  (package
    (name "haskell-8.10-pipes-bytestring")
    (version "2.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-bytestring/pipes-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch7145pv4f56601ysdj5gqqwsh5ag2zh34ydswg62fqi8z8cxvc"))))
    (properties `((upstream-name . "pipes-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09f3cavs592wwasiqr1sj09a1lkvksskv8cs0zhxj8nbf3jk3gqw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pipes-group)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-parse)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stringsearch)))
    (home-page "https://hackage.haskell.org/package/pipes-bytestring")
    (synopsis "ByteString support for pipes")
    (description
     "This library provides @@pipes@@ utilities for @@ByteString@@s")
    (license license:bsd-3)))

haskell-8.10-pipes-bytestring

(define-public haskell-8.10-pipes-wai
  (package
    (name "haskell-8.10-pipes-wai")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-wai/pipes-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0akd0n2qgv32pcq717j2xr2g29qmaz2v610ddx7vc4hc2kgp19h4"))))
    (properties `((upstream-name . "pipes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-8.10-pipes-wai

(define-public haskell-8.10-pkcs10
  (package
    (name "haskell-8.10-pkcs10")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-asn1-parse)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fcomb/pkcs10-hs#readme")
    (synopsis "PKCS#10 library")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-pkcs10

(define-public haskell-8.10-pretty-simple
  (package
    (name "haskell-8.10-pretty-simple")
    (version "4.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-simple/pretty-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srvx854ml2gffnkxr2fm12xk8syjsk078rfzrq0a3idwgv46myw"))))
    (properties `((upstream-name . "pretty-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexe" "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/pretty-simple")
    (synopsis "pretty printer for data types with a 'Show' instance.")
    (description
     "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
    (license license:bsd-3)))

haskell-8.10-pretty-simple

(define-public haskell-8.10-prettyprinter-compat-ansi-wl-pprint
  (package
    (name "haskell-8.10-prettyprinter-compat-ansi-wl-pprint")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-ansi-wl-pprint/prettyprinter-compat-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mcy0621lx0zmc2csdq348r21f932f2w51y62jzyz4cby58p5ch5"))))
    (properties `((upstream-name . "prettyprinter-compat-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter-compat-ansi-wl-pprint

(define-public haskell-8.10-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-8.10-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfrwnaldx0cyr3mwx3ys14bl58nfjpxkzrfi6152gvfh8ly44c6"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-8.10-prim-uniq
  (package
    (name "haskell-8.10-prim-uniq")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/obsidiansystems/prim-uniq")
    (synopsis "Opaque unique identifiers in primitive state monads")
    (description "Opaque unique identifiers in primitive state monads
and a GADT-like type using them as witnesses of type
equality.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-prim-uniq

(define-public haskell-8.10-pushbullet-types
  (package
    (name "haskell-8.10-pushbullet-types")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pushbullet-types/pushbullet-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ny8nlk50cn6zgikg7xwylkrablj05vcm5gjm9y4zdzhbz7s4qb4"))))
    (properties `((upstream-name . "pushbullet-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pushbullet-types")
    (synopsis "Datatypes used by the Pushbullet APIs")
    (description "")
    (license license:expat)))

haskell-8.10-pushbullet-types

(define-public haskell-8.10-ral
  (package
    (name "haskell-8.10-ral")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ral/ral-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0xwr2wr44zzl2bvkii2nq06djd6rrf891zxlb4daxzf3m93xvf3v"))))
    (properties `((upstream-name . "ral") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fadjunctions" "-fdistributive" "-fsemigroupoids")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-bin)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-fin)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Random access lists")
    (description
     "This package provides ordinary random access list, 'RAList', and also
a length indexed variant, 'RAVec'.

The data structure allows fast cons-operation (like ordinary list) but also fast random access (like non-functional arrays).

For @@lens@@ or @@optics@@ support see [ral-lens](https://hackage.haskell.org/package/ral-lens) and [ral-optics](https://hackage.haskell.org/package/ral-optics) packages respectively.

=== Similar packages

This packages don't provide length-indexed variant, and their 'RAList' has
opaque structure.

* https://hackage.haskell.org/package/ralist
* https://hackage.haskell.org/package/random-access-list")
    (license license:gpl2+)))

haskell-8.10-ral

(define-public haskell-8.10-result
  (package
    (name "haskell-8.10-result")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/result/result-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ibqc5h2vxy4h3sn94jxmjk099fkainnyd2y457g4ldqv9ydj9pm"))))
    (properties `((upstream-name . "result") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-keys)))
    (home-page "https://github.com/srijs/haskell-result")
    (synopsis "Encode success or at least one error")
    (description "")
    (license license:expat)))

haskell-8.10-result

(define-public haskell-8.10-rhbzquery
  (package
    (name "haskell-8.10-rhbzquery")
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
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-rhbzquery-notests)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-simple-cmd)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-rhbzquery

(define-public haskell-8.10-servant
  (package
    (name "haskell-8.10-servant")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servant/servant-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "033ykm8l7a9bjcwb3v9d0ljglq1sxpjm1iss7nqakpyxljcg2sxp"))))
    (properties `((upstream-name . "servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-singleton-bool)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant

(define-public haskell-8.10-sexp-grammar
  (package
    (name "haskell-8.10-sexp-grammar")
    (version "2.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexp-grammar/sexp-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08sqpk5qgq3mqlxvz24sw43m52khynpf41cnd4yif4b4ri583mb9"))))
    (properties `((upstream-name . "sexp-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0gcaq5pbdrd7h1isxjdkv0xpx3a9ysr4c4fp6hjl3ppj7hkkn34l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-fix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-invertible-grammar)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/esmolanka/sexp-grammar")
    (synopsis "Invertible grammar combinators for S-expressions")
    (description
     "Serialisation to and deserialisation from S-expressions derived from
a single grammar definition.")
    (license license:bsd-3)))

haskell-8.10-sexp-grammar

(define-public haskell-8.10-singletons
  (package
    (name "haskell-8.10-singletons")
    (version "2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons/singletons-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0az22as3rbzkfzv6a4m779qgibwah5r77l0zdgml9x7ajpkdcaz1"))))
    (properties `((upstream-name . "singletons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ar9prm5s0y4shsskn0mlkdhsiiagppv3nppmv16513201di0rd2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-th-desugar)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-turtle)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "This library generates singleton types, promoted functions, and singleton
functions using Template Haskell. It is useful for programmers who wish
to use dependently typed programming techniques. The library was originally
presented in /Dependently Typed Programming with Singletons/, published
at the Haskell Symposium, 2012.
(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)

Version 1.0 and onwards works a lot harder to promote functions. See the
paper published at Haskell Symposium, 2014:
<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.")
    (license license:bsd-3)))

haskell-8.10-singletons

(define-public haskell-8.10-sparse-tensor
  (package
    (name "haskell-8.10-sparse-tensor")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sparse-tensor/sparse-tensor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0549hw502hka1fyvv00nvd5aif5knvq7b9fk62f3fyjlfmqcnwx4"))))
    (properties `((upstream-name . "sparse-tensor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015) haskell-8.10-ad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-tf-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/TobiReinhart/sparse-tensor#readme")
    (synopsis "typesafe tensor algebra library")
    (description
     "
This package is intended to be used as a general purpose tensor algebra library.
It defines the usual tensor algebra functions such as addition, scalar multiplication, tensor product, and contractions,
but also general symmetrizations and further utility functions.

The implemented tensor data type is capable of being used with an arbitrary number of general abstract indices and can incorporate values
of any type that allow for a meaningful addition, scaling, and multiplication. The package is thus very flexible and can easily be customised
at wish.")
    (license license:expat)))

haskell-8.10-sparse-tensor

(define-public haskell-8.10-stackcollapse-ghc
  (package
    (name "haskell-8.10-stackcollapse-ghc")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stackcollapse-ghc/stackcollapse-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05271x47b2aik2msfm9f6jsazb174p667acwyd84vs73nygpbmdk"))))
    (properties `((upstream-name . "stackcollapse-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hspec-golden)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-rosezipper)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/marcin-rzeznicki/stackcollapse-ghc")
    (synopsis "Program to fold GHC prof files into flamegraph input")
    (description
     "Program to fold GHC prof files into flamegraph input
The reasons why this package exists despite other packages with similar functionality (not including the NIH syndrome) boil down to:

* it does only one thing (stack collapsing), so it's up to the user to install flamegraph scripts, pass options etc (in my eyes it's not a limitation, on the contrary),

* output control: annotations (color profiles), extending traces from a configured set of modules with the source locations or toggling qualified names,

* precise ticks and/or bytes with @@-p@@ reports,

* it's fast

= Basic usage

== Visualize ticks

If you have a detailed prof file (@@-P@@ RTS option)

> stackcollapse-ghc prof_file | flamegraph.pl --title 'Example' --subtitle 'Time' --countname ticks > path_to_svg

If you have a standard prof file (@@-p@@ RTS option)

> stackcollapse-ghc -p prof_file | flamegraph.pl --title 'Example' --subtitle 'Time' --countname ticks > path_to_svg


== Visualize allocations

If you have a detailed prof file (@@-P@@ RTS option)

> stackcollapse-ghc --alloc prof_file | flamegraph.pl --title 'Example' --subtitle 'Bytes allocated' --countname bytes > path_to_svg

If you have a standard prof file (@@-p@@ RTS option)

> stackcollapse-ghc --alloc -p prof_file | flamegraph.pl --title 'Example' --subtitle 'Bytes allocated' --countname bytes > path_to_svg

See the full [README](https://github.com/marcin-rzeznicki/stackcollapse-ghc) for details.")
    (license license:gpl3)))

haskell-8.10-stackcollapse-ghc

(define-public haskell-8.10-store
  (package
    (name "haskell-8.10-store")
    (version "0.7.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x4l8fifv785vf6l5z5v090bkfag7d7bvid41v5sdmkw57gxn92h"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-integer-simple" "-f-small-bench")
       #:cabal-revision
       ("1" "0xljh8w2p3md7f08qqk83cpl3rl3swdjbcb0il8pqr869p7pfrnd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cryptohash)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nats)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-store-core)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-th-reify-many)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-th-utilities)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mgsloan/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-8.10-store

(define-public haskell-8.10-streams
  (package
    (name "haskell-8.10-streams")
    (version "3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streams/streams-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h2fjlcsqnwwsqdk371m6drb119rx76b122mmwkd7zl3d86zhcr9"))))
    (properties `((upstream-name . "streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://github.com/ekmett/streams/issues")
    (synopsis "Various Haskell 2010 stream comonads")
    (description
     "Various Haskell 2010 stream comonads.
* \"Data.Stream.Future\" provides a coinductive anti-causal stream, or non-empty 'ZipList'. The comonad provides access to only the
tail of the stream. Like a conventional 'ZipList', this is /not/ a monad.

> data Future a = Last a | a :< Future a

* \"Data.Stream.Future.Skew\" provides a non-empty skew-binary random-access-list with the semantics of @@Data.Stream.Future@@. As with
\"Data.Stream.Future\" this stream is not a 'Monad', since the 'Applicative' instance zips streams of potentially differing lengths.
The random-access-list structure provides a number of operations logarithmic access time, but makes 'Data.Stream.Future.Skew.cons'
less productive. Where applicable \"Data.Stream.Infinite.Skew\" may be more efficient, due to a lazier and more efficient 'Applicative'
instance.

>

* \"Data.Stream.Infinite\" provides a coinductive infinite anti-causal stream. The 'Comonad' provides access to the tail of the
stream and the 'Applicative' zips streams together. Unlike 'Future', infinite stream form a 'Monad'. The monad diagonalizes
the 'Stream', which is consistent with the behavior of the 'Applicative', and the view of a 'Stream' as a isomorphic to the reader
monad from the natural numbers. Being infinite in length, there is no 'Alternative' instance.

> data Stream a = a :< Stream a

* \"Data.Stream.Infinite.Skew\" provides an infinite skew-binary random-access-list with the semantics of \"Data.Stream.Infinite\"
Since every stream is infinite, the 'Applicative' instance can be considerably less strict than the corresponding instance for
\"Data.Stream.Future.Skew\" and performs asymptotically better.

>

* \"Data.Stream.Infinite.Functional.Zipper\" provides a bi-infinite sequence, represented as a pure function with an accumulating
parameter added to optimize moving the current focus.

> data Zipper a = !Integer :~ (Integer -> a)

* \"Data.Stream.Supply\" provides a comonadic supply of unique values, which are
generated impurely as the tree is explored.")
    (license license:bsd-3)))

haskell-8.10-streams

(define-public haskell-8.10-streamt
  (package
    (name "haskell-8.10-streamt")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streamt/streamt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r2r6ribk85hwmzdn2imgajb28q5d5gbhysr62bw2jhmd5xy7985"))))
    (properties `((upstream-name . "streamt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-criterion)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-logict)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/davidar/streamt")
    (synopsis "Simple, Fair and Terminating Backtracking Monad Transformer")
    (description "This Haskell library provides an implementation of the
MonadPlus type class that enumerates results of a
non-deterministic computation by interleaving
subcomputations in a way that has usually much better
memory performance than other strategies with the same
termination properties.")
    (license license:bsd-3)))

haskell-8.10-streamt

(define-public haskell-8.10-sydtest-discover
  (package
    (name "haskell-8.10-sydtest-discover")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-discover/sydtest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f0a169cl8lv6zz9hs351f6aqha9iyl1n2fwfzskccvx1m4dk8z6"))))
    (properties `((upstream-name . "sydtest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "Automatic test suite discovery for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-sydtest-discover

(define-public haskell-8.10-time-manager
  (package
    (name "haskell-8.10-time-manager")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-manager/time-manager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nzwj0fxz370ks6vr1sylcidx33rnqq45y3q9yv9n4dj43nid9lh"))))
    (properties `((upstream-name . "time-manager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hwcns6rnh27nngq616cl9x2pl6lm4zzrsbbv5vq6hl0a60qhqjv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Scalable timer")
    (description "Scalable timer functions provided by a timer manager.")
    (license license:expat)))

haskell-8.10-time-manager

(define-public haskell-8.10-tmp-postgres
  (package
    (name "haskell-8.10-tmp-postgres")
    (version "1.34.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-postgres/tmp-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ivdhcp2d19z2xb36h3is2qq5n6i7gk16nbck27qlmgxll48lcq"))))
    (properties `((upstream-name . "tmp-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-generic-monoid)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-port-utils)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-postgres-options)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/tmp-postgres#readme")
    (synopsis "Start and stop a temporary postgres")
    (description "Start and stop a temporary postgres. See README.md")
    (license license:bsd-3)))

haskell-8.10-tmp-postgres

(define-public haskell-8.10-transaction
  (package
    (name "haskell-8.10-transaction")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transaction/transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1if04fm2kvkd25ksk1llqqkwaqy8y7pafbywmz70mrr68wrb2r6j"))))
    (properties `((upstream-name . "transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)))
    (home-page "https://github.com/arowM/haskell-transaction#readme")
    (synopsis "Monadic representation of transactions.")
    (description
     "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.")
    (license license:expat)))

haskell-8.10-transaction

(define-public haskell-8.10-typelits-witnesses
  (package
    (name "haskell-8.10-typelits-witnesses")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typelits-witnesses/typelits-witnesses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1khy5nacmsl7h4vg7driv4yb9m3zvkhbf8divyhd249i6bdmql70"))))
    (properties `((upstream-name . "typelits-witnesses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11lpv0zymmxlqh2sac324znmr5rhvvfvjipddgyhv6y3l7zy7jhs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)))
    (home-page "https://github.com/mstksg/typelits-witnesses")
    (synopsis
     "Existential witnesses, singletons, and classes for operations on GHC TypeLits")
    (description
     "This library contains:

*   A small specialized subset of the *singletons* library as it pertains to
`Nat` and `Symbol`, for when you need some simple functionality without
wanting to invoke the entire *singletons* library.
*   Operations for manipulating these singletons and `KnownNat` and
`KnownSymbol` instances, such as addition and multiplication of
singletons/`KnownNat` instances.
*   Operations for the comparison of `Nat`s in a way that works well with
*GHC.TypeLits*'s different comparison systems.  This is helpful for
bridging together libraries that use different systems; this functionality
is not yet provided by *singletons*.")
    (license license:expat)))

haskell-8.10-typelits-witnesses

(define-public haskell-8.10-unboxing-vector
  (package
    (name "haskell-8.10-unboxing-vector")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxing-vector/unboxing-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10sj7npfmhb9niagyhw5v68fpbhxa637x99dyw6njalsmsyimj91"))))
    (properties `((upstream-name . "unboxing-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmono-traversable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-should-not-typecheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/minoki/unboxing-vector#readme")
    (synopsis "A newtype-friendly variant of unboxed vectors")
    (description
     "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>")
    (license license:bsd-3)))

haskell-8.10-unboxing-vector

(define-public haskell-8.10-uncertain
  (package
    (name "haskell-8.10-uncertain")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uncertain/uncertain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wkgk6504qyirr2bq3m4pqgwdvrpnrig1bnzcls0r7krsig8arvg"))))
    (properties `((upstream-name . "uncertain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015) haskell-8.10-ad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/uncertain")
    (synopsis
     "Manipulating numbers with inherent experimental/measurement uncertainty")
    (description
     "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.

Documentation maintained at <https://mstksg.github.io/uncertain>")
    (license license:bsd-3)))

haskell-8.10-uncertain

(define-public haskell-8.10-universe-instances-extended
  (package
    (name "haskell-8.10-universe-instances-extended")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-extended/universe-instances-extended-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yg3cacr56kk0r8vnqxa9cm1awb727qkysnhc7rn4h9pfb10a7sn"))))
    (properties `((upstream-name . "universe-instances-extended")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "017adjf6wbw56a81l69vd0gzhlvi6n1wplh85smq7l9m98wsh4wy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from selected extra packages")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@")
    (license license:bsd-3)))

haskell-8.10-universe-instances-extended

(define-public haskell-8.10-vec
  (package
    (name "haskell-8.10-vec")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vec/vec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0z7icj5g59ml8cmcawa6ncayrzdi63s9ssllvnw2dfcd3ys5cjj0"))))
    (properties `((upstream-name . "vec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fadjunctions" "-fdistributive" "-fsemigroupoids")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-fin)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Vec: length-indexed (sized) list")
    (description
     "This package provides length-indexed (sized) lists, also known as vectors.

@@
data Vec n a where
\\    VNil  :: Vec 'Nat.Z a
\\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a
@@

The functions are implemented in four flavours:

* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.

* __pull__: using @@Fin n -> a@@ representation, which fuses well,
but makes some programs hard to write. And

* __data-family__: which allows lazy pattern matching

* __inline__: which exploits how GHC dictionary inlining works, unrolling
recursion if the size of 'Vec' is known statically.

As best approach depends on the application, @@vec@@ doesn't do any magic
transformation. Benchmark your code.

This package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @@GHC.TypeLits@@, for indexes.

For @@lens@@ or @@optics@@ support see [vec-lens](https://hackage.haskell.org/package/vec-lens) and [vec-optics](https://hackage.haskell.org/package/vec-optics) packages respectively.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [linear](https://hackage.haskell.org/package/linear) has 'V' type,
which uses 'Vector' from @@vector@@ package as backing store.
@@Vec@@ is a real GADT, but tries to provide as many useful instances (upto @@lens@@).

* [vector-sized](https://hackage.haskell.org/package/vector-sized)
Great package using @@GHC.TypeLits@@. Current version (0.6.1.0) uses
@@finite-typelits@@ and @@Int@@ indexes.

* [sized-vector](https://hackage.haskell.org/package/sized-vector) depends
on @@singletons@@ package. @@vec@@ isn't light on dependencies either,
but try to provide wide GHC support.

* [fixed-vector](https://hackage.haskell.org/package/fixed-vector)

* [sized](https://hackage.haskell.org/package/sized) also depends
on a @@singletons@@ package. The @@Sized f n a@@ type is generalisation of
@@linear@@'s @@V@@ for any @@ListLike@@.

* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)
is a kitchen sink package, which has @@CLaSH.Sized.Vector@@ module.
Also depends on @@singletons@@.")
    (license license:bsd-3)))

haskell-8.10-vec

(define-public haskell-8.10-vector-sized
  (package
    (name "haskell-8.10-vector-sized")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-sized/vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rlzwxcxzrxg7nwqijigj80fr4fyi5c2a8785898kir5hcyd6v1d"))))
    (properties `((upstream-name . "vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-finite-typelits)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-indexed-list-literals)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/expipiplus1/vector-sized#readme")
    (synopsis "Size tagged vectors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-vector-sized

(define-public haskell-8.10-wai-cors
  (package
    (name "haskell-8.10-wai-cors")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-cors/wai-cors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10gv3jjlkcb13031frr818p56v2s0qf6dqjsfpwlhwdxdssvx5r5"))))
    (properties `((upstream-name . "wai-cors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-8.10-wai-cors

(define-public haskell-8.10-wai-eventsource
  (package
    (name "haskell-8.10-wai-eventsource")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-eventsource/wai-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5zlqky7ldqbmiaixizhk1s8ghf5i3ha1xfz8flxgzr7gr0al3q"))))
    (properties `((upstream-name . "wai-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-8.10-wai-eventsource

(define-public haskell-8.10-wai-middleware-caching
  (package
    (name "haskell-8.10-wai-middleware-caching")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching/wai-middleware-caching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fp08ba46wn7gianfbirag8yj14s2x41fkhdb5mx7arjafgpd8m"))))
    (properties `((upstream-name . "wai-middleware-caching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-wai-middleware-caching

(define-public haskell-8.10-wai-middleware-prometheus
  (package
    (name "haskell-8.10-wai-middleware-prometheus")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-prometheus/wai-middleware-prometheus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1657zar254550skn3hx7y1g06aww2pjls5i4frw6ci4sxy3nynxp"))))
    (properties `((upstream-name . "wai-middleware-prometheus")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-prometheus-client)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "WAI middlware for exposing http://prometheus.io metrics.")
    (description "WAI middlware for exposing http://prometheus.io metrics.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-wai-middleware-prometheus

(define-public haskell-8.10-wai-rate-limit
  (package
    (name "haskell-8.10-wai-rate-limit")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-rate-limit/wai-rate-limit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z7npcf0smzyfjvkmpa6dw08sg3ywx4cc4kafgxk95dh8yqnmidw"))))
    (properties `((upstream-name . "wai-rate-limit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-8.10-wai-rate-limit

(define-public haskell-8.10-wai-session
  (package
    (name "haskell-8.10-wai-session")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session/wai-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lq0gqndb9simd1zkz355m604dwrpcdwxcl3bgagi6kb8h12fffj"))))
    (properties `((upstream-name . "wai-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/singpolyma/wai-session")
    (synopsis "Flexible session middleware for WAI")
    (description
     "Provides a generic, cookie-based middleware for sessions that is
parameterised over the session store, the cookie name, and the
cookie parameters (such as path, expiry, etc).  Passes a pair of
functions (lookup key, set key) for the current session through the
'Vault' in the 'Request'.

Also provides a simple example session store based on threadsafe
'IORef's and 'Data.Map'.

See example/Main.hs in git for example usage.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-wai-session

(define-public haskell-8.10-wai-slack-middleware
  (package
    (name "haskell-8.10-wai-slack-middleware")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-8.10-wai-slack-middleware

(define-public haskell-8.10-webdriver
  (package
    (name "haskell-8.10-webdriver")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w6z95swrz5ijmcxh0x3i521kpxqfp6pxgqfqwix7fc4jy450n8k"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-developer")
       #:cabal-revision
       ("1" "04bl53yr1144a3nv9avqjvhl20q0qc5gik6p7cd2naz3i5hfvid1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-directory-tree)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kallisti-dev/hs-webdriver")
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

haskell-8.10-webdriver

(define-public haskell-8.10-webgear-server
  (package
    (name "haskell-8.10-webgear-server")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webgear-server/webgear-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qf3w2vk7m4ci8lyxk37iz19zbz08afihrn4sw2cqza9yaw51bjh"))))
    (properties `((upstream-name . "webgear-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/rkaippully/webgear#readme")
    (synopsis "Composable, type-safe library to build HTTP API servers")
    (description
     "WebGear is a library to for building composable, type-safe HTTP API servers.
WebGear focuses on good documentation and usability.
See the documentation of WebGear module to get started.")
    (license license:mpl2.0)))

haskell-8.10-webgear-server

(define-public haskell-8.10-websockets-snap
  (package
    (name "haskell-8.10-websockets-snap")
    (version "0.10.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets-snap/websockets-snap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hpszqb61xhbgfvxd6g56kdfxsyi14q7xh12jbdnyycbfijb9bqk"))))
    (properties `((upstream-name . "websockets-snap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08rz1l4f84gcp2a2rsihk6zl3jm2x4igr13fwv2y8m5agsvd2lhy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-snap-server)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/websockets-snap")
    (synopsis "Snap integration for the websockets library")
    (description "Snap integration for the websockets library")
    (license license:bsd-3)))

haskell-8.10-websockets-snap

(define-public haskell-8.10-within
  (package
    (name "haskell-8.10-within")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-like)))
    (home-page "https://hackage.haskell.org/package/within")
    (synopsis "A value within another path.")
    (description
     "Simple newtype for representing a value within a well-typed directory. Useful for when you need to jump between directories and change filenames independently. Uses the path library.")
    (license license:expat)))

haskell-8.10-within

(define-public haskell-8.10-x509-store
  (package
    (name "haskell-8.10-x509-store")
    (version "1.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-store/x509-store-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nn8ql7vkp4qgf2msm600sr6ranpsajbhq0sc4c0l6pk1i9174n5"))))
    (properties `((upstream-name . "x509-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-8.10-x509-store

