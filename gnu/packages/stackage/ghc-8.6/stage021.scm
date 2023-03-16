;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage021)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.6))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.6-Allure
  (package
    (name "haskell-8.6-Allure")
    (version "0.9.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cl1r3rcbkj8q290l3q5xva7lkh444s49xz8bm8sbgrk0q3zx041"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupportnodejs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-LambdaHack)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-enummapset)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ghc-compact)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage, where you can also
try the game out in the browser:
<http://allureofthestars.com/play>.
(It runs fastest on Chrome. Keyboard commands and savefiles
are supported only on recent enough versions of browsers.
Mouse should work everywhere.)

Not a single picture in this game. You have to imagine everything
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

This is a workaround .cabal file, flattened to eliminated
internal libraries until generating haddocks for them
is fixed. The original .cabal file is stored in the github repo.")
    (license license:agpl3+)))

haskell-8.6-Allure

(define-public haskell-8.6-Chart-diagrams
  (package
    (name "haskell-8.6-Chart-diagrams")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Chart-diagrams/Chart-diagrams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "075yzq50jpakgq6lb3anr660jydm68ry0di33icdacbdymq8avwn"))))
    (properties `((upstream-name . "Chart-diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "048hlb1517q9qf8pkbi6479qghpn2n9krq6h2ci0z81v1p7mcv9y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-Chart)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-SVGFonts)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-postscript)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-svg)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-operational)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-svg-builder)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "Diagrams backend for Charts.")
    (description "Diagrams backend for Charts.")
    (license license:bsd-3)))

haskell-8.6-Chart-diagrams

(define-public haskell-8.6-DAV
  (package
    (name "haskell-8.6-DAV")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DAV/DAV-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1isvi4fahq70lzxfz23as7qzkc01g7kba568l6flrgd0j1984fsy"))))
    (properties `((upstream-name . "DAV") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mtl-compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hDAV")
    (synopsis "RFC 4918 WebDAV support")
    (description
     "This is a library for the Web Distributed Authoring and Versioning
(WebDAV) extensions to HTTP.  At present it supports a very small
subset of client functionality.

In addition, there is an executable, hdav, which can be used for
command-line operation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-DAV

(define-public haskell-8.6-bitx-bitcoin
  (package
    (name "haskell-8.6-bitx-bitcoin")
    (version "0.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitx-bitcoin/bitx-bitcoin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wf86pkpm5vlcv5cci2sn6by0ajmq44b3azxc41zivqdpf5kkwii"))))
    (properties `((upstream-name . "bitx-bitcoin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tebello-thejane/bitx.hs")
    (synopsis "A Haskell library for working with the BitX bitcoin exchange.")
    (description
     "Haskell bindings to the Luno (formerly BitX) REST API, as described here:
<https://www.luno.com/en/api>.

Note that since this library interfaces directly with a financial API, great care
must be taken in its use. In particular, the author cannot be held accountable for any
financial losses as a result of programming error, whether that error is in your code,
the code of the author of this library, or Luno's code. This is just common sense.

If you need to make sure that nothing funny happens in the code, apart from reading
the source yourself, you should also perform a few test transactions with very small
denominations, as I will strive to do every time before releasing a new version.

For a very small usage example, see \"Network.Bitcoin.BitX.Public\".")
    (license license:bsd-3)))

haskell-8.6-bitx-bitcoin

(define-public haskell-8.6-cql-io
  (package
    (name "haskell-8.6-cql-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage011) haskell-8.6-cql)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
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

haskell-8.6-cql-io

(define-public haskell-8.6-datadog
  (package
    (name "haskell-8.6-datadog")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/datadog/datadog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "063avwbrrv6g1icw6fl7yv04izlmh6wcpngxdzzjz1qqmirb8qn4"))))
    (properties `((upstream-name . "datadog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00ldpswchgsrir1s3nwvvr3qdhxdziyysrgxsr3lr14lfvlaz45s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-buffer-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (license license:expat)))

haskell-8.6-datadog

(define-public haskell-8.6-dhall
  (package
    (name "haskell-8.6-dhall")
    (version "1.24.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dhall/dhall-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n04jk45qjl00wx7gxzp36j7d1m1ca7h7y4qlp8gxhykpkr6zzv7"))))
    (properties `((upstream-name . "dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-http" "-f-cross")
       #:cabal-revision
       ("2" "10ki70113z1kgq35xaib7qwrpzjl93hq4qxm0qb62d3pvaf4wp15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cborg)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-cborg-json)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dotgen)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lens-family-core)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-repline)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-serialise)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-uri-encode)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
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

haskell-8.6-dhall

(define-public haskell-8.6-diagrams
  (package
    (name "haskell-8.6-diagrams")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams/diagrams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fcik4vwm2zah5m3yf6p1dlf0vbs7h1jri77zfwl731bd3xgc246"))))
    (properties `((upstream-name . "diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cairo" "-f-gtk" "-fsvg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-canvas")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-contrib)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-svg)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams")
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
<http://projects.haskell.org/diagrams>.  For
help, join the @@#diagrams@@ IRC channel on
Freenode or the mailing list:
<http://groups.google.com/group/diagrams-discuss>.")
    (license license:bsd-3)))

haskell-8.6-diagrams

(define-public haskell-8.6-dns
  (package
    (name "haskell-8.6-dns")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-hourglass)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-psqueues)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-8.6-dns

(define-public haskell-8.6-fast-logger
  (package
    (name "haskell-8.6-fast-logger")
    (version "2.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-logger/fast-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02mxb1ckvx1s2r2m11l5i2l5rdl7232p0f61af6773haykjp0qxk"))))
    (properties `((upstream-name . "fast-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1m5g8mbl0hsrz93zx464hvqf4wkr5s7hqzgnj48lvqmmlf205vys")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-easy-file)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-unix-time)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system")
    (license license:bsd-3)))

haskell-8.6-fast-logger

(define-public haskell-8.6-gi-atk
  (package
    (name "haskell-8.6-gi-atk")
    (version "2.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0npcz82l5ssbrgzr99a94nlirmfdy9z5p2k0nrk7357bawpiv7sk"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-atk

(define-public haskell-8.6-gi-gio
  (package
    (name "haskell-8.6-gi-gio")
    (version "2.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w42ls035a69c2wyf050zvqxwyql3ln3ifwn9k4m187icj345qnz"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-gio

(define-public haskell-8.6-gi-javascriptcore
  (package
    (name "haskell-8.6-gi-javascriptcore")
    (version "4.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-javascriptcore/gi-javascriptcore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zl2lanysqir9qhndai7v4yp6sq671115mi5k9q58rwkmvkm6w04"))))
    (properties `((upstream-name . "gi-javascriptcore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "JavaScriptCore bindings")
    (description "Bindings for JavaScriptCore, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-javascriptcore

(define-public haskell-8.6-gi-pango
  (package
    (name "haskell-8.6-gi-pango")
    (version "1.0.22")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09dz13wai7cyp24vhc6wxyyg2g89dsqq40r80j56xgpyvfki8yf2"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-pango

(define-public haskell-8.6-github-release
  (package
    (name "haskell-8.6-github-release")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-release/github-release-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ilmq8sjxidyna41gm97ygskjzkbf3rggb2m6lqpxpjcycay7jfr"))))
    (properties `((upstream-name . "github-release") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-optparse-generic)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-uri-templater)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/github-release#readme")
    (synopsis "Upload files to GitHub releases.")
    (description "GitHub Release uploads files to GitHub releases.")
    (license license:expat)))

haskell-8.6-github-release

(define-public haskell-8.6-hopenpgp-tools
  (package
    (name "haskell-8.6-hopenpgp-tools")
    (version "0.21.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenpgp-tools/hopenpgp-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18y6qxb53v9dbjz4mhxvzc0b8jyk909w140y22hxcbwn41vqh48l"))))
    (properties `((upstream-name . "hopenpgp-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-crypto-pubkey)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fgl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-graphviz)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hOpenPGP)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-ixset-typed)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-prettyprinter-convert-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "hOpenPGP-based command-line tools")
    (description
     "command-line tools for performing some OpenPGP-related operations")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.6-hopenpgp-tools

(define-public haskell-8.6-hpack
  (package
    (name "haskell-8.6-hpack")
    (version "0.31.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpack/hpack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l2d6185lawwhsj70swxkvcacm0hvcn9qsrlx4ph4gs6k578603g"))))
    (properties `((upstream-name . "hpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "178b4c26bdb4y83g2ks1r5ahlkn9hf18fr1d9gpf2x9dsiikqmwz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-infer-license)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "A modern format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-8.6-hpack

(define-public haskell-8.6-http-conduit
  (package
    (name "haskell-8.6-http-conduit")
    (version "2.3.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00rshi1y0h8y4rvsnnad0bppxgpvp40sk7lw1kxmdwy8pi8xrvbs"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d9mkg8wm943avghjwvq986m667fx63pvvgn2y8gvr6nla8740an")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-8.6-http-conduit

(define-public haskell-8.6-http-directory
  (package
    (name "haskell-8.6-http-directory")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-directory/http-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11vka7a049mh56fy6bi9snjkl68il9fnw583l8dw02n67wldks99"))))
    (properties `((upstream-name . "http-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-html-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-http-date)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/http-directory")
    (synopsis "http directory listing library")
    (description "Library for listing the files (href's) in an http directory.
It can also check the size, existence, modtime of files,
and for url redirects.")
    (license license:expat)))

haskell-8.6-http-directory

(define-public haskell-8.6-hw-ip
  (package
    (name "haskell-8.6-hw-ip")
    (version "2.3.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-ip/hw-ip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "020pwy89hx4jcmq5vwd0gs4vbb2llkvvzaqk72s06w51hqrfpxb9"))))
    (properties `((upstream-name . "hw-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-appar)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "https://github.com/haskell-works/hw-ip#readme")
    (synopsis "Library for manipulating IP addresses and CIDR blocks")
    (description
     "Library for manipulating IP addresses and CIDR blocks. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-ip

(define-public haskell-8.6-hw-packed-vector
  (package
    (name "haskell-8.6-hw-packed-vector")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-packed-vector/hw-packed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l021x4sya6fmdhz6nsqh4nvvc3bbb29y30ari0qvn5789nwxzv3"))))
    (properties `((upstream-name . "hw-packed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-packed-vector#readme")
    (synopsis "Packed Vector")
    (description "Packed Vector. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-packed-vector

(define-public haskell-8.6-hw-rankselect-base
  (package
    (name "haskell-8.6-hw-rankselect-base")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect-base/hw-rankselect-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17h4kmi9zcgm4sdpbmqh6rzygz7w0v95lfc6rmhc9a8bmmg30i5b"))))
    (properties `((upstream-name . "hw-rankselect-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("1" "03svpzjia8mbgy33lhmjhwpd6yq0n97l3fkmfnpyi3blc3yb3bd0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-bits-extra)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-bitvec)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hw-int)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-rankselect-base

(define-public haskell-8.6-hw-streams
  (package
    (name "haskell-8.6-hw-streams")
    (version "0.0.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-streams/hw-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "087sn4gxhf29vg9ydx8sfq33q16cz6cmda5r63k9xdki4ba761m4"))))
    (properties `((upstream-name . "hw-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("1" "1y5sw9mgkxwvgf91hl22p3q5kxy99phwfmx2lh87339w7d5bjdbw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mmap)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-streams#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.6-hw-streams

(define-public haskell-8.6-ihaskell
  (package
    (name "haskell-8.6-ihaskell")
    (version "0.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell/ihaskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01jk48kj5z7n547z1lg78c0bphpjyv2nfzjrh4jv7xygkw5asqxb"))))
    (properties `((upstream-name . "ihaskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jhgnw5wrpmbp3g6zllwlmmyzyja5ry8i7dss7q8gpbvk2inlfl3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-ghc-parser)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-ipython-kernel)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-shelly)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A Haskell backend kernel for the IPython project.")
    (description
     "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via
a console or notebook interface. Additional packages may be installed to provide richer data visualizations.")
    (license license:expat)))

haskell-8.6-ihaskell

(define-public haskell-8.6-irc-conduit
  (package
    (name "haskell-8.6-irc-conduit")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-conduit/irc-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0asaddcbdcnbp0bbhvzaq5514nw2l1cp1gac3jbn4mh7brgfwjc1"))))
    (properties `((upstream-name . "irc-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-irc)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/barrucadu/irc-conduit")
    (synopsis "Streaming IRC message library using conduits.")
    (description
     "IRC messages consist of an optional identifying prefix, a command
name, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>
package provides a low-level decoding and encoding scheme for
messages in terms of ByteStrings, but using this relies on matching
names of commands as strings, and unpacking this decoded structure
yourself. This package takes it a little further, providing an ADT
for IRC messages and sources, and conduits which attempt to decode
and encode messages appropriately.

In addition to providing conduits for automatically handling
streaming messages, there are also helper functions for connecting
to an IRC server and hooking up conduits to the socket.")
    (license license:expat)))

haskell-8.6-irc-conduit

(define-public haskell-8.6-katip
  (package
    (name "haskell-8.6-katip")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/katip/katip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wpqchpgrp7awrf7hirg0768g8nnqrydnwcw8xgxw6w47zcb71d0"))))
    (properties `((upstream-name . "katip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("2" "09sc6sdgyxidij41p1dqj7p5p2zfgs876zzsbra9rmc9hlwwzrlq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hostname)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-string-conv)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-tasty-golden)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/Soostone/katip")
    (synopsis "A structured logging framework.")
    (description
     "Katip is a structured logging framework. See README.md for more details.")
    (license license:bsd-3)))

haskell-8.6-katip

(define-public haskell-8.6-koofr-client
  (package
    (name "haskell-8.6-koofr-client")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/koofr-client/koofr-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bz7akd7sssn1gzqfvr0y343771zk7dn1n3as0m93wg4ifpz1dia"))))
    (properties `((upstream-name . "koofr-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qaipcg9n93z0za2a8jy3mv73a3q2b1dv98v2g5wwcv1qx7rvvhv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/edofic/koofr-api-hs                       ")
    (synopsis "Client to Koofr API")
    (description
     "Koofr is a storage as a service provider located in Europe. See https://koofr.eu for more info. This is an API wrapper that simplifies working with files.
Filesystem roots are called mounts and cannot be manipulated through api.
The API is contained in a type class in order to allow mocking. Mock runner and wider API coverage coming soon.")
    (license license:expat)))

haskell-8.6-koofr-client

(define-public haskell-8.6-kraken
  (package
    (name "haskell-8.6-kraken")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kraken/kraken-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12l24z6alscbdicp11nfc8fwmlhk5mjdjyh6xdqyvlzphp5yfp1k"))))
    (properties `((upstream-name . "kraken") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1l4i9nhwvy958ka6l6gb5w5cxgjhdm1h7ycvcc2nrqlw2iwk16v1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/kraken")
    (synopsis "Kraken.io API client")
    (description
     "Kraken is a robust, ultra-fast image optimizer and compressor with
best-in-class algorithms.")
    (license license:expat)))

haskell-8.6-kraken

(define-public haskell-8.6-midi-music-box
  (package
    (name "haskell-8.6-midi-music-box")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/midi-music-box/midi-music-box-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15i28iw6ssl7f8iivqyxgd8rg3vg76hspsyv347195d74xb5s7zb"))))
    (properties `((upstream-name . "midi-music-box") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-postscript)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-event-list)
                  (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-midi)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hub.darcs.net/thielema/midi-music-box")
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

haskell-8.6-midi-music-box

(define-public haskell-8.6-mmark-cli
  (package
    (name "haskell-8.6-mmark-cli")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-cli/mmark-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15qrp2q1flx9csqvj8zx9w1jqg8pwfi0v7wpia7n7vg09jgydhby"))))
    (properties `((upstream-name . "mmark-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("7" "0ml4pj14nd3gbgrh8ji3ifbjdayp8fbsf7kdcwqmyajm1sz965x0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mmark)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-mmark-ext)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-stache)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to the MMark markdown processor")
    (description "Command line interface to the MMark markdown processor.")
    (license license:bsd-3)))

haskell-8.6-mmark-cli

(define-public haskell-8.6-mysql-haskell-nem
  (package
    (name "haskell-8.6-mysql-haskell-nem")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-haskell-nem/mysql-haskell-nem-"
                    version ".tar.gz"))
              (sha256
               (base32
                "038zf940jw7xigv6gp8rjg5zch4hdd1rc3w6yypsg5nwdsvnh23s"))))
    (properties `((upstream-name . "mysql-haskell-nem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-mysql-haskell)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lorenzo/mysql-haskell-nem#readme")
    (synopsis "Adds a interface like mysql-simple to mysql-haskell.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-mysql-haskell-nem

(define-public haskell-8.6-oauthenticated
  (package
    (name "haskell-8.6-oauthenticated")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oauthenticated/oauthenticated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08njax7jchkmha1angh98v0p3haxn8zj12lajl5npcmzlihd0k6l"))))
    (properties `((upstream-name . "oauthenticated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
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

haskell-8.6-oauthenticated

(define-public haskell-8.6-opensource
  (package
    (name "haskell-8.6-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-8.6-opensource

(define-public haskell-8.6-pandoc
  (package
    (name "haskell-8.6-pandoc")
    (version "2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pandoc/pandoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dpjrr40h54cljzhvixyym07z792a9izg6b9dmqpjlgcg4rj0xx8"))))
    (properties `((upstream-name . "pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-static" "-f-embed_data_files" "-fderive_json_via_th" "-f-trypandoc")
       #:cabal-revision
       ("1" "124is72dmd98fk8mayzird9i9px619kzszm2qrl1dacy0wcn6ri8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-HsYAML)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-SHA)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-cmark-gfm)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctemplates)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-haddock-library)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hslua)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-hslua-module-system)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-hslua-module-text)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-ipynb)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-skylighting)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-texmath)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://pandoc.org")
    (synopsis "Conversion between markup formats")
    (description "Pandoc is a Haskell library for converting from one markup
format to another, and a command-line tool that uses
this library. It can read several dialects of Markdown and
(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,
MediaWiki markup, DokuWiki markup, TWiki markup,
TikiWiki markup, Creole 1.0, Haddock markup, OPML,
Emacs Org-Mode, Emacs Muse, txt2tags, ipynb (Jupyter
notebooks), Vimwiki, Word Docx, ODT, EPUB, FictionBook2,
roff man, and Textile, and it can write Markdown,
reStructuredText, XHTML, HTML 5, LaTeX, ConTeXt, DocBook,
JATS, OPML, TEI, OpenDocument, ODT, Word docx,
PowerPoint pptx, RTF, MediaWiki, DokuWiki, XWiki,
ZimWiki, Textile, Jira, roff man, roff ms, plain text,
Emacs Org-Mode, AsciiDoc, Haddock markup,
EPUB (v2 and v3), ipynb, FictionBook2,
InDesign ICML, Muse, LaTeX beamer slides,
and several kinds of HTML/JavaScript slide shows
(S5, Slidy, Slideous, DZSlides, reveal.js).

In contrast to most existing tools for converting Markdown
to HTML, pandoc has a modular design: it consists of a set of
readers, which parse text in a given format and produce a
native representation of the document, and a set of writers,
which convert this native representation into a target
format. Thus, adding an input or output format requires
only adding a reader or writer.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-pandoc

(define-public haskell-8.6-pipes-http
  (package
    (name "haskell-8.6-pipes-http")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-http/pipes-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00579dpb7mh8nli5gfr100w0mrn6nvqhbj50qzxc2m5cvw4gncd2"))))
    (properties `((upstream-name . "pipes-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0m38lrmr356gfrv6gnrncwiy1hnh882084yn7vgmjsqssgvhbz8a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pipes-http")
    (synopsis "HTTP client with pipes interface")
    (description
     "@@pipes-http@@ is a @@pipes@@ wrapper around the @@http-client@@ library")
    (license license:bsd-3)))

haskell-8.6-pipes-http

(define-public haskell-8.6-planb-token-introspection
  (package
    (name "haskell-8.6-planb-token-introspection")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/planb-token-introspection/planb-token-introspection-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rgjvxs1bb6qz02g2y8b4cldmgn05kfzjbb81ny57724yv60xyp7"))))
    (properties `((upstream-name . "planb-token-introspection")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-aeson-casing)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/mtesseract/planb-token-introspection#readme")
    (synopsis "Token Introspection for PlanB")
    (description "This package provides token introspection functionality
for the PlanB token provider.")
    (license license:bsd-3)))

haskell-8.6-planb-token-introspection

(define-public haskell-8.6-ratel
  (package
    (name "haskell-8.6-ratel")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kwn7ahjbp8w83ph73w43mh0szywqd2f817b7mz2wqimzb153k5b"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/ratel#readme")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-8.6-ratel

(define-public haskell-8.6-rattletrap
  (package
    (name "haskell-8.6-rattletrap")
    (version "9.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rattletrap/rattletrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kgg1qfhgjajzrw22yvcxmiim14pxr2gim1aak3ivnmhn4yff4fg"))))
    (properties `((upstream-name . "rattletrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-binary-bits)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rattletrap")
    (synopsis "Parse and generate Rocket League replays.")
    (description "Rattletrap parses and generates Rocket League replays.")
    (license license:expat)))

haskell-8.6-rattletrap

(define-public haskell-8.6-req
  (package
    (name "haskell-8.6-req")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "07sm483bkwqq7fvhwqysl4ac0nw1mvhkywawwpgq0c1gw2wnv56n"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0dgd4wgijd0k96khy56b6gnzmqzmz44a4qsj0v5mwslvnvkq598a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis
     "Easy-to-use, type-safe, expandable, high-level HTTP client library")
    (description
     "Easy-to-use, type-safe, expandable, high-level HTTP client library.")
    (license license:bsd-3)))

haskell-8.6-req

(define-public haskell-8.6-scalpel
  (package
    (name "haskell-8.6-scalpel")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cq9zslaqcs1vq85xznc11vis5bkvmhjsnwxrc2p01bsxbvwxsh6"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-scalpel-core)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-scalpel

(define-public haskell-8.6-slack-web
  (package
    (name "haskell-8.6-slack-web")
    (version "0.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-web/slack-web-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14ngln71sn5i26041m4v614vq4qhr44pzlgyxliyqw08dxn25la7"))))
    (properties `((upstream-name . "slack-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jpvillaisaza/slack-web")
    (synopsis "Bindings for the Slack web API")
    (description "Haskell bindings for the Slack web API.")
    (license license:expat)))

haskell-8.6-slack-web

(define-public haskell-8.6-soap-tls
  (package
    (name "haskell-8.6-soap-tls")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/soap-tls/soap-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "051shlb128lsacd2cjm4kpyqkmzdcwcj7ppl7l4n1k5j9g6k72yf"))))
    (properties `((upstream-name . "soap-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06a65jphfn1nxcnm4r6gf12afxhd7cs6ax8kq22w4pai98jk3jwn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-configurator)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage019) haskell-8.6-soap)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "TLS-enabled SOAP transport (using tls package)")
    (description
     "TLS-enabled SOAP transport (using tls package)

> main = do
>     -- Initial one-time preparations.
>     settings <- makeSettings (Just \"client.crt\") (Just \"client.key\") validateDefault
>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- the rest is the same as before...")
    (license license:expat)))

haskell-8.6-soap-tls

(define-public haskell-8.6-strive
  (package
    (name "haskell-8.6-strive")
    (version "5.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1022ir4m0r43717rdb1miynd61mfkfd3mp0dcv5ryb983znn3ag2"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-gpolyline)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/strive#readme")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-8.6-strive

(define-public haskell-8.6-time-manager
  (package
    (name "haskell-8.6-time-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Scalable timer")
    (description "Scalable timer functions provided by a timer manager.")
    (license license:expat)))

haskell-8.6-time-manager

(define-public haskell-8.6-tintin
  (package
    (name "haskell-8.6-tintin")
    (version "1.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tintin/tintin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "191dr17z3qxkk5ic605ni2kq5v7sncn0gw5xhk7nlxd5fx6nf5r2"))))
    (properties `((upstream-name . "tintin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001) haskell-8.6-clay)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-has)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-frontmatter)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-inflections)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-inliterate)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-optparse-generic)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-require)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-universum)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/theam/tintin#readme")
    (synopsis "A softer alternative to Haddock")
    (description "Please see the website <https://theam.github.io/tintin>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-tintin

(define-public haskell-8.6-tls-session-manager
  (package
    (name "haskell-8.6-tls-session-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-auto-update)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-psqueues)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-8.6-tls-session-manager

(define-public haskell-8.6-web3
  (package
    (name "haskell-8.6-web3")
    (version "0.8.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/web3/web3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yk24r1pbavvp8si8yxk4p5n4s80h1klz5rav49sgrw8zj69n3x7"))))
    (properties `((upstream-name . "web3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-compiler" "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-OneTuple)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-machines)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-relapse)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-vinyl)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/airalab/hs-web3#readme")
    (synopsis "Ethereum API for Haskell")
    (description "Web3 is a Haskell client library for Ethereum")
    (license license:bsd-3)))

haskell-8.6-web3

(define-public haskell-8.6-wreq
  (package
    (name "haskell-8.6-wreq")
    (version "0.5.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wreq/wreq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16xls71aby6jqc1frhwnlfvz1iwj1ms0rw9xzif02sn84470gn36"))))
    (properties `((upstream-name . "wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctest" "-f-aws" "-f-httpbin" "-f-developer")
       #:cabal-revision
       ("1" "0gz674sb266hv6si9l79c3bv7n2nbssl1262c24in79sk27887gb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-psqueues)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
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

haskell-8.6-wreq

(define-public haskell-8.6-ws
  (package
    (name "haskell-8.6-ws")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ws/ws-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1qj4yq2z7ml88jgcqfy8i1cn1cbmdv56vg7v6b2inh4b4h41yax6"))))
    (properties `((upstream-name . "ws") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-attoparsec-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage020) haskell-8.6-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/athanclark/ws#readme")
    (synopsis "A simple CLI utility for interacting with a websocket")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/ws#readme>")
    (license license:bsd-3)))

haskell-8.6-ws

