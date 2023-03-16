;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage019)
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
(define-public haskell-9.4-aeson-diff
  (package
    (name "haskell-9.4-aeson-diff")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-edit-distance-vector)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
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

haskell-9.4-aeson-diff

(define-public haskell-9.4-aeson-yaml
  (package
    (name "haskell-9.4-aeson-yaml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-string-qq)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/clovyr/aeson-yaml")
    (synopsis "Output any Aeson value as YAML (pure Haskell library)")
    (description
     "This library exposes functions for encoding any Aeson value as YAML. There
is also support for encoding multiple values into YAML \"documents\".

This library is pure Haskell, and does not depend on C FFI with libyaml. It
is also licensed under the BSD3 license.")
    (license license:bsd-3)))

haskell-9.4-aeson-yaml

(define-public haskell-9.4-autodocodec-yaml
  (package
    (name "haskell-9.4-autodocodec-yaml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-autodocodec-schema)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for yaml")
    (description "")
    (license license:expat)))

haskell-9.4-autodocodec-yaml

(define-public haskell-9.4-avro
  (package
    (name "haskell-9.4-avro")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avro/avro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02qczc2hih1yvmarbi4vjccvh8x2n8wsjllq3hm42shkd9xl0s6a"))))
    (properties `((upstream-name . "avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-HasBigDecimal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-generic-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-tf-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/avro#readme")
    (synopsis "Avro serialization support for Haskell")
    (description "Avro serialization and deserialization support for Haskell")
    (license license:bsd-3)))

haskell-9.4-avro

(define-public haskell-9.4-binance-exports
  (package
    (name "haskell-9.4-binance-exports")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binance-exports/binance-exports-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gaky4kyyx6v3jxay0ax8scbqnljrfxk6papbri9hm0ylh2vh8l"))))
    (properties `((upstream-name . "binance-exports") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v5ss5mn2r3ir7lbwbiszw9l4khgmvw4dfavdfg29mhv39hr1y6v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytedump)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/binance-exports#readme")
    (synopsis "Generate CSV Exports of your Binance Trade History.")
    (description
     "@@binance-exports@@ is a CLI program that queries the Binance.us API for your
Trade History & exports all trades to a CSV file.

Sometime during February 2022, Binance removed their @@Trade History@@ page,
along with the ability to export your completed trades. The @@Order History@@
export is still available, but the format is more difficult to parse.

This package contains a replacement executable for the @@Trade History@@
export, generating CSVs with an almost-identical format. There are two
differences: we split the trade symbol into two separate asset columns &
include the trade ID.

You can install @@binance-exports@@ with Stack: @@stack install --resolver
nightly binance-exports@@. Then run the following to print out your trades
for a given symbol:

@@
$ binance-exports -k \\<API_KEY\\> -s \\<API_SECRET\\> SOLUSD
time,base-asset,quote-asset,type,price,quantity,total,fee,fee-currency,trade-id
2022-03-01 21:20:44,SOL,USD,BUY,42.2424,0.42,42.90010000,0.0009001,BNB,9001
@@

See @@binance-exports --help@@ for additional options.")
    (license license:bsd-3)))

haskell-9.4-binance-exports

(define-public haskell-9.4-bm
  (package
    (name "haskell-9.4-bm")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/bm-haskell#readme")
    (synopsis "open bookmarks and queries from the command line")
    (description
     "This package provides a command-line utility that opens bookmarks and
queries.  Please see the README on GitHub at
<https://github.com/ExtremaIS/bm-haskell#readme>.")
    (license license:expat)))

haskell-9.4-bm

(define-public haskell-9.4-citeproc
  (package
    (name "haskell-9.4-citeproc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pandoc-types)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-timeit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-unicode-collation)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/citeproc")
    (synopsis "Generates citations and bibliography from CSL styles.")
    (description "citeproc parses CSL style files and uses them to
generate a list of formatted citations and bibliography
entries.  For more information about CSL, see
<https://citationstyles.org/>.")
    (license license:bsd-2)))

haskell-9.4-citeproc

(define-public haskell-9.4-conduit-algorithms
  (package
    (name "haskell-9.4-conduit-algorithms")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-lzma-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-stm-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-9.4-conduit-algorithms

(define-public haskell-9.4-configuration-tools
  (package
    (name "haskell-9.4-configuration-tools")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
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

haskell-9.4-configuration-tools

(define-public haskell-9.4-country
  (package
    (name "haskell-9.4-country")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/country/country-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0c601fa2m6f5b9g7i1azh9aqhnsiqcrpqmngwnhrxf8gm4jh5yi5"))))
    (properties `((upstream-name . "country") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1l8ik38d92xrhfd9a6an4i5zcmvqpxicggdihy6hcj1yl1997qsc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-bytebuild)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-bytehash)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-byteslice)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-contiguous)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/country#readme")
    (synopsis "Country data type and functions")
    (description
     "The `country` library provides a data type for dealing with
the set of countries as defined by ISO 3166. The representation
is compact and is well-suited to use with vectors and
primitive arrays. Additionally, this library exports functions
that provide the following encodings and decodings:

* ISO Alpha-2 (two-letter country code)

* ISO Alpha-3 (three-letter country code)

* ISO Numeric (three-digit country code)


The main differences between this library and `iso3166-country-codes` are:

* it doesn't use an ADT to represent countries, instead it uses the country's three-digit country code.

* it doesn't use `String` for encoding/decoding

* it provides two-alpha and three-alpha country codes.

* it provides `Prim` instances from the `primitive` package to allow types to be used in unboxed vectors/arrays.

* BSD3 licence instead of LGPL

Please open up an issue on github if there is anything
you would like to see added.")
    (license license:bsd-3)))

haskell-9.4-country

(define-public haskell-9.4-cql-io
  (package
    (name "haskell-9.4-cql-io")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql-io/cql-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zg199ifkqh1ba335vqp0jlm4sn5ybjxap4qymb54bylhwj0vzcp"))))
    (properties `((upstream-name . "cql-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-cql)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/cql-io/")
    (synopsis "Cassandra CQL client.")
    (description
     "CQL Cassandra driver supporting native protocol versions 3 and 4.

This library uses the <http://hackage.haskell.org/package/cql cql> library
which implements Cassandra's CQL protocol and complements it with the
neccessary I/O operations. The feature-set includes:

* /Node discovery/. The driver discovers nodes automatically from a small
set of bootstrap nodes.

* /Customisable load-balancing policies/. In addition to pre-built LB
policies such as round-robin, users of this library can provide their
own policies if desired.

* /Support for connection streams/. Requests can be multiplexed over a
few connections.

* /Customisable retry settings/. Support for default retry settings as well
as local overrides per query.

* /Prepared queries/. Prepared queries are an optimisation which parse
and prepare a query only once on Cassandra nodes but execute it many
times with different concrete values.

* /TLS support/. Client to node communication can optionally use transport
layer security (using HsOpenSSL).")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-cql-io

(define-public haskell-9.4-datadog
  (package
    (name "haskell-9.4-datadog")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/datadog/datadog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0azjwmijk9dvikyajhapmbl4ckdnrji684yqzhm0p3m34rvzj2p4"))))
    (properties `((upstream-name . "datadog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-buffer-builder)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description "")
    (license license:expat)))

haskell-9.4-datadog

(define-public haskell-9.4-dbus
  (package
    (name "haskell-9.4-dbus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
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

haskell-9.4-dbus

(define-public haskell-9.4-dns
  (package
    (name "haskell-9.4-dns")
    (version "4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dns/dns-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1l80y48s9ryqcap587w41wrr2jzwh55gi16k7yib58xpqarcxqs5"))))
    (properties `((upstream-name . "dns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-9.4-dns

(define-public haskell-9.4-domain-optics
  (package
    (name "haskell-9.4-domain-optics")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-optics/domain-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bfp6vidn10p0jjzmag0cdxncb5mq1qlp0v851hqps5cl9qshnbk"))))
    (properties `((upstream-name . "domain-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-domain-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-th-lego)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-optics")
    (synopsis "Integration of domain with optics")
    (description "")
    (license license:expat)))

haskell-9.4-domain-optics

(define-public haskell-9.4-easy-logger
  (package
    (name "haskell-9.4-easy-logger")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/easy-logger/easy-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s4fj1xbza3j868p46glh950qa6njsjlbpvvx837xjmx73x7qk29"))))
    (properties `((upstream-name . "easy-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/schnecki/easy-logger#readme")
    (synopsis "Logging made easy.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/easy-logger#readme>")
    (license license:bsd-3)))

haskell-9.4-easy-logger

(define-public haskell-9.4-elm2nix
  (package
    (name "haskell-9.4-elm2nix")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elm2nix/elm2nix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xixflxi0yw4y9r1hqs54rajz429gf0dy22mr7bw450yqlj9ih1d"))))
    (properties `((upstream-name . "elm2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-here)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/domenkozar/elm2nix#readme")
    (synopsis "Turn your Elm project into buildable Nix project")
    (description
     "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>")
    (license license:bsd-3)))

haskell-9.4-elm2nix

(define-public haskell-9.4-elynx
  (package
    (name "haskell-9.4-elynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elynx/elynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k6hxsxcqlrfrcww1n31kidn5y7kafz9fm2qflj7zrcxpfpi9skj"))))
    (properties `((upstream-name . "elynx") (hidden? . #f)))
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
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-slynx)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-tlynx)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Validate and (optionally) redo ELynx analyses")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx

(define-public haskell-9.4-fakedata
  (package
    (name "haskell-9.4-fakedata")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-fakedata-parser)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-string-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-9.4-fakedata

(define-public haskell-9.4-fast-logger
  (package
    (name "haskell-9.4-fast-logger")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-logger/fast-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rx866swvqq7lzngv4bx7qinnwmm3aa2la8caljvbfbi0xz6wps3"))))
    (properties `((upstream-name . "fast-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "012rrm13hnaz06ssy7m8z36l8aajayd9pbk19q042wrfwsvb7jjl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-easy-file)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system for Haskell")
    (license license:bsd-3)))

haskell-9.4-fast-logger

(define-public haskell-9.4-fix-whitespace
  (package
    (name "haskell-9.4-fix-whitespace")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-filepattern)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agda/fix-whitespace")
    (synopsis "Fixes whitespace issues.")
    (description
     "Removes trailing whitespace, lines containing only whitespace, expands tabs,
and ensures that every file ends in a newline character.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-fix-whitespace

(define-public haskell-9.4-fourmolu
  (package
    (name "haskell-9.4-fourmolu")
    (version "0.10.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fourmolu/fourmolu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gkzd2wf8hji5j0pxjv7l43m405zwsvppj7hax69j86346mb8hp4"))))
    (properties `((upstream-name . "fourmolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-ffixity-th")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-MemoTrie)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fourmolu/fourmolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.4-fourmolu

(define-public haskell-9.4-frontmatter
  (package
    (name "haskell-9.4-frontmatter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-9.4-frontmatter

(define-public haskell-9.4-gemini-exports
  (package
    (name "haskell-9.4-gemini-exports")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gemini-exports/gemini-exports-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a50mb0na1b595gpbq8ynisg6g6dispjgz1dj2gc51k6q618jgly"))))
    (properties `((upstream-name . "gemini-exports") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base64)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/gemini-exports#readme")
    (synopsis
     "Generate CSV Exports of Your Gemini Trades, Transfers, & Earn Transactions")
    (description
     "@@gemini-exports@@ is a CLI program that queries the Gemini Exchange's API
for your Trade History, Transfer History, & Earn History and exports all
fetched data to a CSV file.

You can install @@gemini-exports@@ with Stack: @@stack install --resolver
nightly gemii-exports@@. Then run the following to print out your complete
history:

@@
$ gemini-exports -k \\<API_KEY\\> -s \\<API_SECRET\\>
time,base-asset,quote-asset,type,description,price,quantity,total,fee,fee-currency,trade-id
2022-04-20 04:20:00,GUSD,USD,Buy,,1.0,9001.0,9001.0,0.0,USD,900142424242
@@

See @@gemini-exports --help@@ for additional options, configuration file
details, etc.")
    (license license:bsd-3)))

haskell-9.4-gemini-exports

(define-public haskell-9.4-hamtsolo
  (package
    (name "haskell-9.4-hamtsolo")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-9.4-hamtsolo

(define-public haskell-9.4-haskell-gi
  (package
    (name "haskell-9.4-haskell-gi")
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
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

haskell-9.4-haskell-gi

(define-public haskell-9.4-hie-bios
  (package
    (name "haskell-9.4-hie-bios")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hie-bios/hie-bios-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vqfbyi1jlgzrvl9njgdhvj1hp0b7rl4xpchyldpf179151vy24p"))))
    (properties `((upstream-name . "hie-bios") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0axmy522cfk92c5hwrqhkqswlxlm26m821b64rnh32666sxfdhy1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-co-log-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mpickering/hie-bios")
    (synopsis "Set up a GHC API session")
    (description
     "Set up a GHC API session and obtain flags required to compile a source file")
    (license license:bsd-3)))

haskell-9.4-hie-bios

(define-public haskell-9.4-hindent
  (package
    (name "haskell-9.4-hindent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mihaimaruseac/hindent")
    (synopsis "Extensible Haskell pretty printer")
    (description
     "Extensible Haskell pretty printer. Both a library and an executable.

See the Github page for usage\\/explanation: <https://github.com/mihaimaruseac/hindent>")
    (license license:bsd-3)))

haskell-9.4-hindent

(define-public haskell-9.4-hinfo
  (package
    (name "haskell-9.4-hinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-9.4-hinfo

(define-public haskell-9.4-hledger-stockquotes
  (package
    (name "haskell-9.4-hledger-stockquotes")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-stockquotes/hledger-stockquotes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09h021dcpya8492kgyqkd2irxa10kwc9dgzk5xn7r121hl55jp50"))))
    (properties `((upstream-name . "hledger-stockquotes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b10qfxps3iz69l05gagshphifhxw5nvsx79yfyc4iq1rb8hnxc7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hledger-lib)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/hledger-stockquotes#readme")
    (synopsis "Generate HLedger Price Directives From Daily Stock Quotes.")
    (description
     "@@hledger-stockquotes@@ is an addon for <https://hledger.org/ hledger> that
reads your journal file, pulls the historical stock prices for commodities,
and writes out a new journal file containing the respective price
directives.

The <https://www.alphavantage.co/ AlphaVantage API> is used to fetch the
stock quotes and you will need a
<https://www.alphavantage.co/support/#api-key free API key> to use this
program.

You can install @@hledger-stockquotes@@ with Stack: @@stack install --resolver
nightly hledger-stockquotes@@. Then run @@hledger-stockquotes --help@@ to see
the usage instructions & all available options.")
    (license license:bsd-3)))

haskell-9.4-hledger-stockquotes

(define-public haskell-9.4-hlint
  (package
    (name "haskell-9.4-hlint")
    (version "3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kxdrqybnma508g1z42s3rc3cay11m8nl5ziddyw31m020515gcq"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fthreaded" "-fgpl" "-fghc-lib" "-f-hsyaml")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-cpphs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-deriving-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-filepattern)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hscolour)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-refact)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-9.4-hlint

(define-public haskell-9.4-hpack
  (package
    (name "haskell-9.4-hpack")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
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
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-infer-license)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mockery)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "A modern format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-9.4-hpack

(define-public haskell-9.4-hpc-lcov
  (package
    (name "haskell-9.4-hpc-lcov")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/hpc-lcov#readme")
    (synopsis "Convert HPC output into LCOV format")
    (description "Convert HPC output into LCOV format.")
    (license license:bsd-3)))

haskell-9.4-hpc-lcov

(define-public haskell-9.4-hspec-junit-formatter
  (package
    (name "haskell-9.4-hspec-junit-formatter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-iso8601-time)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/hspec-junit-formatter#readme")
    (synopsis "A JUnit XML runner/formatter for hspec")
    (description
     "Allows hspec tests to write JUnit XML output for parsing in various tools.")
    (license license:expat)))

haskell-9.4-hspec-junit-formatter

(define-public haskell-9.4-html-conduit
  (package
    (name "haskell-9.4-html-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-9.4-html-conduit

(define-public haskell-9.4-http-client-overrides
  (package
    (name "haskell-9.4-http-client-overrides")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbiemcmichael/http-client-overrides")
    (synopsis "HTTP client overrides")
    (description
     "A library for applying overrides to 'ManagerSettings' when using the
<http://hackage.haskell.org/package/http-client http-client> library.")
    (license license:bsd-3)))

haskell-9.4-http-client-overrides

(define-public haskell-9.4-hw-ip
  (package
    (name "haskell-9.4-hw-ip")
    (version "2.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-ip/hw-ip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cwj6402314lblh7cm77j1bkpnjqpsk7rn8z94awqp4pfp4x8dk0"))))
    (properties `((upstream-name . "hw-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hfivvc6s1nnzp30h4nafbhjhgbwx1ip07ggqmafzymaw8wvky44")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-appar)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-generic-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-hw-bits)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-ip#readme")
    (synopsis "Library for manipulating IP addresses and CIDR blocks")
    (description
     "Library for manipulating IP addresses and CIDR blocks. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-ip

(define-public haskell-9.4-hw-packed-vector
  (package
    (name "haskell-9.4-hw-packed-vector")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-packed-vector/hw-packed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aplyknpf81kqpisz9zibyncg2i95dnfv6kywlg3wf7ic1wcjqxh"))))
    (properties `((upstream-name . "hw-packed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0h2y77lixrj2iva4d6w181g258d0yqnf4prbkg4fmflqmck9308c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-generic-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-hw-bits)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-packed-vector#readme")
    (synopsis "Packed Vector")
    (description "Packed Vector. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-packed-vector

(define-public haskell-9.4-hw-rankselect-base
  (package
    (name "haskell-9.4-hw-rankselect-base")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect-base/hw-rankselect-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s0lqwq0rjmjca6lshfnxqi0c7bzlyflhm45xw1xa9pvqci8439h"))))
    (properties `((upstream-name . "hw-rankselect-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("5" "0gaqxa05m6a519zpvhlnhvnd4j5jh0zm9div8z4qx5h0g9g82i1m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-bits-extra)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-bitvec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-hw-bits)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-int)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-rankselect-base

(define-public haskell-9.4-junit-xml
  (package
    (name "haskell-9.4-junit-xml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/junit-xml#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/junit-xml>.")
    (license license:bsd-3)))

haskell-9.4-junit-xml

(define-public haskell-9.4-katip
  (package
    (name "haskell-9.4-katip")
    (version "0.8.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/katip/katip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02h7mgprmqy219i4ph9qg5pwgdzrxkzkgckbcaizmny84c87b46r"))))
    (properties `((upstream-name . "katip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hostname)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-string-conv)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/katip")
    (synopsis "A structured logging framework.")
    (description
     "Katip is a structured logging framework. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.4-katip

(define-public haskell-9.4-krank
  (package
    (name "haskell-9.4-krank")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/krank/krank-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01ncfknvm4mndzam3q9m15p51cz8cwjds12zc74rl1p49rdp5pis"))))
    (properties `((upstream-name . "krank") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-PyF)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-pretty-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/guibou/krank")
    (synopsis "Krank checks issue tracker link status in your source code")
    (description
     "Krank checks issue tracker link status in your source code. When you implement a workaround because of an upstream issue, you often put a link in comment in your code. Krank will tell you when the issue associated with your workaround is closed, meaning that you may get ride of your workaround.")
    (license license:bsd-3)))

haskell-9.4-krank

(define-public haskell-9.4-markdown
  (package
    (name "haskell-9.4-markdown")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-9.4-markdown

(define-public haskell-9.4-mmark
  (package
    (name "haskell-9.4-mmark")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-html-entity-map)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-modern-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-metrics)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-9.4-mmark

(define-public haskell-9.4-mustache
  (package
    (name "haskell-9.4-mustache")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-9.4-mustache

(define-public haskell-9.4-nqe
  (package
    (name "haskell-9.4-nqe")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-stm-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unique)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/nqe#readme>")
    (license license:expat)))

haskell-9.4-nqe

(define-public haskell-9.4-nvim-hs-contrib
  (package
    (name "haskell-9.4-nvim-hs-contrib")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nvim-hs-contrib/nvim-hs-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15ds92qxhax0y9d9zl1sz061ali1rj9vwvcjn415ph1cyqgr3ink"))))
    (properties `((upstream-name . "nvim-hs-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-messagepack)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-nvim-hs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs-contrib")
    (synopsis "Haskell plugin backend for neovim")
    (description "Library for nvim-hs.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-nvim-hs-contrib

(define-public haskell-9.4-opentelemetry-extra
  (package
    (name "haskell-9.4-opentelemetry-extra")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-extra/opentelemetry-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g13a8lmrx38a48xhn4v1rk144l44vil7p7w5acb66dn6q0cc15d"))))
    (properties `((upstream-name . "opentelemetry-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ghc-events)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hvega)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-jsonifier)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-opentelemetry)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-text-show)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-extra")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.4-opentelemetry-extra

(define-public haskell-9.4-prometheus-metrics-ghc
  (package
    (name "haskell-9.4-prometheus-metrics-ghc")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-metrics-ghc/prometheus-metrics-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06pah4wn9yj65shpgg6lb5pwfmx46gk2nbrs1d6bqiqni05s9pzk"))))
    (properties `((upstream-name . "prometheus-metrics-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-prometheus-client)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (description
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-prometheus-metrics-ghc

(define-public haskell-9.4-req-conduit
  (package
    (name "haskell-9.4-req-conduit")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/req-conduit/req-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zyy9j6iiz8z2jdx25vp77arfbmrck7bjndm3p4s9l9399c5bm62"))))
    (properties `((upstream-name . "req-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0gbm1c95ml7binmazn15737a8ls5p21f9d0d6pzc3fla0rz91ic1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-9.4-req-conduit

(define-public haskell-9.4-sbp
  (package
    (name "haskell-9.4-sbp")
    (version "4.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbp/sbp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1mhnqiqi6yv3mn0rcwiq5k79a2zxcpqp4284ziqrcjwnhjxd2cnf"))))
    (properties `((upstream-name . "sbp") (hidden? . #f)))
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
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-basic-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-binary-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
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

haskell-9.4-sbp

(define-public haskell-9.4-servant-xml
  (package
    (name "haskell-9.4-servant-xml")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-xml/servant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07ancw5dypcxqc48g9zn8vn597hj174aq5akzyr650pwz0dvwsfk"))))
    (properties `((upstream-name . "servant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-xmlbf)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xmlbf-xeno)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/servant-xml")
    (synopsis "Servant support for the XML Content-Type")
    (description
     "Servant support for the Content-Type of /application\\/xml/. Anything with 'ToXml' and 'FromXml' instances can be automatically marshalled.")
    (license license:bsd-3)))

haskell-9.4-servant-xml

(define-public haskell-9.4-sized
  (package
    (name "haskell-9.4-sized")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sized/sized-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l6miv6dw0j5fdkiig7a8akhphrpxs8ls6xdakzpbk53bdh0093n"))))
    (properties `((upstream-name . "sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-subcategories)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-type-natural)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sized")
    (synopsis "Sized sequence data-types")
    (description
     "A wrapper to make length-parametrized data-type from functorial data-types.")
    (license license:bsd-3)))

haskell-9.4-sized

(define-public haskell-9.4-skews
  (package
    (name "haskell-9.4-skews")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/skews/skews-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rwliykb87mvkpajzkx1fh4qlh7fgh6y5z5np1jrdi0rv3ki7hsn"))))
    (properties `((upstream-name . "skews") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-deque)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-9.4-skews

(define-public haskell-9.4-skylighting-core
  (package
    (name "haskell-9.4-skylighting-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
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

haskell-9.4-skylighting-core

(define-public haskell-9.4-stache
  (package
    (name "haskell-9.4-stache")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:expat)))

haskell-9.4-stache

(define-public haskell-9.4-stm-hamt
  (package
    (name "haskell-9.4-stm-hamt")
    (version "1.2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-hamt/stm-hamt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p3njvg5sixsgk12rldmvgcj8flmh00w968mzaavxl4j4axd8x3c"))))
    (properties `((upstream-name . "stm-hamt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-focus)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-list-t)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-primitive-extras)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/stm-hamt")
    (synopsis "STM-specialised Hash Array Mapped Trie")
    (description
     "A low-level data-structure,
which can be used to implement higher-level interfaces like
hash-map and hash-set.
Such implementations are presented by
<http://hackage.haskell.org/package/stm-containers the \"stm-containers\" library>.")
    (license license:expat)))

haskell-9.4-stm-hamt

(define-public haskell-9.4-tagstream-conduit
  (package
    (name "haskell-9.4-tagstream-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
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

haskell-9.4-tagstream-conduit

(define-public haskell-9.4-text-builder
  (package
    (name "haskell-9.4-text-builder")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder/text-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00pl4jbqpcrfc00m3hf871g9k7s0n6xf2igb7ba1dnqh76w4lw4h"))))
    (properties `((upstream-name . "text-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-text-builder-dev)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-9.4-text-builder

(define-public haskell-9.4-time-manager
  (package
    (name "haskell-9.4-time-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Scalable timer")
    (description "Scalable timer functions provided by a timer manager.")
    (license license:expat)))

haskell-9.4-time-manager

(define-public haskell-9.4-tls-session-manager
  (package
    (name "haskell-9.4-tls-session-manager")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-session-manager/tls-session-manager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "134kb5nz668f4xrr5g98g7fc1bwb3ri6q433a1i6asjkniwpy85s"))))
    (properties `((upstream-name . "tls-session-manager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-9.4-tls-session-manager

(define-public haskell-9.4-tmp-postgres
  (package
    (name "haskell-9.4-tmp-postgres")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-generic-monoid)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-postgres-options)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/tmp-postgres#readme")
    (synopsis "Start and stop a temporary postgres")
    (description "Start and stop a temporary postgres. See README.md")
    (license license:bsd-3)))

haskell-9.4-tmp-postgres

(define-public haskell-9.4-ua-parser
  (package
    (name "haskell-9.4-ua-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-text)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcre-light)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-9.4-ua-parser

(define-public haskell-9.4-wai-middleware-prometheus
  (package
    (name "haskell-9.4-wai-middleware-prometheus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-prometheus-client)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "WAI middlware for exposing http://prometheus.io metrics.")
    (description "WAI middlware for exposing http://prometheus.io metrics.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-wai-middleware-prometheus

(define-public haskell-9.4-xml-conduit-writer
  (package
    (name "haskell-9.4-xml-conduit-writer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
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

haskell-9.4-xml-conduit-writer

(define-public haskell-9.4-xml-hamlet
  (package
    (name "haskell-9.4-xml-hamlet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-9.4-xml-hamlet

(define-public haskell-9.4-xml-indexed-cursor
  (package
    (name "haskell-9.4-xml-indexed-cursor")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-xml-indexed-cursor

(define-public haskell-9.4-yaml-unscrambler
  (package
    (name "haskell-9.4-yaml-unscrambler")
    (version "0.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yaml-unscrambler/yaml-unscrambler-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wca4xqww3y1cvf6jshdk13nblg7byzyw7120yy8b2bgd3d0l42z"))))
    (properties `((upstream-name . "yaml-unscrambler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017) haskell-9.4-acc)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-libyaml)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-selective)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-text-builder-dev)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/yaml-unscrambler")
    (synopsis "Flexible declarative YAML parsing toolkit")
    (description "")
    (license license:expat)))

haskell-9.4-yaml-unscrambler

(define-public haskell-9.4-zip
  (package
    (name "haskell-9.4-zip")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-digest)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-9.4-zip

