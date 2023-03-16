;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage021)
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
(define-public haskell-9.0-BiobaseTypes
  (package
    (name "haskell-9.0-BiobaseTypes")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BiobaseTypes/BiobaseTypes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gm5nlh8xbww614386vhm2lz118w9c6lcj3pbx5k256mzm7j5yba"))))
    (properties `((upstream-name . "BiobaseTypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-DPutils)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ForestStructures)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-PrimitiveArray)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-SciBaseTypes)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-bimaps)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-text)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-vector)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-intern)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-text-binary)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/BiobaseTypes")
    (synopsis "Collection of types for bioinformatics")
    (description "Types used in a number of bioinformatics libraries.

* linear indices

* energies

* biostring wrappers")
    (license license:bsd-3)))

haskell-9.0-BiobaseTypes

(define-public haskell-9.0-amqp
  (package
    (name "haskell-9.0-amqp")
    (version "0.22.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/amqp/amqp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z1w35ar0bswbjzgana52nh4ilxbidnfkvli29w2zr7cak9dgzg1"))))
    (properties `((upstream-name . "amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hreinhardt/amqp")
    (synopsis "Client library for AMQP servers (currently only RabbitMQ)")
    (description "Client library for AMQP servers (currently only RabbitMQ)")
    (license license:bsd-3)))

haskell-9.0-amqp

(define-public haskell-9.0-apecs-physics
  (package
    (name "haskell-9.0-apecs-physics")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-physics/apecs-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ksxx5x998csgi3lr2yl18mk5sjccin20b15swyx1g9k7fsm7nx5"))))
    (properties `((upstream-name . "apecs-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")
       #:cabal-revision
       ("1" "0kzg82azksva8l13548qk4bkx5ww1z0ca1bv141gp4fr0vamw446")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-apecs)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-inline-c)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "2D physics for apecs")
    (description
     "2D physics for apecs. Uses Chipmunk physics library under the hood.")
    (license license:bsd-3)))

haskell-9.0-apecs-physics

(define-public haskell-9.0-atom-conduit
  (package
    (name "haskell-9.0-atom-conduit")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-conduit/atom-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fbvs522x9ldpmp1qr57vsanbdhqfi4m4cs2gk3pm5vmnnqqpqb4"))))
    (properties `((upstream-name . "atom-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-generic-random)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pretty-simple)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-refined)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-relude)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-timerep)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/atom-conduit")
    (synopsis
     "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).")
    (description "Cf README.")
    (license (license "FSDG-compatible" "CC0_1_0" ""))))

haskell-9.0-atom-conduit

(define-public haskell-9.0-beam-postgres
  (package
    (name "haskell-9.0-beam-postgres")
    (version "0.5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-postgres/beam-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "028aqd7r49avmwlf97612f98a5maw01l0d5vlbg0nj7kqi03ghj4"))))
    (properties `((upstream-name . "beam-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-beam-core)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-beam-migrate)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page
     "https://haskell-beam.github.io/beam/user-guide/backends/beam-postgres")
    (synopsis "Connection layer between beam and postgres")
    (description
     "Beam driver for <https://www.postgresql.org/ PostgreSQL>, an advanced open-source RDBMS")
    (license license:expat)))

haskell-9.0-beam-postgres

(define-public haskell-9.0-beam-sqlite
  (package
    (name "haskell-9.0-beam-sqlite")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-sqlite/beam-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d5s6r54aamkr91ji3z05cn7vjmbl0xaysnx3dmalx75r5jhmhzq"))))
    (properties `((upstream-name . "beam-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-beam-core)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-beam-migrate)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/")
    (synopsis "Beam driver for SQLite")
    (description
     "Beam driver for the <https://sqlite.org/ SQLite> embedded database.
See <https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/ here>
for more information")
    (license license:expat)))

haskell-9.0-beam-sqlite

(define-public haskell-9.0-clash-ghc
  (package
    (name "haskell-9.0-clash-ghc")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-ghc/clash-ghc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m2pjq59glqlz4pprs899q5w117ffprwlvn83szq41rnmxbjfiaq"))))
    (properties `((upstream-name . "clash-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dynamic" "-f-use-ghc-paths")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-clash-lib)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-clash-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-concurrent-supply)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskeline)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://clash-lang.org/")
    (synopsis
     "Clash: a functional hardware description language - GHC frontend")
    (description
     "Clash is a functional hardware description language that borrows both its
syntax and semantics from the functional programming language Haskell. The
Clash compiler transforms these high-level descriptions to low-level
synthesizable VHDL, Verilog, or SystemVerilog.

Features of Clash:

* Strongly typed, but with a very high degree of type inference, enabling both
safe and fast prototyping using concise descriptions.

* Interactive REPL: load your designs in an interpreter and easily test all
your component without needing to setup a test bench.

* Higher-order functions, with type inference, result in designs that are
fully parametric by default.

* Synchronous sequential circuit design based on streams of values, called
@@Signal@@s, lead to natural descriptions of feedback loops.

* Support for multiple clock domains, with type safe clock domain crossing.


This package provides:

* Clash Compiler binary using GHC/Haskell as a frontend


Prelude library: <https://hackage.haskell.org/package/clash-prelude>")
    (license license:bsd-2)))

haskell-9.0-clash-ghc

(define-public haskell-9.0-classy-prelude
  (package
    (name "haskell-9.0-classy-prelude")
    (version "1.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mxgx4hr5fsdg45wbilhsnryc61yclhf63bh94q88n26gjmjr60h"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-basic-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-chunked-data)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-mutable-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-say)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-9.0-classy-prelude

(define-public haskell-9.0-cointracking-imports
  (package
    (name "haskell-9.0-cointracking-imports")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cointracking-imports/cointracking-imports-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jf95fgzgqgr2xjbm5i0cwj1zx7zd44qpv3xqy91pk5kp33gwdjr"))))
    (properties `((upstream-name . "cointracking-imports") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-xlsx)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/cointracking-imports#readme")
    (synopsis "Generate CSV & XLSX files for importing into CoinTracking.")
    (description
     "@@cointracking-imports@@ is a library for generating CSV & XLSX files to use
with <https://cointracking.info CoinTracking>'s Import feature. You
construct a list of @@CTImportData@@, then feed those to our CSV/XLSX
generating functions.

E.g., if you generate a list of your BNB staking rewards, you can use this
library build a CSV file to import those rewards into CoinTracking.")
    (license license:bsd-3)))

haskell-9.0-cointracking-imports

(define-public haskell-9.0-conduit-connection
  (package
    (name "haskell-9.0-conduit-connection")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-connection/conduit-connection-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mvsvxfps6pnlanl5zx7cz6qxpn907qgx5bcl18vb9vhn8frh0m6"))))
    (properties `((upstream-name . "conduit-connection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sdroege/conduit-connection")
    (synopsis "Conduit source and sink for Network.Connection.")
    (description
     "@@conduit-connection@@ provides a \"Data.Conduit\" source and sink based on
\"Network.Connection\".")
    (license license:bsd-3)))

haskell-9.0-conduit-connection

(define-public haskell-9.0-conduit-parse
  (package
    (name "haskell-9.0-conduit-parse")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-parse/conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xdc04m88lk9183ky020670hj2ilfff3q0zxnphva5p0ij32iyq7"))))
    (properties `((upstream-name . "conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "102y5wad007bz8iqv1nrz38gb24q15k9snl7l7zq9k7pisdxnans")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-conduit-parse

(define-public haskell-9.0-credential-store
  (package
    (name "haskell-9.0-credential-store")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/credential-store/credential-store-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114jdbpiyx8xnjxnpz05nqpnb5s29y1iv330b0i491vik8hvrbad"))))
    (properties `((upstream-name . "credential-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-dbus)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/credential-store#readme")
    (synopsis "Library to access secure credential storage providers")
    (description
     "Cross-platform library for storing secrets.

Uses Windows credential store, gnome-keyring or kwallet as backends.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-credential-store

(define-public haskell-9.0-dbus-hslogger
  (package
    (name "haskell-9.0-dbus-hslogger")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbus-hslogger/dbus-hslogger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2y69kagp53cmlb7p3y6ysr9k5wvfd0vcnpwsasyn1jpk6g80zi"))))
    (properties `((upstream-name . "dbus-hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-dbus)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/dbus-hslogger#readme")
    (synopsis "Expose a dbus server to control hslogger")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/dbus-hslogger#readme>")
    (license license:bsd-3)))

haskell-9.0-dbus-hslogger

(define-public haskell-9.0-diagrams-lib
  (package
    (name "haskell-9.0-diagrams-lib")
    (version "1.4.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hkxp549i99s45qk8zmhjvz1xyyv3i0ffl8155bifkic6fd8y2gz"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1s8iyx86hd7p1h08nlmx8dj03fdzbwi417yw1qxc5ivd77ciqj61")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-active)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-diagrams-core)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-diagrams-solve)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-dual-tree)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-intervals)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-extras)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-numeric-extras)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://diagrams.github.io")
    (synopsis "Embedded domain-specific language for declarative graphics")
    (description "Diagrams is a flexible, extensible EDSL for creating
graphics of many types.  Graphics can be created
in arbitrary vector spaces and rendered with
multiple backends.  diagrams-lib provides a
standard library of primitives and operations for
creating diagrams.  To get started using it, see
the \"Diagrams\" module, and refer to the tutorials and
documentation on the diagrams website,
<http://diagrams.github.io>.")
    (license license:bsd-3)))

haskell-9.0-diagrams-lib

(define-public haskell-9.0-dns
  (package
    (name "haskell-9.0-dns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-9.0-dns

(define-public haskell-9.0-download
  (package
    (name "haskell-9.0-download")
    (version "0.3.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download/download-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qg61d7z05dxpzfnv1gyf0dm2mpx23p29a9n5mx4pham5hfmfm3i"))))
    (properties `((upstream-name . "download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-feed)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/download")
    (synopsis "High-level file download based on URLs")
    (description "High-level file download based on URLs")
    (license license:bsd-3)))

haskell-9.0-download

(define-public haskell-9.0-download-curl
  (package
    (name "haskell-9.0-download-curl")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download-curl/download-curl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wf3pf2k4i6jvpfsjlxdj6v53qd33jj1z1ipaf3p47glgx4xw3lm"))))
    (properties `((upstream-name . "download-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")
       #:cabal-revision
       ("2" "032f19gn7bnx3fpfdwclm1z1hsxaya6yml7p2hcg3b2ad6d11pyl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-curl)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-feed)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://code.haskell.org/~dons/code/download-curl")
    (synopsis "High-level file download based on URLs")
    (description
     "High-level file download based on URLs

Download web content as strict or lazy bytestringrs, strings, HTML
tags, XML, RSS or Atom feeds or JSON, using the curl network library.

Importing the library:

> import Network.Curl.Download

Loading a webpage as a \"ByteString\":

> doc  <- openURI \"http://haskell.org\"

Loading from a file:

> doc  <- openURI \"file:///tmp/A.hs\"

Loading a HTML page as a list of tags:

> tags <- openAsTags \"http://haskell.org\"

Loading a HTML page as XML:

> tags <- openAsXML \"http://haskell.org\"

Loading an RSS or Atom feed:

> feed <- openAsFeed \"http://haskell.org\"

These data types can the be processed further with the XML, Feed and
TagSoup libraries.
")
    (license license:bsd-3)))

haskell-9.0-download-curl

(define-public haskell-9.0-dublincore-xml-conduit
  (package
    (name "haskell-9.0-dublincore-xml-conduit")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dublincore-xml-conduit/dublincore-xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jzyj49j88xwsz54higi81a6v8kvb8i338n5416z1ni475qsynl"))))
    (properties `((upstream-name . "dublincore-xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "1rljgmi4jb6yhigfy394jb64q5f5qx7i1g68pw6zgq9ziz91p321")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-timerep)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/dublincore-xml-conduit")
    (synopsis
     "XML streaming parser/renderer for the Dublin Core standard elements.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-dublincore-xml-conduit

(define-public haskell-9.0-easy-logger
  (package
    (name "haskell-9.0-easy-logger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unix-time)))
    (home-page "https://github.com/schnecki/easy-logger#readme")
    (synopsis "Logging made easy.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/easy-logger#readme>")
    (license license:bsd-3)))

haskell-9.0-easy-logger

(define-public haskell-9.0-eliminators
  (package
    (name "haskell-9.0-eliminators")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00prqf3qnhsswigcx87nq9dfaq9vjvzgcgbpnxrpgw9k36p9mdh2"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-singleton-nats)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-singletons-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-desugar)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-9.0-eliminators

(define-public haskell-9.0-elynx
  (package
    (name "haskell-9.0-elynx")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elynx/elynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16kqf4v9ikrd6w19zg3lrpy69xsdhr0p1hni72wi2i8glrzmq4qw"))))
    (properties `((upstream-name . "elynx") (hidden? . #f)))
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
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-slynx)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-tlynx)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Validate and (optionally) redo ELynx analyses")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-elynx

(define-public haskell-9.0-fakedata-quickcheck
  (package
    (name "haskell-9.0-fakedata-quickcheck")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata-quickcheck/fakedata-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m70r66vbkgi1d016cpgahaas17hysabp44nigz4cda9l3x6qmh6"))))
    (properties `((upstream-name . "fakedata-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-fakedata)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/fakedata-haskell/fakedata-quickcheck#readme")
    (synopsis "Fake a -> Gen a")
    (description
     "Use fakedata Fake monad for quicheck tests. See readme for examples at <https://github.com/fakedata-haskell/fakedata-quickcheck>.")
    (license license:expat)))

haskell-9.0-fakedata-quickcheck

(define-public haskell-9.0-faktory
  (package
    (name "haskell-9.0-faktory")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-casing)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-scanner)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-faktory

(define-public haskell-9.0-fast-logger
  (package
    (name "haskell-9.0-fast-logger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-easy-file)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unix-time)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system for Haskell")
    (license license:bsd-3)))

haskell-9.0-fast-logger

(define-public haskell-9.0-follow-file
  (package
    (name "haskell-9.0-follow-file")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-attoparsec-path)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-hinotify)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/follow-file#readme")
    (synopsis
     "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>")
    (license license:bsd-3)))

haskell-9.0-follow-file

(define-public haskell-9.0-fourmolu
  (package
    (name "haskell-9.0-fourmolu")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fourmolu/fourmolu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mq0h6nsl7ssfwh6zqhyja7w212vn8msmlm5iwwimca279hzwywb"))))
    (properties `((upstream-name . "fourmolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "03bwhqj547brmgk191gy3k9xayi6fqqk2f5sbz3ail1bk7b73xnq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-HsYAML)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/fourmolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.0-fourmolu

(define-public haskell-9.0-ftp-client
  (package
    (name "haskell-9.0-ftp-client")
    (version "0.5.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ftp-client/ftp-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c2xn2q24imrfgsx4zxzi24ciwkrly6n47lc5k5406j5b4znn5lf"))))
    (properties `((upstream-name . "ftp-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1a7xya5c89lj4s73bd0cgr53id53xz4fnqzrizdibb6a90ml7g9r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mr/ftp-client")
    (synopsis "Transfer files with FTP and FTPS")
    (description
     "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-ftp-client

(define-public haskell-9.0-generic-data
  (package
    (name "haskell-9.0-generic-data")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data/generic-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hs5ahl1nx61kw5j0pnwgjrph7jgqq0djma956ksz6aivzldjf7q"))))
    (properties `((upstream-name . "generic-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01ly8r9s34pj8i7ppjclclx3fmnv24lhic1n7cjz5cdk3cxa8klc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ap-normalize)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-one-liner)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-show-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Lysxia/generic-data#readme")
    (synopsis "Deriving instances with GHC.Generics and related utilities")
    (description
     "Generic implementations of standard type classes.
Operations on generic representations to help using \"GHC.Generics\".
See README.")
    (license license:expat)))

haskell-9.0-generic-data

(define-public haskell-9.0-genvalidity-path
  (package
    (name "haskell-9.0-genvalidity-path")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172gss10xl274s95l3ywgra32ldnl2a4gicc1xgi5q7v5zmj5gaa"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-validity-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-path

(define-public haskell-9.0-gi-cairo
  (package
    (name "haskell-9.0-gi-cairo")
    (version "1.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo/gi-cairo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f074s37fw1wjd2ycmji8vhvl1lzaclqh7n2pippdfvhfidrkbxf"))))
    (properties `((upstream-name . "gi-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
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
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-cairo

(define-public haskell-9.0-gi-freetype2
  (package
    (name "haskell-9.0-gi-freetype2")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-freetype2/gi-freetype2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "066xpysbzzfjd0gpjxvhfbgy1zwhqd14gibs4daycszk09d9kspp"))))
    (properties `((upstream-name . "gi-freetype2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages fontutils) freetype)
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
    (synopsis "freetype2 bindings")
    (description "Bindings for freetype2, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-freetype2

(define-public haskell-9.0-gi-glib
  (package
    (name "haskell-9.0-gi-glib")
    (version "2.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-glib/gi-glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cd0kbl7lsk5jjilhcs8969xaa7ncm81ilpdsqpxvdm2hgrg06y2"))))
    (properties `((upstream-name . "gi-glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
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
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-glib

(define-public haskell-9.0-gi-xlib
  (package
    (name "haskell-9.0-gi-xlib")
    (version "2.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-xlib/gi-xlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dy1xfzbhkyh7nj270mmz1acnwdf0f7c3rzz31lw9zrjyf9670gj"))))
    (properties `((upstream-name . "gi-xlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages xorg) libx11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "xlib bindings")
    (description "Bindings for xlib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-xlib

(define-public haskell-9.0-hakyll-convert
  (package
    (name "haskell-9.0-hakyll-convert")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hakyll-convert/hakyll-convert-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09fqr05mvs0qs53psq97kn1s4axinwn1vr5d6af4sqj3zc5k6k39"))))
    (properties `((upstream-name . "hakyll-convert") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04j3f0p71y8hwx92daj31r609xj647r3v5yhxr9whzfn432wj7p1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-feed)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Minoru/hakyll-convert#readme")
    (synopsis "Convert from other blog engines to Hakyll.")
    (description
     "WordPress and Blogger only let one export posts in a limited number of formats, none of which are supported by Hakyll. @@hakyll-convert@@ is created to bridge this gap, providing a way to turn other platform's datadumps into a set of files Hakyll understands.")
    (license license:bsd-3)))

haskell-9.0-hakyll-convert

(define-public haskell-9.0-hasbolt
  (package
    (name "haskell-9.0-hasbolt")
    (version "0.1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasbolt/hasbolt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y7vjng3qjy5jaj3c90b5a08xrn49c4bb2wa9s612ny5qc98dl9g"))))
    (properties `((upstream-name . "hasbolt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "029sw5fqcqpzsx2ahkngfimyd9kyjn7abg0cvz4pb8y96ypl3cs7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zmactep/hasbolt#readme")
    (synopsis "Haskell driver for Neo4j 3+ (BOLT protocol)")
    (description
     "Haskell driver for Neo4j 3+ (BOLT protocol).

The package covers:

-Data serialization and deserialization

-Nodes, relationships and paths support

-Cypher queries and responses

-Transactions and error handling

-Authentification

-TLS/SSL connection

-Bolt protocol version 3 initial support

The code was tested with neo4j versions 3.0 — 3.5 and GrapheneDB service")
    (license license:bsd-3)))

haskell-9.0-hasbolt

(define-public haskell-9.0-hedgehog-fakedata
  (package
    (name "haskell-9.0-hedgehog-fakedata")
    (version "0.0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-fakedata/hedgehog-fakedata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00k26d83v0646klrg0k3cf94r4fnnx3ykxv7i8shjjgbkbzlzz78"))))
    (properties `((upstream-name . "hedgehog-fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a4lc2pi391m2ss507hrpdvdg8pk300k14cpxwmi3d5pz579w1fq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-fakedata)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/hedgehog-fakedata#readme")
    (synopsis "Use 'fakedata' with 'hedgehog'")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>")
    (license license:bsd-3)))

haskell-9.0-hedgehog-fakedata

(define-public haskell-9.0-hindent
  (package
    (name "haskell-9.0-hindent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mihaimaruseac/hindent")
    (synopsis "Extensible Haskell pretty printer")
    (description
     "Extensible Haskell pretty printer. Both a library and an executable.

See the Github page for usage\\/explanation: <https://github.com/mihaimaruseac/hindent>")
    (license license:bsd-3)))

haskell-9.0-hindent

(define-public haskell-9.0-hslua-module-doclayout
  (package
    (name "haskell-9.0-hslua-module-doclayout")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-doclayout/hslua-module-doclayout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14sqffgcrhhrv7k4j8b1l41mn5gqlp8yzggd727746kjl0n56hqq"))))
    (properties `((upstream-name . "hslua-module-doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doclayout)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-doclayout")
    (synopsis "Lua module wrapping Text.DocLayout.")
    (description "Lua module wrapping @@Text.DocLayout@@.")
    (license license:expat)))

haskell-9.0-hslua-module-doclayout

(define-public haskell-9.0-http-client-tls
  (package
    (name "haskell-9.0-http-client-tls")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-tls/http-client-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03f8p9gxdzl6slyw1r6vpv2dqhsyjvbaawbjv75kaq0vlj3gz7xi"))))
    (properties `((upstream-name . "http-client-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis
     "http-client backend using the connection package and tls library")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.")
    (license license:expat)))

haskell-9.0-http-client-tls

(define-public haskell-9.0-hw-excess
  (package
    (name "haskell-9.0-hw-excess")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-excess/hw-excess-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xiyf3xyg6f4kgkils9ycx6q0qcsbd6rw4m9lizw9295mnp05s3g"))))
    (properties `((upstream-name . "hw-excess") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "09c7x1qkmjs8bl9gzcb6ykls3jjj75i8hvwdfcx1zgiwg79w1g1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-excess

(define-public haskell-9.0-hworker
  (package
    (name "haskell-9.0-hworker")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hworker/hworker-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "079z4ahnbwibhy15jm3ymfzbfxgwy7f2l1raq06sp47ip16wrjrl"))))
    (properties `((upstream-name . "hworker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w2bpvfr68n2qipvr8gc5096dain3g2536m4n9kqx1fahf12mwy5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hedis)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/dbp/hworker")
    (synopsis "A reliable at-least-once job queue built on top of redis.")
    (description "See README.")
    (license license:isc)))

haskell-9.0-hworker

(define-public haskell-9.0-katip
  (package
    (name "haskell-9.0-katip")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hostname)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conv)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/katip")
    (synopsis "A structured logging framework.")
    (description
     "Katip is a structured logging framework. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.0-katip

(define-public haskell-9.0-massiv-test
  (package
    (name "haskell-9.0-massiv-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-massiv)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-scheduler)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis
     "Library that contains generators, properties and tests for Massiv Array Library.")
    (description
     "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.")
    (license license:bsd-3)))

haskell-9.0-massiv-test

(define-public haskell-9.0-network-conduit-tls
  (package
    (name "haskell-9.0-network-conduit-tls")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-conduit-tls/network-conduit-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxdsf7isv3l2g58vsvi8iwlrgf85v7ksa8636kr6ffycbhn1zgc"))))
    (properties `((upstream-name . "network-conduit-tls") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis "Create TLS-aware network code with conduits")
    (description "Uses the tls package for a pure-Haskell implementation.")
    (license license:expat)))

haskell-9.0-network-conduit-tls

(define-public haskell-9.0-not-gloss
  (package
    (name "haskell-9.0-not-gloss")
    (version "0.7.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/not-gloss/not-gloss-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pw3igxp71v7yrhsvbkkhk81nv9j2hac2wig16cclnq10kpd2h27"))))
    (properties `((upstream-name . "not-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009) haskell-9.0-GLUT)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-bmp)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-spatial-math)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/not-gloss")
    (synopsis "Painless 3D graphics, no affiliation with gloss")
    (description
     "This package intends to make it relatively easy to do simple 3d graphics using high-level primitives.
It is inspired by gloss and attempts to emulate it.
This is an early release and the api will certainly change.
Note that transparency can be controlled by the alpha value: \"makeColor r g b alpha\" but that you must draw objects from back to front for transparency to properly work (just put clear things last).
Also, transparent ellipsoids and cylinders have ugly artifacts, sorry.
Look at the complimentary package not-gloss-examples to get started.")
    (license license:bsd-3)))

haskell-9.0-not-gloss

(define-public haskell-9.0-nvim-hs
  (package
    (name "haskell-9.0-nvim-hs")
    (version "2.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0sbppnphnbygxjns373hyb3hvbwzlv4sq104682bcajd07x6vhmw"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-foreign-store)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-messagepack)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
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

haskell-9.0-nvim-hs

(define-public haskell-9.0-one-liner-instances
  (package
    (name "haskell-9.0-one-liner-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-one-liner)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/mstksg/one-liner-instances#readme")
    (synopsis "Generics-based implementations for common typeclasses")
    (description
     "Provides generics-based implementations for common typeclasses using
Generics.

Please see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>")
    (license license:bsd-3)))

haskell-9.0-one-liner-instances

(define-public haskell-9.0-opml-conduit
  (package
    (name "haskell-9.0-opml-conduit")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opml-conduit/opml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "012cnq24dhsiz6dfm23i1kac2pya50x2gj42cvcdhr8navz7czcb"))))
    (properties `((upstream-name . "opml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-refined)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-timerep)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/opml-conduit")
    (synopsis "Streaming parser/renderer for the OPML 2.0 format.")
    (description
     "This library implements the OPML 2.0 standard (<http://dev.opml.org/spec2.html>) as a 'conduit' parser/renderer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-opml-conduit

(define-public haskell-9.0-ormolu
  (package
    (name "haskell-9.0-ormolu")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ormolu/ormolu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1517z6bi8ifzdmfclmqdiipi6zcnxagymf1sxr43sj2ipkglg2rs"))))
    (properties `((upstream-name . "ormolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ns76yw44hp84lrxdhl23aa2d14jjf4m6fd906672a4b4x3cr64l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/ormolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.0-ormolu

(define-public haskell-9.0-pandoc-lua-marshal
  (package
    (name "haskell-9.0-pandoc-lua-marshal")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-lua-marshal/pandoc-lua-marshal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pn9b7f8dln049k76zb4znscl01qms751y1ln4j8irs50rc1b55j"))))
    (properties `((upstream-name . "pandoc-lua-marshal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-lua)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pandoc/pandoc-lua-marshal")
    (synopsis "Use pandoc types in Lua")
    (description "This package provides functions to marshal and unmarshal
pandoc document types to and from Lua.

The values of most types are pushed to pandoc as \"userdata\"
objects that wrap a stable pointer to the Haskell value;
these objects come with methods to access and modify their
properties.

Sequences are pushed as normal Lua tables, but are
augmented with convenience functions.")
    (license license:expat)))

haskell-9.0-pandoc-lua-marshal

(define-public haskell-9.0-polysemy-fs
  (package
    (name "haskell-9.0-polysemy-fs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-unliftio-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-fs")
    (synopsis "Low level filesystem operations for polysemy.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-polysemy-fs

(define-public haskell-9.0-polysemy-fskvstore
  (package
    (name "haskell-9.0-polysemy-fskvstore")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-fskvstore/polysemy-fskvstore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jpiqq65lv1dp7h2wdl2b2czpax6wqwlv4fqh8vhg26pw49mc2lr"))))
    (properties `((upstream-name . "polysemy-fskvstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-polysemy-kvstore)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-unliftio-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-fskvstore")
    (synopsis "Run a KVStore as a filesystem in polysemy.")
    (description "")
    (license license:expat)))

haskell-9.0-polysemy-fskvstore

(define-public haskell-9.0-polysemy-video
  (package
    (name "haskell-9.0-polysemy-video")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-video/polysemy-video-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lbjjq6q3i6v41ssqy69p4iwvybidrmxcxwjzddbxcrmymr0rmlc"))))
    (properties `((upstream-name . "polysemy-video") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1jjwn6ysygc3dz963zqhlmcqvhv79ll7kp6mbpm73fhad4jbrfvs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-media-timestamp)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-media-timestamp-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-turtle)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/polysemy-video")
    (synopsis "Experimental video processing DSL for polysemy.")
    (description "Experimental video processing DSL for polysemy.")
    (license license:expat)))

haskell-9.0-polysemy-video

(define-public haskell-9.0-queue-sheet
  (package
    (name "haskell-9.0-queue-sheet")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/queue-sheet/queue-sheet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14ih4j09r30p0a75na833jq5ar0wfjm1f7qn6hfyqr4hjyqyfwfk"))))
    (properties `((upstream-name . "queue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("3" "00waw06ql64j097i6156fjw5glv3cz5ni9i0j271wzc5zj1a6p4r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-ginger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-ttc)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/queue-sheet-haskell#readme")
    (synopsis "queue sheet utility")
    (description
     "This package provides a utility for creating queue sheets.  Please see the
README on GitHub at
<https://github.com/ExtremaIS/queue-sheet-haskell#readme>.")
    (license license:expat)))

haskell-9.0-queue-sheet

(define-public haskell-9.0-rasterific-svg
  (package
    (name "haskell-9.0-rasterific-svg")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rasterific-svg/rasterific-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i0pl1hin1ipi3l0074ywd1khacpbvz3x0frx0j0hmbfiv4n3nq2"))))
    (properties `((upstream-name . "rasterific-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1938sp9m0yi7ypxk74bzrbkp9b4yk6hsaqhlhbraf9yb7w61228v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-FontyFruity)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-Rasterific)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-svg-tree)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-9.0-rasterific-svg

(define-public haskell-9.0-rerebase
  (package
    (name "haskell-9.0-rerebase")
    (version "1.15.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rerebase/rerebase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jxlssdxgh5ldgkdpmhpk8vy5fxmq95171b3jl57r9m2f7zqrcd2"))))
    (properties `((upstream-name . "rerebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-rebase)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/rerebase ")
    (synopsis
     "Reexports from \"base\" with a bunch of other standard libraries")
    (description
     "A rich drop-in replacement for \\\"base\\\".
For details and docs please visit
<https://github.com/nikita-volkov/rerebase the project's GitHub page>.")
    (license license:expat)))

haskell-9.0-rerebase

(define-public haskell-9.0-sdl2-ttf
  (package
    (name "haskell-9.0-sdl2-ttf")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-ttf/sdl2-ttf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sm5lrdif5wmz3iah1658zlr7yr45d1hfihb2hdxdia4h7z1j0mn"))))
    (properties `((upstream-name . "sdl2-ttf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-sdl2)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <https://github.com/libsdl-org/SDL_ttf>.")
    (license license:bsd-3)))

haskell-9.0-sdl2-ttf

(define-public haskell-9.0-servant-auth
  (package
    (name "haskell-9.0-servant-auth")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth/servant-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ggnlknhzdpf49zjm1qpzm12gckss7yr8chmzm6h6ycigz77ndd"))))
    (properties `((upstream-name . "servant-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0qgaq8if56fh1ydx8crb24p5cb5axx3n1lnx8klvvkamwrbr870a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-jose)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant/servant-auth#readme")
    (synopsis "Authentication combinators for servant")
    (description
     "This package provides an @@Auth@@ combinator for 'servant'. This combinator
allows using different authentication schemes in a straightforward way,
and possibly in conjunction with one another.

'servant-auth' additionally provides concrete authentication schemes, such
as Basic Access Authentication, JSON Web Tokens, and Cookies.

For more details on how to use this, see the <http://github.com/haskell-servant/servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.0-servant-auth

(define-public haskell-9.0-servant-openapi3
  (package
    (name "haskell-9.0-servant-openapi3")
    (version "2.0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-openapi3/servant-openapi3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zcyqga4hbdyk34368108vv9vavzdhv26xphas7yppada2sshfay"))))
    (properties `((upstream-name . "servant-openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0xvs5a9zsg32iziznvvjhfji577xmza419xk0cy1hwamw17f43mi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-openapi3)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-singleton-bool)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/servant-openapi3")
    (synopsis
     "Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs. The core of the
project is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).
This library implements v3.0 of the spec. Unlike Servant it is language-agnostic and thus is
quite popular among developers in different languages. It has also existed for a longer time
and has more helpful tooling.

This package provides means to generate a Swagger/OAS specification for a Servant API
and also to partially test whether an API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-9.0-servant-openapi3

(define-public haskell-9.0-servant-swagger
  (package
    (name "haskell-9.0-servant-swagger")
    (version "1.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger/servant-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kvnjq3iqc8xbgmbaz881r48vj4cpzx7pkwdgwbhqlmhg808bfgl"))))
    (properties `((upstream-name . "servant-swagger") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-singleton-bool)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-swagger2)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/haskell-servant/servant/tree/master/servant-swagger#readme")
    (synopsis
     "Generate a Swagger/OpenAPI/OAS 2.0 specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs. The core of the
project is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).
This library implements v2.0 of the spec. Unlike Servant it is language-agnostic and thus is
quite popular among developers in different languages. It has also existed for a longer time
and has more helpful tooling.

This package provides means to generate a Swagger/OAS specification for a Servant API
and also to partially test whether an API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-9.0-servant-swagger

(define-public haskell-9.0-siggy-chardust
  (package
    (name "haskell-9.0-siggy-chardust")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/siggy-chardust/siggy-chardust-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hssby6mak0bq1fqv47hp6rnw51yz1kgzgsmnvh2k9jfq0y0qwwz"))))
    (properties `((upstream-name . "siggy-chardust") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lknm1jr6h5qpixc727aj3zbmj4ia21r9lb8gzj50iildgmfk33b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme")
    (synopsis "Rounding rationals to significant digits and decimal places.")
    (description
     "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-siggy-chardust

(define-public haskell-9.0-skylighting
  (package
    (name "haskell-9.0-skylighting")
    (version "0.12.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08wml20cphj5idv5f20cz0jx7n8f037gy7x5axak83sbd98k71nw"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.0-skylighting

(define-public haskell-9.0-smtp-mail
  (package
    (name "haskell-9.0-smtp-mail")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smtp-mail/smtp-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q81m4mi43cd0f1azm6984xw3qw2s6ygszdn86j5z3g5sjj5dax4"))))
    (properties `((upstream-name . "smtp-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-mime-mail)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-bsd)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jhickner/smtp-mail")
    (synopsis "Simple email sending via SMTP")
    (description
     "This packages provides a simple interface for mail over SMTP. PLease see the README for more information.")
    (license license:bsd-3)))

haskell-9.0-smtp-mail

(define-public haskell-9.0-soap
  (package
    (name "haskell-9.0-soap")
    (version "0.2.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/soap/soap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xmiabnx814rwdwrcipv0kja6ljgwqr4x58sa8s07nrs3ph8xz6d"))))
    (properties `((upstream-name . "soap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1p34yyxln56n75m7hha75p1qm73vjyxbm54lwq566ayqf7dikp2y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-configurator)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-iconv)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-xml-conduit-writer)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "SOAP client tools")
    (description
     "Tools to build SOAP clients using xml-conduit.

A mildly-complicated example:

> import Network.SOAP
> import Network.SOAP.Transport.HTTP
>
> import Text.XML.Writer
> import Text.XML.Stream.Parse as Parse
> import           Data.Text (Text)
> import qualified Data.Text as T
>
> main :: IO ()
> main = do
>     -- Initial one-time preparations.
>     transport <- initTransport \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- Making queries
>     activeStaff <- listStaff transport True
>     print activeStaff
>
> data Person = Person Text Int deriving Show
>
> listStaff :: Transport -> Bool -> IO [Person]
> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser
>     where
>         body = element \"request\" $ element \"listStaff\" $ do
>                    element \"active\" active
>                    element \"order\" $ T.pack \"age\"
>                    element \"limit\" (10 :: Int)
>
>         parser = StreamParser $ force \"no people\" $ tagNoAttr \"people\" $ Parse.many parsePerson
>
>         parsePerson = tagName \"person\" (requireAttr \"age\") $ \\age -> do
>                           name <- Parse.content
>                           return $ Person name (read . T.unpack $ age)

Notice: to invoke HTTPS services you need to initialize a transport from soap-tls or soap-openssl.

Full examples available at source repo: <https://bitbucket.org/dpwiz/haskell-soap/src/HEAD/soap/examples/>")
    (license license:expat)))

haskell-9.0-soap

(define-public haskell-9.0-splint
  (package
    (name "haskell-9.0-splint")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/splint/splint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04887k7ys72gkjkw0l1w3sqxwydk20gvfpl0qfwkrx8xp705710l"))))
    (properties `((upstream-name . "splint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hlint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/splint")
    (synopsis "HLint as a GHC source plugin.")
    (description
     "Warning: This package is not maintained anymore.

Splint makes HLint available as a GHC source plugin. To use it, pass
@@-fplugin=Splint@@ to GHC. Any options passed to Splint are passed through to
HLint. For example you can use @@-fplugin-opt=Splint:'--ignore=Use concatMap'@@
to ignore the \"Use @@concatMap@@\" suggestion.")
    (license license:isc)))

haskell-9.0-splint

(define-public haskell-9.0-sydtest-discover
  (package
    (name "haskell-9.0-sydtest-discover")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "Automatic test suite discovery for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-sydtest-discover

(define-public haskell-9.0-tasty-test-reporter
  (package
    (name "haskell-9.0-tasty-test-reporter")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-test-reporter/tasty-test-reporter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aail968niiy4yicbb0nfd7z46vxgp5zf1k9ndh4smskihz8kjin"))))
    (properties `((upstream-name . "tasty-test-reporter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-concurrent-output)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-junit-xml)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/stoeffel/tasty-test-reporter#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/stoeffel/tasty-test-reporter>.")
    (license license:bsd-3)))

haskell-9.0-tasty-test-reporter

(define-public haskell-9.0-time-manager
  (package
    (name "haskell-9.0-time-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Scalable timer")
    (description "Scalable timer functions provided by a timer manager.")
    (license license:expat)))

haskell-9.0-time-manager

(define-public haskell-9.0-tls-session-manager
  (package
    (name "haskell-9.0-tls-session-manager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-9.0-tls-session-manager

(define-public haskell-9.0-tmp-postgres
  (package
    (name "haskell-9.0-tmp-postgres")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-generic-monoid)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-port-utils)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-postgres-options)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/tmp-postgres#readme")
    (synopsis "Start and stop a temporary postgres")
    (description "Start and stop a temporary postgres. See README.md")
    (license license:bsd-3)))

haskell-9.0-tmp-postgres

(define-public haskell-9.0-wai-middleware-caching-redis
  (package
    (name "haskell-9.0-wai-middleware-caching-redis")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-redis/wai-middleware-caching-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k3wpw9prhcac8iavzr0xdcwl8khkxks4kji03zz1n10vf1kgxbg"))))
    (properties `((upstream-name . "wai-middleware-caching-redis")
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
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hedis)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-redis#readme")
    (synopsis "Cache Wai Middleware using Redis backend")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-wai-middleware-caching-redis

(define-public haskell-9.0-wai-rate-limit-redis
  (package
    (name "haskell-9.0-wai-rate-limit-redis")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-rate-limit-redis/wai-rate-limit-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gizywhdrpngs5l6qh5ggnnfkcgplwsigcjj3z8l7vwif74j6qsd"))))
    (properties `((upstream-name . "wai-rate-limit-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hedis)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-rate-limit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Redis backend for rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-9.0-wai-rate-limit-redis

(define-public haskell-9.0-webgear-core
  (package
    (name "haskell-9.0-webgear-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webgear-core/webgear-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ah01znv18ll9lhlwn81yxvdy9q1f0xl2pcy4k24d0blrrva0nl7"))))
    (properties `((upstream-name . "webgear-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-arrows)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-jose)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mime-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-webgear/webgear#readme")
    (synopsis "Composable, type-safe library to build HTTP APIs")
    (description
     "WebGear is a library to for building composable, type-safe HTTP APIs.
See the documentation of WebGear.Core module to get started.")
    (license license:mpl2.0)))

haskell-9.0-webgear-core

(define-public haskell-9.0-within
  (package
    (name "haskell-9.0-within")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-like)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/within")
    (synopsis "A value within another path.")
    (description
     "Simple newtype for representing a value within a well-typed directory. Useful for when you need to jump between directories and change filenames independently. Uses the path library.")
    (license license:expat)))

haskell-9.0-within

(define-public haskell-9.0-wuss
  (package
    (name "haskell-9.0-wuss")
    (version "1.1.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wuss/wuss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i7y6kqynbc5qbl091ihdfn9ak8ny8rdp83svl06m6ijvphjqskq"))))
    (properties `((upstream-name . "wuss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wuss")
    (synopsis "Secure WebSocket (WSS) clients")
    (description
     "Wuss is a library that lets you easily create secure WebSocket clients over
the WSS protocol. It is a small addition to
<https://hackage.haskell.org/package/websockets the websockets package> and
is adapted from existing solutions by
<https://gist.github.com/jaspervdj/7198388 @@jaspervdj>,
<https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @@mpickering>, and
<https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @@elfenlaid>.")
    (license license:expat)))

haskell-9.0-wuss

(define-public haskell-9.0-xlsx-tabular
  (package
    (name "haskell-9.0-xlsx-tabular")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xlsx-tabular/xlsx-tabular-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgxs1a0prnq6ljvv1g3rs39565w4609hv3ckq0gk0fz85yqkpa8"))))
    (properties `((upstream-name . "xlsx-tabular") (hidden? . #f)))
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
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-xlsx)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kkazuo/xlsx-tabular")
    (synopsis "Xlsx table cell value extraction utility")
    (description "
Convenience utility to read xlsx tabular cells.

You can extract the values from xlsx files
table rows to JSON format by the heuristics or
your custom function.")
    (license license:bsd-3)))

haskell-9.0-xlsx-tabular

(define-public haskell-9.0-xml-html-qq
  (package
    (name "haskell-9.0-xml-html-qq")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-html-qq/xml-html-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ni354ihiaax7dlghq0qsili0sqy4z9vc3a75i24z2m59hgvnbhs"))))
    (properties `((upstream-name . "xml-html-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-from-sum)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-heterocephalus)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-html-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-xml-html-qq

(define-public haskell-9.0-yamlparse-applicative
  (package
    (name "haskell-9.0-yamlparse-applicative")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yamlparse-applicative/yamlparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b4qz5qy7349bx7kkz9nf2p13hr8a2xyirsw92y4vigpjd16fvs4"))))
    (properties `((upstream-name . "yamlparse-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-text)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/yamlparse-applicative#readme")
    (synopsis "Declaritive configuration parsing with free docs")
    (description "See https://github.com/NorfairKing/yamlparse-applicative")
    (license license:expat)))

haskell-9.0-yamlparse-applicative

