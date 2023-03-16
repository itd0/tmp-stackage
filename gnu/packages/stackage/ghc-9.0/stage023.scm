;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage023)
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
(define-public haskell-9.0-Allure
  (package
    (name "haskell-9.0-Allure")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mmnn86azcpig1j61mwks2z227sw70lc7hsmi342hprabrccq9b1"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-fwith_costly_optimizations" "-frelease" "-fsupportnodejs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-LambdaHack)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-enummapset)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-compact)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hsini)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage. You can also try the game out
in the browser at <http://allureofthestars.com/play>.

Not a single image in this game. You have to imagine everything
yourself, like with a book (a grown-up book, without pictures).
Once you learn to imagine things, though, you can keep exploring
and mastering the world and making up stories for a long time.

The game is written in Haskell using the LambdaHack roguelike
game engine <http://hackage.haskell.org/package/LambdaHack>.
Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
are high replayability and auto-balancing through procedural
content generation and persistent content modification
based on player behaviour. Contributions are welcome.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is in .cabal.bkp file.")
    (license license:agpl3+)))

haskell-9.0-Allure

(define-public haskell-9.0-BiobaseXNA
  (package
    (name "haskell-9.0-BiobaseXNA")
    (version "0.11.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BiobaseXNA/BiobaseXNA-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ws9x3z5ljgm7hnz290yhzm3ijksd6dr4m0drj1lxhchdfmwfy1m"))))
    (properties `((upstream-name . "BiobaseXNA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-BiobaseENA)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-BiobaseTypes)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-DPutils)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ForestStructures)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-PrimitiveArray)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-bimaps)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-csv)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-tuple)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/BiobaseXNA")
    (synopsis "Efficient RNA/DNA/Protein Primary/Secondary Structure")
    (description
     "This is a base library for bioinformatics with emphasis on RNA
and DNA primary structure as well as amino acid sequences.

Provided are efficient encodings for short (limited by the
amount of RAM) sequences, as required by RNA folding tools.
Extended RNA secondary structures can be represented as well.

Contains data from:

@@
Frequency and isostericity of RNA base pairs
Jesse Stombaugh, Craig L. Zirbel, Eric Westhof, and Neocles B. Leontis
Nucl. Acids Res. (2009)
@@

<http://dx.crossref.org/10.1093%2Fnar%2Fgkp011>")
    (license license:bsd-3)))

haskell-9.0-BiobaseXNA

(define-public haskell-9.0-acid-state
  (package
    (name "haskell-9.0-acid-state")
    (version "0.16.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/acid-state/acid-state-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05hcbk5dhwygc29b1jbyh2zzjrxybm44hj02wmv2bhz04b5wldca"))))
    (properties `((upstream-name . "acid-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-skip-state-machine-test")
       #:cabal-revision
       ("3" "0ky6fsq5z9kd8wfri7fh7jzpf3d7l6r9574zpb4sc1wwvq0p45rr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-filelock)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-bsd)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-safecopy)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-expand-syns)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/acid-state")
    (synopsis
     "Add ACID guarantees to any serializable Haskell data structure.")
    (description
     "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-acid-state

(define-public haskell-9.0-api-maker
  (package
    (name "haskell-9.0-api-maker")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-maker/api-maker-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b3mh2z1paizbjzh4i03qvs5r8v6rgqmbga81dnsc6kxi4s8bw2a"))))
    (properties `((upstream-name . "api-maker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-easy-logger)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/api-maker#readme")
    (synopsis "Package to make APIs")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/api-maker#readme>")
    (license license:bsd-3)))

haskell-9.0-api-maker

(define-public haskell-9.0-approximate
  (package
    (name "haskell-9.0-approximate")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate/approximate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f168ac9xryrv50k7gvh89xv0mj6c42cxw7pj01pqcbppbs0rm3g"))))
    (properties `((upstream-name . "approximate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("2" "1yak9kv090502q8kqszmrjdp13dd737klppp78983yipd9k2h5gv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-safecopy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-9.0-approximate

(define-public haskell-9.0-async-refresh
  (package
    (name "haskell-9.0-async-refresh")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh/async-refresh-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9llc84f93srw80pyldcglzmssl0l961bzlwsrvbaa84ldhcs6s"))))
    (properties `((upstream-name . "async-refresh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh")
    (synopsis
     "Package implementing core logic for refreshing of expiring data.")
    (description
     "This package can be used for refreshing of expiring data according
to a user-provided action. Using callbacks, the user can decide
how she or he would like to be informed about data refreshing.")
    (license license:bsd-3)))

haskell-9.0-async-refresh

(define-public haskell-9.0-binance-exports
  (package
    (name "haskell-9.0-binance-exports")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytedump)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
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

haskell-9.0-binance-exports

(define-public haskell-9.0-bnb-staking-csvs
  (package
    (name "haskell-9.0-bnb-staking-csvs")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bnb-staking-csvs/bnb-staking-csvs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cvkfj1x0z7bv67ihzf3h8k4r4fpvdfjhiair32k08k52lz2q6h7"))))
    (properties `((upstream-name . "bnb-staking-csvs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-cointracking-imports)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/bnb-staking-csvs#readme")
    (synopsis "Generate CSV Exports of Your BNB Staking Rewards.")
    (description
     "@@bnb-staking-csvs@@ is a CLI program that queries the Binance.org API for
all of a delegator's rewards and exports the resulting data to a CSV file.

You can install @@bnb-staking-csvs@@ with Stack: @@stack install --resolver
nightly bnb-staking-csvs@@. Then run the following to print out your
rewards in CSV format:

@@
bnb-staking-csvs \\<DELEGATOR_PUBKEY>
@@

See @@bnb-staking-csvs --help@@ for additional options.")
    (license license:bsd-3)))

haskell-9.0-bnb-staking-csvs

(define-public haskell-9.0-cabal2nix
  (package
    (name "haskell-9.0-cabal2nix")
    (version "2.18.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11hzic1l7amd2hwqwgfmy2r855z9w0m2rvvx7r52x347q0nn142b"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j682816qdxaqm56bqjigjg0c0nl4jf68fg01f73xhbr486lzvga")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hackage-db)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hopenssl)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hpack)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-language-nix)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-monad-par)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the latest
version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-9.0-cabal2nix

(define-public haskell-9.0-compensated
  (package
    (name "haskell-9.0-compensated")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compensated/compensated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xigi4pcw581d8kjbhdjkksyz9bgcgvq0j17br9z1x6a3hw1m39a"))))
    (properties `((upstream-name . "compensated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0fccjb5q07w1k3pl6x0jrglvbkfycqfjhbd121h3bxg6y5c3fs40")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-safecopy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-9.0-compensated

(define-public haskell-9.0-datasets
  (package
    (name "haskell-9.0-datasets")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/datasets/datasets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ifml0gh7qm9anknqq0r0fi561b8zn7g1sqdlv718pyhx9y7g6i0"))))
    (properties `((upstream-name . "datasets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-streaming-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-streaming-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-streaming-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stringsearch)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-tar)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DataHaskell/dh-core")
    (synopsis "Classical data sets for statistics and machine learning")
    (description
     "Classical machine learning and statistics datasets from
the UCI Machine Learning Repository and other sources.

The @@datasets@@ package defines two different kinds of datasets:

* small data sets which are directly (or indirectly with `file-embed`)
embedded in the package as pure values and do not require network or IO to download
the data set. This includes Iris, Anscombe and OldFaithful.

* other data sets which need to be fetched over the network with
`Numeric.Datasets.getDataset` and are cached in a local temporary directory.

The @@datafiles/@@ directory of this package includes copies of a few famous datasets, such as Titanic, Nightingale and Michelson.

Example :

> import Numeric.Datasets (getDataset)
> import Numeric.Datasets.Iris (iris)
> import Numeric.Datasets.Abalone (abalone)
>
> main = do
>   -- The Iris data set is embedded
>   print (length iris)
>   print (head iris)
>   -- The Abalone dataset is fetched
>   abas <- getDataset abalone
>   print (length abas)
>   print (head abas)")
    (license license:expat)))

haskell-9.0-datasets

(define-public haskell-9.0-deque
  (package
    (name "haskell-9.0-deque")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/deque/deque-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x0rjdqgf4kwgpyisx618waz6r9gki3ivav9m4biysyc04hdhinn"))))
    (properties `((upstream-name . "deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-strict-list)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-9.0-deque

(define-public haskell-9.0-dhall-bash
  (package
    (name "haskell-9.0-dhall-bash")
    (version "1.0.39")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0by0w5dqsi0yrs9qnkpls7n5m0qwslxkcycb4s97vk8xl6nj5kk8"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c01623qx7wxas9g8b4hliybvff0g994jbwrcx14hhb77xr6j14v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-optparse-generic)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-bash")
    (synopsis "Compile Dhall to Bash")
    (description
     "Use this package if you want to compile Dhall expressions to Bash.
You can use this package as a library or an executable:

* See the \"Dhall.Bash\" module if you want to use this package as a library

* Use the @@dhall-to-bash@@ if you want an executable

The \"Dhall.Bash\" module also contains instructions for how to use this
package")
    (license license:bsd-3)))

haskell-9.0-dhall-bash

(define-public haskell-9.0-dhall-json
  (package
    (name "haskell-9.0-dhall-json")
    (version "1.7.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11rl46vn6lzcm9kznpfc43c3a2cbq2si2zba3k2x4j360kvg9fgn"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0f1jb37f5k214dzxbbhw2hij7j7srydkdp0hpkapgs5k73vjvqm4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-aeson-yaml)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-lens-family-core)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-tasty-silver)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-json")
    (synopsis "Convert between Dhall and JSON or YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and JSON
or YAML. You can use this package as a library or an executable:

* See the \"Dhall.JSON\" or \"Dhall.JSONToDhall\" modules if you want to use
this package as a library

* Use the @@dhall-to-json@@, @@dhall-to-yaml@@, or @@json-to-dhall@@ programs from
this package if you want an executable

The \"Dhall.JSON\" and \"Dhall.JSONToDhall\" modules also contains instructions
for how to use this package")
    (license license:bsd-3)))

haskell-9.0-dhall-json

(define-public haskell-9.0-diagrams
  (package
    (name "haskell-9.0-diagrams")
    (version "1.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams/diagrams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y3yij2k2bpvmfxykr2s0hadbcprl1yi6z3pz4yjzqkib5s7y1mq"))))
    (properties `((upstream-name . "diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-f-cairo" "-f-gtk" "-fsvg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-canvas")))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-diagrams-contrib)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-diagrams-core)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-diagrams-svg)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://diagrams.github.io")
    (synopsis
     "Embedded domain-specific language for declarative vector graphics")
    (description
     "Diagrams is a full-featured framework and embedded domain-specific langauge for creating
declarative vector graphics and animations.

This package is just a convenient wrapper
around the @@diagrams-core@@, @@diagrams-lib@@ and
@@diagrams-contrib@@ packages, so they can be
installed with a single @@cabal install diagrams@@
command.

The package also comes with flags to enable six
different backends.
A Haskell-native SVG
backend (the @@diagrams-svg@@ package)
can be selected with @@-fsvg@@. This
flag is enabled by default, so if you do /not/
want the SVG backend, you must explicitly
disable it with @@-f-svg@@.  The SVG backend does not
yet quite support all the features of the cairo
backend: text alignment and embedded images are
the two main missing features at this point, and
of course it can only produce SVG images. It is,
however, much easier to install, so it is the
out-of-the-box default.

There is also a cairo backend (the
@@diagrams-cairo@@ package) which can be selected
with the @@-fcairo@@ flag. It is fully-featured and
can produce PNG, PS, PDF, SVG, or animated
GIF output; however,
due to its dependencies it can be difficult to
install on some platforms (notably OS X).

In addition, there is a GTK backend based on the
cairo backend, for rendering diagrams directly to
GTK windows. You can enable it with the @@-fgtk@@ flag.

The Haskell-native postscript
backend (the @@diagrams-postscript@@ package)
can be selected with the @@-fpostscript@@ flag.  The only
feature it does not support is transparency.

There is a Rasterific backend which is
also Haskell-native (the @@diagrams-rasterific@@
package) which can be selected with the @@-frasterific@@
flag. This is a fully featured backend with the ability
to produce PNG, JPG, TIFF, BMP and animated GIF output.

Finally there is a Canvas backend, also haskell native,
which can be selected with the @@-fcanvas@@ flag. This
backend allows users to write interactive images onto
their web browsers.

For more information, including a gallery of
examples, tutorial, and user manual, see the
diagrams website:
<http://diagrams.github.io>.  For
help, join the @@#diagrams@@ IRC channel on
Freenode or the mailing list:
<http://groups.google.com/group/diagrams-discuss>.")
    (license license:bsd-3)))

haskell-9.0-diagrams

(define-public haskell-9.0-domain-core
  (package
    (name "haskell-9.0-domain-core")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-core/domain-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x21f9nsikcbvf977sm4ckfc2cqfvkkk315kdax66sbd8f2ipgm2"))))
    (properties `((upstream-name . "domain-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-th-lego)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-core")
    (synopsis "Low-level API of \"domain\"")
    (description "Use this package for defining extensions to \\\"domain\\\".
Primarily derivers.")
    (license license:expat)))

haskell-9.0-domain-core

(define-public haskell-9.0-eventful-test-helpers
  (package
    (name "haskell-9.0-eventful-test-helpers")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-test-helpers/eventful-test-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q5z9rf5hxwpsyvm28hfnkr72zfsg7h5kz648bass9irvq69v7x9"))))
    (properties `((upstream-name . "eventful-test-helpers") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-eventful-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Common module used for eventful tests")
    (description "Common module used for eventful tests")
    (license license:expat)))

haskell-9.0-eventful-test-helpers

(define-public haskell-9.0-eventstore
  (package
    (name "haskell-9.0-eventstore")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventstore/eventstore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g11asiwnqkzfvflcz0va28kj8b89h5890c9zsa2as9kzgb7zdmr"))))
    (properties `((upstream-name . "eventstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage021) haskell-9.0-dns)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-dotnet-timespan)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-protobuf)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/EventStore/EventStoreDB-Client-Haskell")
    (synopsis "EventStore TCP Client")
    (description "EventStore TCP Client <https://eventstore.com>")
    (license license:bsd-3)))

haskell-9.0-eventstore

(define-public haskell-9.0-gi-atk
  (package
    (name "haskell-9.0-gi-atk")
    (version "2.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x3qwz8576c1m2y6sxjjzxi0q5x47lbaawipsiaiimk51x4p4div"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-atk

(define-public haskell-9.0-gi-dbusmenu
  (package
    (name "haskell-9.0-gi-dbusmenu")
    (version "0.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenu/gi-dbusmenu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06mzjyn1l97n171c92kvsnhhz2fs1pz48n1bwk1b58wnjdrhhscd"))))
    (properties `((upstream-name . "gi-dbusmenu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Dbusmenu bindings")
    (description "Bindings for libdbusmenu, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-dbusmenu

(define-public haskell-9.0-gi-gio
  (package
    (name "haskell-9.0-gi-gio")
    (version "2.0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "186a8bk2s94awnq4w50w2msdjs08a1mknxb2417qpwzc5yy1f9q3"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-gio

(define-public haskell-9.0-gi-graphene
  (package
    (name "haskell-9.0-gi-graphene")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-graphene/gi-graphene-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0633cf1n4lzrh0v5ksip4y4qizahyi3cv2njsg0bix802c4pd8rs"))))
    (properties `((upstream-name . "gi-graphene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) graphene)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Graphene bindings")
    (description "Bindings for Graphene, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-graphene

(define-public haskell-9.0-gi-harfbuzz
  (package
    (name "haskell-9.0-gi-harfbuzz")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-harfbuzz/gi-harfbuzz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05w123b1w3bjbaj0wq82b51bx4vnfbb6qcsd94svbhxgi705sjfx"))))
    (properties `((upstream-name . "gi-harfbuzz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) harfbuzz-5)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-freetype2)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "HarfBuzz bindings")
    (description "Bindings for HarfBuzz, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-harfbuzz

(define-public haskell-9.0-gi-javascriptcore
  (package
    (name "haskell-9.0-gi-javascriptcore")
    (version "4.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-javascriptcore/gi-javascriptcore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dcg3c9df2gg6vqrv7ai18lnxw6zlwn6qyn2k10p4d4h0dpq9ck8"))))
    (properties `((upstream-name . "gi-javascriptcore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "JavaScriptCore bindings")
    (description "Bindings for JavaScriptCore, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-javascriptcore

(define-public haskell-9.0-handwriting
  (package
    (name "haskell-9.0-handwriting")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/handwriting/handwriting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amysm2ds1prp6przgvqknxr3jn72kidqqh4j4s9pwxj35nl06vy"))))
    (properties `((upstream-name . "handwriting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ismailmustafa/handwriting-haskell#readme")
    (synopsis "API Client for the handwriting.io API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-handwriting

(define-public haskell-9.0-hgeometry-combinatorial
  (package
    (name "haskell-9.0-hgeometry-combinatorial")
    (version "0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hgeometry-combinatorial/hgeometry-combinatorial-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gzhdjnpx6wxm9im8anfcbrkzm1xs4vg3zshjprjfjpnb2i4z0x"))))
    (properties `((upstream-name . "hgeometry-combinatorial") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-data-clist)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-vector-builder)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-circular)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-vinyl)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-witherable)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://fstaals.net/software/hgeometry")
    (synopsis "Data structures, and Data types.")
    (description
     "The Non-geometric data types and algorithms used in HGeometry.")
    (license license:bsd-3)))

haskell-9.0-hgeometry-combinatorial

(define-public haskell-9.0-hledger-stockquotes
  (package
    (name "haskell-9.0-hledger-stockquotes")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-stockquotes/hledger-stockquotes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "064q6qz6rrahk9ri5hr1y6n17nmd4l124xb3l8q5rvm81x3hzp3x"))))
    (properties `((upstream-name . "hledger-stockquotes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1dbcvypi8kcrcy38wbvhaadhs2fwjw1kh3xzzq07ss30a7gg3k8y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
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

haskell-9.0-hledger-stockquotes

(define-public haskell-9.0-hw-rankselect
  (package
    (name "haskell-9.0-hw-rankselect")
    (version "0.13.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect/hw-rankselect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03nf8jwr1qpbfa20y3zlb3z6cxy8ylpdbsy0fvxdjs8q35f7bmx5"))))
    (properties `((upstream-name . "hw-rankselect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "0qivfmg1khicyj068y08avcswyrmvl3z4blcdhjp8mj3ygys7n4i")))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hw-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect#readme")
    (synopsis "Rank-select")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-rankselect

(define-public haskell-9.0-ihaskell-hvega
  (package
    (name "haskell-9.0-ihaskell-hvega")
    (version "0.5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell-hvega/ihaskell-hvega-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12bznrjb3qgy9di9p3faymaba8wsbx7v9gp5zxifnad6aqwlblf8"))))
    (properties `((upstream-name . "ihaskell-hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hvega)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-ihaskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "IHaskell display instance for hvega types.")
    (description "Support Vega-Lite visualizations in IHaskell notebooks.")
    (license license:bsd-3)))

haskell-9.0-ihaskell-hvega

(define-public haskell-9.0-irc-client
  (package
    (name "haskell-9.0-irc-client")
    (version "1.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-client/irc-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hhaf7xhy3q48gkp2j01jjiiz0ww9mwwjh8brbqs8phlal03ks70"))))
    (properties `((upstream-name . "irc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-irc-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-irc-ctcp)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-network-conduit-tls)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/barrucadu/irc-client")
    (synopsis "An IRC client library.")
    (description
     "An IRC client library built atop
<http://hackage.haskell.org/package/irc-conduit irc-conduit>. Why
another IRC client library, you cry? I didn't really find one that
did what I wanted (specifically, handle connecting to servers and
calling event handlers, possibly with TLS), but which didn't
implement almost a full IRC bot for you. That takes out all the fun!

<http://hackage.haskell.org/package/irc-conduit irc-conduit> and
<http://hackage.haskell.org/package/irc-ctcp irc-ctcp> are my
solution to the first part of that, this is my solution to the
latter. It's a simple IRC client library that does the basics for
you, but isn't an all-singing, all-dancing, fully-featured IRC
/application/. It is a merely a simple library.")
    (license license:expat)))

haskell-9.0-irc-client

(define-public haskell-9.0-jsonifier
  (package
    (name "haskell-9.0-jsonifier")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonifier/jsonifier-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wih0m3g2wj06zwl2wbs9y2bfbc593vmh25imy6hki2iq7wwr3l0"))))
    (properties `((upstream-name . "jsonifier") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-numeric-limits)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-ptr-poker)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/jsonifier")
    (synopsis "Fast and simple JSON encoding toolkit")
    (description
     "Minimalistic library for encoding JSON directly to strict bytestring,
which is up to 3x faster than \\\"aeson\\\".

For introduction, benchmark results and demo please skip to Readme.")
    (license license:expat)))

haskell-9.0-jsonifier

(define-public haskell-9.0-krank
  (package
    (name "haskell-9.0-krank")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/krank/krank-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y78njv85s7mcza541gdax5l9651vm78k78ay42phcfvniv82hgx"))))
    (properties `((upstream-name . "krank") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-PyF)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-pretty-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/guibou/krank")
    (synopsis "Krank checks issue tracker link status in your source code")
    (description
     "Krank checks issue tracker link status in your source code. When you implement a workaround because of an upstream issue, you often put a link in comment in your code. Krank will tell you when the issue associated with your workaround is closed, meaning that you may get ride of your workaround.")
    (license license:bsd-3)))

haskell-9.0-krank

(define-public haskell-9.0-massiv-io
  (package
    (name "haskell-9.0-massiv-io")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-Color)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-massiv)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-netpbm)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/massiv-io")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-9.0-massiv-io

(define-public haskell-9.0-mmark-cli
  (package
    (name "haskell-9.0-mmark-cli")
    (version "0.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-cli/mmark-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1an1rc7gdl2209d3agxx1dfl61zsc2wg5nx9cwdf50spmlgs3cr0"))))
    (properties `((upstream-name . "mmark-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "1raxvhsv3b3lni4d2fqf9b1rs7lsqha13baizpg9hv7w0f8zss8m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-mmark)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-mmark-ext)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-stache)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to the MMark markdown processor")
    (description "Command line interface to the MMark markdown processor.")
    (license license:bsd-3)))

haskell-9.0-mmark-cli

(define-public haskell-9.0-monad-logger-json
  (package
    (name "haskell-9.0-monad-logger-json")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-json/monad-logger-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ap98487lwgvgrrxkjskga86ckbv6rhn2n6pzp403343xx51r1qh"))))
    (properties `((upstream-name . "monad-logger-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/fpco/monad-logger-json")
    (synopsis "JSON-friendly Logging APIs")
    (description "Convienence functions for logging ToJSON with monad-logger")
    (license license:expat)))

haskell-9.0-monad-logger-json

(define-public haskell-9.0-monad-logger-logstash
  (package
    (name "haskell-9.0-monad-logger-logstash")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-logstash/monad-logger-logstash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f0376s3xmrd0gqz0laxbqsh3h4g12bk0v885ik648bxwaliq2zf"))))
    (properties `((upstream-name . "monad-logger-logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-logstash)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-retry)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash backend for monad-logger.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.0-monad-logger-logstash

(define-public haskell-9.0-monad-logger-prefix
  (package
    (name "haskell-9.0-monad-logger-prefix")
    (version "0.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-prefix/monad-logger-prefix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00gsp7mhvqvfbdh75lgr73j5adw3hd4cp969h241gaw892z3qvws"))))
    (properties `((upstream-name . "monad-logger-prefix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vrksfi4l7djn8z0kbknidp8g1kcahy938f9dmp27fkydwrjv14i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/monad-logger-prefix#readme")
    (synopsis "Add prefixes to your monad-logger output")
    (description
     "Add prefixes to your monad-logger output. See README for more info.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-monad-logger-prefix

(define-public haskell-9.0-monomer
  (package
    (name "haskell-9.0-monomer")
    (version "1.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/monomer/monomer-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19k31vppid5lyvqg4q4r07yzw9yisydhx012yn1fzlfjwc89g9bp"))))
    (properties `((upstream-name . "monomer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1jz12ww843d0qk7gy6f8fw4l2mpynkcs9knxfc865zyhcjvimfw2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-nanovg)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-sdl2)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-text-show)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)
                  (@ (gnu packages stackage ghc-9.0 stage021) haskell-9.0-wuss)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages gl) glew)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fjvallarino/monomer#readme")
    (synopsis "A GUI library for writing native Haskell applications.")
    (description
     "Monomer is an easy to use, cross platform, GUI library for writing native
Haskell applications.

It provides a framework similar to the Elm Architecture, allowing the creation
of GUIs using an extensible set of widgets with pure Haskell.

Please see the README on Github at <https://github.com/fjvallarino/monomer#readme>")
    (license license:bsd-3)))

haskell-9.0-monomer

(define-public haskell-9.0-pandoc-csv2table
  (package
    (name "haskell-9.0-pandoc-csv2table")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-csv2table/pandoc-csv2table-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14ln4i75cpqpjyzhqx0wvsrggvm6ak8rif514r5qwnckjl97v79l"))))
    (properties `((upstream-name . "pandoc-csv2table") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-csv)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-pandoc)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/baig/pandoc-csv2table-filter")
    (synopsis "Convert CSV to Pandoc Table Markdown")
    (description "A Pandoc filter that replaces image inline or fenced code
blocks with pandoc table markdown. CSV contents will be
parsed by the pandoc markdown reader.")
    (license license:expat)))

haskell-9.0-pandoc-csv2table

(define-public haskell-9.0-pandoc-dhall-decoder
  (package
    (name "haskell-9.0-pandoc-dhall-decoder")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-dhall-decoder/pandoc-dhall-decoder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "032fx8fy134hysg10y5c57c7jkvq8lkc0q2r8ylc54qbfmvqd820"))))
    (properties `((upstream-name . "pandoc-dhall-decoder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-dhall-decoder")
    (synopsis "Decodes pandoc to dhall.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-pandoc-dhall-decoder

(define-public haskell-9.0-pandoc-plot
  (package
    (name "haskell-9.0-pandoc-plot")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-plot/pandoc-plot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g9757kj50s0fjn7l29ncbp5fb8yhnp5z0sd46gaaprbgqrqfsgh"))))
    (properties `((upstream-name . "pandoc-plot") (hidden? . #f)))
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
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-pandoc)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LaurentRDC/pandoc-plot#readme")
    (synopsis
     "A Pandoc filter to include figures generated from code blocks using your plotting toolkit of choice.")
    (description
     "A Pandoc filter to include figures generated from code blocks.
Keep the document and code in the same location. Output is
captured and included as a figure.")
    (license license:gpl2+)))

haskell-9.0-pandoc-plot

(define-public haskell-9.0-pandoc-throw
  (package
    (name "haskell-9.0-pandoc-throw")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-throw/pandoc-throw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i737mv2sgm65c53ggrxnscga92fya5khb5nhgbg1nnqgy2sjkm8"))))
    (properties `((upstream-name . "pandoc-throw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-throw")
    (synopsis "MonadThrow behaviour for Pandoc.")
    (description "Adds MonadThrow runners for PandocPure and PandocIO.")
    (license license:expat)))

haskell-9.0-pandoc-throw

(define-public haskell-9.0-path-dhall-instance
  (package
    (name "haskell-9.0-path-dhall-instance")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-dhall-instance/path-dhall-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17igz9936lfivph9rr04075sp7ik5k8byljw2vj0zx8lnznjwn6a"))))
    (properties `((upstream-name . "path-dhall-instance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/path-dhall-instance")
    (synopsis "ToDhall and FromDhall instances for Path.")
    (description "ToDhall and FromDhall instances for Path.")
    (license license:expat)))

haskell-9.0-path-dhall-instance

(define-public haskell-9.0-persistent
  (package
    (name "haskell-9.0-persistent")
    (version "2.13.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent/persistent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z69yvk0rd29dp5qdhi4p587b891y90azrzzpa3g10cxp3gyywvm"))))
    (properties `((upstream-name . "persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0kyipwaspzah6f88s51d61kr8i9g05grm2g0lnnw28jp06nggg5d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-lift-type)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, multi-backend data serialization.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.0-persistent

(define-public haskell-9.0-pipes-mongodb
  (package
    (name "haskell-9.0-pipes-mongodb")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-mongodb/pipes-mongodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h4334fajrza7r8jrr78nqhs522kxnbzdj0gnbp7ndvzvx5ij888"))))
    (properties `((upstream-name . "pipes-mongodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-mongoDB)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jb55/pipes-mongodb")
    (synopsis "Stream results from MongoDB")
    (description "Stream results from MongoDB")
    (license license:expat)))

haskell-9.0-pipes-mongodb

(define-public haskell-9.0-postgresql-binary
  (package
    (name "haskell-9.0-postgresql-binary")
    (version "0.12.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fnc97mw4c0aipbqih8jz23ma8xrspgw7r56qq3vzl4k2p9z49vj"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-binary-parser)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-network-ip)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-binary ")
    (synopsis "Encoders and decoders for the PostgreSQL's binary format")
    (description "An API for dealing with PostgreSQL's binary data format.

It can be used to implement performant bindings to Postgres.
E.g., <http://hackage.haskell.org/package/hasql hasql>
is based on this library.

It supports all Postgres versions starting from 8.3
and is tested against 8.3, 9.3 and 9.5
with the @@integer_datetimes@@ setting off and on.")
    (license license:expat)))

haskell-9.0-postgresql-binary

(define-public haskell-9.0-postgresql-query
  (package
    (name "haskell-9.0-postgresql-query")
    (version "3.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-query/postgresql-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1520crprhdnan7w5qm9h42r6cxz4v6zffwwfvybzwpczj2g3laa6"))))
    (properties `((upstream-name . "postgresql-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hreader)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-hset)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-inflections)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/s9gf4ult/postgresql-query")
    (synopsis "Sql interpolating quasiquote plus some kind of primitive ORM
using it")
    (description "")
    (license license:bsd-3)))

haskell-9.0-postgresql-query

(define-public haskell-9.0-primitive-extras
  (package
    (name "haskell-9.0-primitive-extras")
    (version "0.10.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-extras/primitive-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xmigva8lss9h18q0a63mc9sridny40nyzkizr2vmgm5d9qniqjs"))))
    (properties `((upstream-name . "primitive-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-deferred-folds)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-focus)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-list-t)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/primitive-extras")
    (synopsis "Extras for the \"primitive\" library")
    (description "")
    (license license:expat)))

haskell-9.0-primitive-extras

(define-public haskell-9.0-ratel-wai
  (package
    (name "haskell-9.0-ratel-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-ratel)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel-wai")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-9.0-ratel-wai

(define-public haskell-9.0-reddit-scrape
  (package
    (name "haskell-9.0-reddit-scrape")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-scalpel)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/reddit-scrape")
    (synopsis "Library for getting links from a sub-reddit")
    (description "")
    (license license:bsd-2)))

haskell-9.0-reddit-scrape

(define-public haskell-9.0-redis-io
  (package
    (name "haskell-9.0-redis-io")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/redis-io/redis-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q2gr8sbxxpfx2qn9qmyxiwjj4nx32zmx4lv7g2vfmkj329crrdd"))))
    (properties `((upstream-name . "redis-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-redis-resp)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-tinylog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/redis-io/")
    (synopsis "Yet another redis client.")
    (description "Yet another redis client.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-redis-io

(define-public haskell-9.0-req-conduit
  (package
    (name "haskell-9.0-req-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-9.0-req-conduit

(define-public haskell-9.0-rio-orphans
  (package
    (name "haskell-9.0-rio-orphans")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-orphans/rio-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vwc7ar9kiagvs5bywkh8x17kd02ra3zhd1mmsdwnl1p96bcshrw"))))
    (properties `((upstream-name . "rio-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "Orphan instances for the RIO type in the rio package")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>")
    (license license:expat)))

haskell-9.0-rio-orphans

(define-public haskell-9.0-sandwich
  (package
    (name "haskell-9.0-sandwich")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich/sandwich-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1flac21bgxq07xq5ax9ga7xm1bg2bwld88msbginqxycx21dvcdq"))))
    (properties `((upstream-name . "sandwich") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-brick)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-string-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Yet another test framework for Haskell")
    (description
     "Please see the <https://codedownio.github.io/sandwich documentation>.")
    (license license:bsd-3)))

haskell-9.0-sandwich

(define-public haskell-9.0-slack-progressbar
  (package
    (name "haskell-9.0-slack-progressbar")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-progressbar/slack-progressbar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12iy8d0mvk0gcs65pb797qm9kx7d9wpa5gdkg4mvb4r13vqb5x9d"))))
    (properties `((upstream-name . "slack-progressbar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/slack-progressbar#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/codedownio/slack-progressbar#readme>")
    (license license:expat)))

haskell-9.0-slack-progressbar

(define-public haskell-9.0-solana-staking-csvs
  (package
    (name "haskell-9.0-solana-staking-csvs")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/solana-staking-csvs/solana-staking-csvs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03y8p5yf0gqv0lrmijqz0p302cf1qxhc6wyxzmfbgxvy22gfs3a1"))))
    (properties `((upstream-name . "solana-staking-csvs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-cointracking-imports)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/solana-staking-csvs#readme")
    (synopsis "Generate CSV Exports of your Solana Staking Rewards.")
    (description
     "@@solana-staking-csvs@@ is a CLI program that queries the Solana blockchain
for an account's staking accounts and exports all their staking rewards to
a CSV file.

The <https://solanabeach.io/ Solana Beach API> is used to fetch data from
the blockchain and you will need a
<https://github.com/solana-beach/api free API key> to use this program.

You can install @@solana-staking-csvs@@ with Stack: @@stack install --resolver
nightly solana-staking-csvs@@. Then run the following to print out an
account's rewards in CSV format:

@@
solana-staking-csvs \\<API_KEY> \\<ACCOUNT_PUBKEY>
@@

See @@solana-staking-csvs --help@@ for additional options.")
    (license license:bsd-3)))

haskell-9.0-solana-staking-csvs

(define-public haskell-9.0-sqlcli
  (package
    (name "haskell-9.0-sqlcli")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sqlcli/sqlcli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kscw8l14cx7q55vq72vg8ydfz19s41prdlbg9b11fhzv691iwgd"))))
    (properties `((upstream-name . "sqlcli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fodbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-logging)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "http://hub.darcs.net/mihaigiurgeanu/sqlcli")
    (synopsis "Bindings for SQL/CLI (ODBC) C API.")
    (description
     "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)
for the ChangeLog.
Provides bindings to all the SQL/CLI C API standard.
SQL/CLI C API is a subset of ODBC. You can use this package to
access databases through ODBC. It is tested on Windows, Linux
and Mac operating Systems whith Postgres, Oracle and SQLite.
This package also contains Haskell wrapers to the foreign C calls and
utilities to make using the SQL/CLI easier for the Haskell
programmer.
You can use this to acces any database through ODBC.")
    (license license:bsd-3)))

haskell-9.0-sqlcli

(define-public haskell-9.0-srt-dhall
  (package
    (name "haskell-9.0-srt-dhall")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/srt-dhall/srt-dhall-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16ygxiqb9d0js3gr4823fdkk8pzsairby6iywnvsafas1qvhm0yp"))))
    (properties `((upstream-name . "srt-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y1x65mmhsa78svk19nwf7211fny9c4w3gf9d31d10j9bglyly8f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-media-timestamp)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-media-timestamp-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-srt)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-srt-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-srt-formatting)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/srt-dhall")
    (synopsis "Dhall Encoder/Decoder for SRT.")
    (description "Dhall Encoder/Decoder for SRT.")
    (license license:expat)))

haskell-9.0-srt-dhall

(define-public haskell-9.0-stripe-wreq
  (package
    (name "haskell-9.0-stripe-wreq")
    (version "1.0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-wreq/stripe-wreq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01z0hqqnnc2g8q0bzj4brjmd9wmpjda4rlk770brvk9ip9mjdlys"))))
    (properties `((upstream-name . "stripe-wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ijsspbd5in2jv1kcz78y0xxi09px60n51snfx9b49dsjnh2yniv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stripe-concepts)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Use the Stripe API via Wreq")
    (description "This package helps you make requests to the
<https://stripe.com/ Stripe> API in conjunction with
the <https://hackage.haskell.org/package/wreq wreq> package.
This is a minimal library that makes no attempt obscure
either its underpinnings in Wreq or any of the details of the
Stripe API. Responses are returned as
<https://hackage.haskell.org/package/aeson aeson> values.")
    (license license:expat)))

haskell-9.0-stripe-wreq

(define-public haskell-9.0-subcategories
  (package
    (name "haskell-9.0-subcategories")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/subcategories/subcategories-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qxiccv9xpl6ms8j9lfvl8jps9gr979ya441fghy1jvfza0fxd1x"))))
    (properties `((upstream-name . "subcategories") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-vector-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/subcategories#readme")
    (synopsis "Subcategories induced by class constraints")
    (description
     "Please see the README on GitHub at <https://github.com/konn/subcategories#readme>")
    (license license:bsd-3)))

haskell-9.0-subcategories

(define-public haskell-9.0-text-builder-dev
  (package
    (name "haskell-9.0-text-builder-dev")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder-dev/text-builder-dev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jrzs4dcm2zq5gsn4lbmrasrsk31rs0z6n3vgs514x7p3fdv6lpj"))))
    (properties `((upstream-name . "text-builder-dev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-deferred-folds)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-tostring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder-dev")
    (synopsis "Edge of developments for \"text-builder\"")
    (description "This is a development version of \\\"text-builder\\\".
All experimentation and feature development happens here.
The API can change drastically.
For a more stable API use \\\"text-builder\\\",
which is now just a wrapper over this package.")
    (license license:expat)))

haskell-9.0-text-builder-dev

(define-public haskell-9.0-variable-media-field-dhall
  (package
    (name "haskell-9.0-variable-media-field-dhall")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/variable-media-field-dhall/variable-media-field-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h2gm5h86n7bm5gf9rbc0zlkkhrkyavygvrkz251r9l57qw48qax"))))
    (properties `((upstream-name . "variable-media-field-dhall")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-variable-media-field)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://hackage.haskell.org/package/variable-media-field-dhall")
    (synopsis "Dhall instances for VF")
    (description "Dhall instances for VF")
    (license license:expat)))

haskell-9.0-variable-media-field-dhall

(define-public haskell-9.0-verbosity
  (package
    (name "haskell-9.0-verbosity")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/verbosity/verbosity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h2vgy3ai3rxh76zi68yi5n5qmj0kyjm0sjg2m1gf9nr4z47afjx"))))
    (properties `((upstream-name . "verbosity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fbinary" "-fdeepseq" "-f-cereal" "-f-safecopy" "-f-lattices" "-fdhall" "-fserialise")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-9.0-verbosity

(define-public haskell-9.0-wai-extra
  (package
    (name "haskell-9.0-wai-extra")
    (version "3.1.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-extra/wai-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ya4m0c2p3wxzjlmk3yasc3pm61z309hzry9d39lj5wqv93a4wn6"))))
    (properties `((upstream-name . "wai-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")
       #:cabal-revision
       ("2" "139iqd6fqqj9xlpnbgva8y3wvakp2lyndk4bkvq46pq2xir4gqkf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-http2)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-wai-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provides some basic WAI handlers and middleware.")
    (description
     "Provides basic WAI handler and middleware functionality:

* WAI Testing Framework

Hspec testing facilities and helpers for WAI.

* Event Source/Event Stream

Send server events to the client. Compatible with the JavaScript
EventSource API.

* Accept Override

Override the Accept header in a request. Special handling for the
_accept query parameter (which is used throughout WAI override the
Accept header).

* Add Headers

WAI Middleware for adding arbitrary headers to an HTTP request.

* Clean Path

Clean a request path to a canonical form.

* GZip Compression

Negotiate HTTP payload gzip compression.

* Health check endpoint

Add an empty health check endpoint.

* HTTP Basic Authentication

WAI Basic Authentication Middleware which uses Authorization header.

* JSONP

\\\"JSON with Padding\\\" middleware. Automatic wrapping of JSON
responses to convert into JSONP.

* Method Override / Post

Allows overriding of the HTTP request method via the _method query string
parameter.

* Request Logging

Request logging middleware for development and production environments

* Request Rewrite

Rewrite request path info based on a custom conversion rules.

* Select

Dynamically choose between Middlewares.

* Stream Files

Convert ResponseFile type responses into ResponseStream type.

* Virtual Host

Redirect incoming requests to a new host based on custom rules.


API docs and the README are available at <http://www.stackage.org/package/wai-extra>.")
    (license license:expat)))

haskell-9.0-wai-extra

(define-public haskell-9.0-warp
  (package
    (name "haskell-9.0-warp")
    (version "3.3.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/warp/warp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vrzsj1spa5ygplqpkl4nflqxqbvy641dsjij64ix3n6rzhgqxcg"))))
    (properties `((upstream-name . "warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-network-bytestring" "-fallow-sendfilefd" "-f-warp-debug" "-fx509")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages curl) curl)))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bsb-http-chunked)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-date)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-http2)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-simple-sendfile)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-time-manager)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "A fast, light-weight web server for WAI applications.")
    (description "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.
For HTTP\\/2,  Warp supports direct and ALPN (in TLS)
but not upgrade.
API docs and the README are available at
<http://www.stackage.org/package/warp>.")
    (license license:expat)))

haskell-9.0-warp

(define-public haskell-9.0-wreq-stringless
  (package
    (name "haskell-9.0-wreq-stringless")
    (version "0.5.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wreq-stringless/wreq-stringless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjjybbc4nza1a0af2j8jxscyhlcwdspmvy8zsmcczzcdhx2b2h"))))
    (properties `((upstream-name . "wreq-stringless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/j-keck/wreq-stringless#readme")
    (synopsis "Simple wrapper to use wreq without Strings")
    (description
     "This library wraps all functions from @@Network.Wreq@@ which expects a 'String'
and replaces the 'String' Type with the \"Network.Wreq.StringLess.StringLike\" Type-Class.

Instances for \"Network.Wreq.StringLess.StringLike\" are given for:

* \"Data.Text\"

* \"Data.Text.Lazy\"

* \"Data.ByteString.UTF8\"

* \"Data.ByteString.Lazy.UTF8\"

So you can use any of this types instead of 'String'.

To use this library, replace your the @@wreq@@ dependency from your @@cabal@@
file with @@wreq-stringless@@ and import \"Network.Wreq.StringLess\" instead
of @@Network.Wreq@@.

The '0.5.9.x' version of this library wraps the '0.5.x.x' version of @@wreq@@.

see <https://github.com/j-keck/wreq-stringless/tree/master/examples> for examples.")
    (license license:expat)))

haskell-9.0-wreq-stringless

