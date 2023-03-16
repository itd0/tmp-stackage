;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage020)
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
(define-public haskell-9.2-Chart-diagrams
  (package
    (name "haskell-9.2-Chart-diagrams")
    (version "1.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Chart-diagrams/Chart-diagrams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rkkmyfszzpnbw1s6lqg2fadkbvgqrxrp1rvj9v45ihzwnpbg758"))))
    (properties `((upstream-name . "Chart-diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-Chart)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-SVGFonts)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-diagrams-postscript)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-diagrams-svg)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-svg-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "Diagrams backend for Charts.")
    (description "Diagrams backend for Charts.")
    (license license:bsd-3)))

haskell-9.2-Chart-diagrams

(define-public haskell-9.2-binance-exports
  (package
    (name "haskell-9.2-binance-exports")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytedump)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
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

haskell-9.2-binance-exports

(define-public haskell-9.2-bnb-staking-csvs
  (package
    (name "haskell-9.2-bnb-staking-csvs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-cointracking-imports)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xml) expat)
                             (@ (gnu packages xorg) libpthread-stubs)
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

haskell-9.2-bnb-staking-csvs

(define-public haskell-9.2-butcher
  (package
    (name "haskell-9.2-butcher")
    (version "1.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butcher/butcher-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06qgqjc8h7dd786wkcwrxpl6bsd66jzywwcnhm52q0cb9678w3qx"))))
    (properties `((upstream-name . "butcher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c9rhsnzdpnxhs3l7yq6fh8p9lq177fmdn23khcl72n5m6xx64wm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-deque)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-multistate)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unsafe)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-9.2-butcher

(define-public haskell-9.2-cql-io
  (package
    (name "haskell-9.2-cql-io")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-cql)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-cql-io

(define-public haskell-9.2-datadog
  (package
    (name "haskell-9.2-datadog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-buffer-builder)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description "")
    (license license:expat)))

haskell-9.2-datadog

(define-public haskell-9.2-datasets
  (package
    (name "haskell-9.2-datasets")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-streaming-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-streaming-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-streaming-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stringsearch)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
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

haskell-9.2-datasets

(define-public haskell-9.2-diagrams
  (package
    (name "haskell-9.2-diagrams")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-diagrams-contrib)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-diagrams-svg)))
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

haskell-9.2-diagrams

(define-public haskell-9.2-dns
  (package
    (name "haskell-9.2-dns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-9.2-dns

(define-public haskell-9.2-domain-optics
  (package
    (name "haskell-9.2-domain-optics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-domain-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-th-lego)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-optics")
    (synopsis "Integration of domain with optics")
    (description "")
    (license license:expat)))

haskell-9.2-domain-optics

(define-public haskell-9.2-easy-logger
  (package
    (name "haskell-9.2-easy-logger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unix-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/schnecki/easy-logger#readme")
    (synopsis "Logging made easy.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/easy-logger#readme>")
    (license license:bsd-3)))

haskell-9.2-easy-logger

(define-public haskell-9.2-elm2nix
  (package
    (name "haskell-9.2-elm2nix")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-here)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/domenkozar/elm2nix#readme")
    (synopsis "Turn your Elm project into buildable Nix project")
    (description
     "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>")
    (license license:bsd-3)))

haskell-9.2-elm2nix

(define-public haskell-9.2-fast-logger
  (package
    (name "haskell-9.2-fast-logger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-easy-file)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unix-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system for Haskell")
    (license license:bsd-3)))

haskell-9.2-fast-logger

(define-public haskell-9.2-gemini-exports
  (package
    (name "haskell-9.2-gemini-exports")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base64)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
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

haskell-9.2-gemini-exports

(define-public haskell-9.2-genvalidity-appendful
  (package
    (name "haskell-9.2-genvalidity-appendful")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-appendful/genvalidity-appendful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "081a9m99mr1mvq9bysn3g0fq05f6zayb4401v6709jcw7szxfbwn"))))
    (properties `((upstream-name . "genvalidity-appendful") (hidden? . #f)))
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
                     haskell-9.2-appendful)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-genvalidity-sydtest-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/appendful#readme")
    (synopsis "")
    (description "Generators for ppend-only cooperative agreement")
    (license license:expat)))

haskell-9.2-genvalidity-appendful

(define-public haskell-9.2-gi-gdkpixbuf
  (package
    (name "haskell-9.2-gi-gdkpixbuf")
    (version "2.0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkpixbuf/gi-gdkpixbuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16j3pilr5ffcgxp598svdsbjsgh3ds9a24frkp4ph2g2sjmzdcrk"))))
    (properties `((upstream-name . "gi-gdkpixbuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gmodule)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gdkpixbuf

(define-public haskell-9.2-gi-pango
  (package
    (name "haskell-9.2-gi-pango")
    (version "1.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00v6kn1k9rzlncl867xwbis1jqy5vc12gkmbsij4hxfjr9h0h1cq"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-harfbuzz)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-pango

(define-public haskell-9.2-hgeometry
  (package
    (name "haskell-9.2-hgeometry")
    (version "0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hgeometry/hgeometry-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bqn0qmi4r23wn2bmz4nnxp7cainsvi0zfxh71swn3a6labapkwk"))))
    (properties `((upstream-name . "hgeometry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-data-clist)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-fixed-vector)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hgeometry-combinatorial)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-vector-builder)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-vector-circular)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-witherable)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://fstaals.net/software/hgeometry")
    (synopsis "Geometric Algorithms, Data structures, and Data types.")
    (description
     "HGeometry provides some basic geometry types, and geometric algorithms and
data structures for them. The main two focusses are: (1) Strong type safety,
and (2) implementations of geometric algorithms and data structures with good
asymptotic running time guarantees. Note that HGeometry is still highly experimental, don't be surprised to find bugs.")
    (license license:bsd-3)))

haskell-9.2-hgeometry

(define-public haskell-9.2-hledger-stockquotes
  (package
    (name "haskell-9.2-hledger-stockquotes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hledger-lib)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
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

haskell-9.2-hledger-stockquotes

(define-public haskell-9.2-hw-ip
  (package
    (name "haskell-9.2-hw-ip")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-appar)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-ip#readme")
    (synopsis "Library for manipulating IP addresses and CIDR blocks")
    (description
     "Library for manipulating IP addresses and CIDR blocks. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-ip

(define-public haskell-9.2-hw-packed-vector
  (package
    (name "haskell-9.2-hw-packed-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-packed-vector#readme")
    (synopsis "Packed Vector")
    (description "Packed Vector. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-packed-vector

(define-public haskell-9.2-hw-rankselect-base
  (package
    (name "haskell-9.2-hw-rankselect-base")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-bits-extra)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-bitvec)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-int)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-rankselect-base

(define-public haskell-9.2-hw-streams
  (package
    (name "haskell-9.2-hw-streams")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-streams/hw-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hzpx1j06h98y0zcmysklzn3s3mvpbb1nkwg4zkbdxvzzqs5hnm5"))))
    (properties `((upstream-name . "hw-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("5" "0a34xli9sdvqzc571k72hl3a2jhbhxs24y03k6pdzzz3akznhbn0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-streams#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-9.2-hw-streams

(define-public haskell-9.2-katip
  (package
    (name "haskell-9.2-katip")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hostname)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conv)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/katip")
    (synopsis "A structured logging framework.")
    (description
     "Katip is a structured logging framework. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.2-katip

(define-public haskell-9.2-midi-music-box
  (package
    (name "haskell-9.2-midi-music-box")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/midi-music-box/midi-music-box-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rnjwis6y0lnyfjxnxqk3zsh78ylccq5v21avb97vybmj0pld1l9"))))
    (properties `((upstream-name . "midi-music-box") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1w595kidg493vnv871ga2xsh94g2f80yxn4k5mlrm0jip45xxi7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-diagrams-postscript)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-event-list)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-midi)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hub.darcs.net/thielema/midi-music-box")
    (synopsis "Convert MIDI file to music box punch tape")
    (description
     "Convert MIDI file to music box punch tape for this kind of music box:
<http://www.amazon.de/Spieluhr-Lochstreifen/dp/B001WNZOVO/>

Run it like so:

> midi-music-box --output=song.ps song.mid

@@song.mid@@ is the input file that must be a MIDI file.
@@song.ps@@ is the output file, a PostScript file.
You can print it with a printer or to a PDF document
or convert it to many other formats.
Currently, the output file must always have the @@.ps@@ filename extension.
Other formats could be supported by adding more of the @@diagrams-*@@ packages.
However, this means you have to alter the program.

The program will print the following symbols to the stripe:

* blue dot - correct note that should be punched

* # - this is a semitone and cannot be played accurately
(at least on the type of music box I refered to, above)

* ! - the note is outside the range

In case of notes outside the stripe you have to adapt the offset.
You may write

> midi-music-box --zerokey=72 --output=song.ps song.mid

in order to make the MIDI note with number 72
the left-most note on the stripe.
Default is @@--zerokey=60@@.
The number of notes in an octave is 12.
If you use a zerokey that is a multiple of 12
then white (piano) keys remain white, and black keys remain black,
so to speak.
If zerokey is not a multiple of 12
then white keys may become black an vice versa.
Since the music box type considered here only supports white keys,
I recommend the following:
If the song is in key X major then lookup the MIDI note number for X
and choose X plus or minus a multiple of 12 as zerokey.
If the song has key Y minor, then X=Y+3.

You find executables for MS Windows in two ZIP archives there:

* <http://code.henning-thielemann.de/midi-music-box/midi-music-box.zip>

* <http://code.henning-thielemann.de/midi-music-box/midi-music-box-dll.zip>")
    (license license:bsd-3)))

haskell-9.2-midi-music-box

(define-public haskell-9.2-mmark-cli
  (package
    (name "haskell-9.2-mmark-cli")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-mmark)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-mmark-ext)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-stache)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to the MMark markdown processor")
    (description "Command line interface to the MMark markdown processor.")
    (license license:bsd-3)))

haskell-9.2-mmark-cli

(define-public haskell-9.2-morpheus-graphql-client
  (package
    (name "haskell-9.2-morpheus-graphql-client")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-client/morpheus-graphql-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "120414v0rcvzgm9dc2fx8598d88dqnpvhkc8zh3y2gl3b1bl31jb"))))
    (properties `((upstream-name . "morpheus-graphql-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-modern-uri)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-morpheus-graphql-code-gen-utils)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-morpheus-graphql-subscriptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Client")
    (description "Build GraphQL APIs with your favorite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql-client

(define-public haskell-9.2-one-liner-instances
  (package
    (name "haskell-9.2-one-liner-instances")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner-instances/one-liner-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qkvbrxgnr51a0hdd2ap6fndipgfplsdy4lh841h8hda5d4dhabg"))))
    (properties `((upstream-name . "one-liner-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-one-liner)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/one-liner-instances#readme")
    (synopsis "Generics-based implementations for common typeclasses")
    (description
     "Provides generics-based implementations for common typeclasses using
Generics.

Please see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>")
    (license license:bsd-3)))

haskell-9.2-one-liner-instances

(define-public haskell-9.2-opentelemetry-extra
  (package
    (name "haskell-9.2-opentelemetry-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ghc-events)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hvega)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-jsonifier)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-opentelemetry)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-text-show)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-extra")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.2-opentelemetry-extra

(define-public haskell-9.2-registry-aeson
  (package
    (name "haskell-9.2-registry-aeson")
    (version "0.2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry-aeson/registry-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03wh6sl921hsqk32749y4gklpfjxjbhyw0dwk0zw6ja28jzpny7g"))))
    (properties `((upstream-name . "registry-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-registry)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-registry-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/registry-aeson")
    (synopsis "Aeson encoders / decoders")
    (description
     "This library provides encoders / decoders which can be easily customized for the Aeson format.")
    (license license:expat)))

haskell-9.2-registry-aeson

(define-public haskell-9.2-registry-hedgehog-aeson
  (package
    (name "haskell-9.2-registry-hedgehog-aeson")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry-hedgehog-aeson/registry-hedgehog-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rizwqyj6cmkbmvcir9spnxrpbx22gxiqdd6qlqxc9bdnvgk29i9"))))
    (properties `((upstream-name . "registry-hedgehog-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-registry)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-registry-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-universum)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/registry-hedgehog-aeson")
    (synopsis "Hedgehog generators for Aeson")
    (description
     "This library provides generators for Aeson values which can be easily customized.")
    (license license:expat)))

haskell-9.2-registry-hedgehog-aeson

(define-public haskell-9.2-registry-options
  (package
    (name "haskell-9.2-registry-options")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry-options/registry-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08sfywzq50w0psb9vgphyyqd2vi8irdj9xiqxpd613dpwh9gj1d7"))))
    (properties `((upstream-name . "registry-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-HsYAML)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-boxes)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-registry)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-registry-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/registry-options")
    (synopsis "application options parsing")
    (description
     "This library provides various parsers for assembling application options")
    (license license:expat)))

haskell-9.2-registry-options

(define-public haskell-9.2-req-conduit
  (package
    (name "haskell-9.2-req-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-9.2-req-conduit

(define-public haskell-9.2-rss-conduit
  (package
    (name "haskell-9.2-rss-conduit")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rss-conduit/rss-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07fmf5d93ywgqz4fp0aw5n1vzqlphrhcmiqrc0xpcphi17ig9m7l"))))
    (properties `((upstream-name . "rss-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-atom-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-dublincore-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-timerep)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rss-conduit")
    (synopsis "Streaming parser/renderer for the RSS standard.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "CC0_1_0" ""))))

haskell-9.2-rss-conduit

(define-public haskell-9.2-sized
  (package
    (name "haskell-9.2-sized")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-subcategories)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-type-natural)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sized")
    (synopsis "Sized sequence data-types")
    (description
     "A wrapper to make length-parametrized data-type from functorial data-types.")
    (license license:bsd-3)))

haskell-9.2-sized

(define-public haskell-9.2-skews
  (package
    (name "haskell-9.2-skews")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-deque)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-9.2-skews

(define-public haskell-9.2-solana-staking-csvs
  (package
    (name "haskell-9.2-solana-staking-csvs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-cointracking-imports)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xml) expat)
                             (@ (gnu packages xorg) libpthread-stubs)
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

haskell-9.2-solana-staking-csvs

(define-public haskell-9.2-stm-hamt
  (package
    (name "haskell-9.2-stm-hamt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-focus)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-list-t)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-primitive-extras)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-stm-hamt

(define-public haskell-9.2-sydtest-amqp
  (package
    (name "haskell-9.2-sydtest-amqp")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-amqp/sydtest-amqp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "122n2nf0z2s925yjg6zlp3bvl70yprip57v6775vqglhbr959v8m"))))
    (properties `((upstream-name . "sydtest-amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-amqp)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-port-utils)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-sydtest-rabbitmq)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An amqp companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-amqp

(define-public haskell-9.2-text-builder
  (package
    (name "haskell-9.2-text-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-text-builder-dev)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-9.2-text-builder

(define-public haskell-9.2-time-manager
  (package
    (name "haskell-9.2-time-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Scalable timer")
    (description "Scalable timer functions provided by a timer manager.")
    (license license:expat)))

haskell-9.2-time-manager

(define-public haskell-9.2-tls-session-manager
  (package
    (name "haskell-9.2-tls-session-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-9.2-tls-session-manager

(define-public haskell-9.2-tmp-postgres
  (package
    (name "haskell-9.2-tmp-postgres")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-generic-monoid)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-port-utils)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-postgres-options)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/tmp-postgres#readme")
    (synopsis "Start and stop a temporary postgres")
    (description "Start and stop a temporary postgres. See README.md")
    (license license:bsd-3)))

haskell-9.2-tmp-postgres

(define-public haskell-9.2-yaml-unscrambler
  (package
    (name "haskell-9.2-yaml-unscrambler")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage018) haskell-9.2-acc)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-libyaml)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-selective)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-text-builder-dev)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/yaml-unscrambler")
    (synopsis "Flexible declarative YAML parsing toolkit")
    (description "")
    (license license:expat)))

haskell-9.2-yaml-unscrambler

