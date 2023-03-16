;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage019)
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
(define-public haskell-8.6-HandsomeSoup
  (package
    (name "haskell-8.6-HandsomeSoup")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HandsomeSoup/HandsomeSoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yzfrvivvxwlaiqwbjx27rxwq9mmnnpb512vwklzw7nyzg9xmqha"))))
    (properties `((upstream-name . "HandsomeSoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hxt-http)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-8.6-HandsomeSoup

(define-public haskell-8.6-aeson-diff
  (package
    (name "haskell-8.6-aeson-diff")
    (version "1.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-diff/aeson-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pim103mywlhxssrhr0ca0gsvql52g799fk73bdj5h31ziibdsi4"))))
    (properties `((upstream-name . "aeson-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xdp02sh3mmdys136h1pym4kd4q9kn0dcqhjyir5apccw3d58zg0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-edit-distance-vector)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/thsutton/aeson-diff")
    (synopsis "Extract and apply patches to JSON documents.")
    (description
     "
This is a small library for working with changes to JSON documents. It
includes a library and two command-line executables in the style of the
diff(1) and patch(1) commands available on many systems.
")
    (license license:bsd-3)))

haskell-8.6-aeson-diff

(define-public haskell-8.6-apecs-physics
  (package
    (name "haskell-8.6-apecs-physics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-physics/apecs-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jqylv937c4y4jygqyb127n9lvvmss52pz7rcwq7x3qc3k5mwgnh"))))
    (properties `((upstream-name . "apecs-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-apecs)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-inline-c)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "2D physics for apecs")
    (description
     "2D physics for apecs. Uses Chipmunk physics library under the hood.")
    (license license:bsd-3)))

haskell-8.6-apecs-physics

(define-public haskell-8.6-approximate
  (package
    (name "haskell-8.6-approximate")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate/approximate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "016i37c5imb0n8gsk7gzyiq8dhkjv0xnn5315kmn6lnrhpfm7yyk"))))
    (properties `((upstream-name . "approximate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("1" "0r81fnsyfc8y7j2y2isjayq4gf6m9vsc2chw37g89zmknfsnilb7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-log-domain)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-safecopy)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-8.6-approximate

(define-public haskell-8.6-arbor-lru-cache
  (package
    (name "haskell-8.6-arbor-lru-cache")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)))
    (home-page "https://github.com/arbor/arbor-lru-cache#readme")
    (synopsis "LRU cache based on STM")
    (description
     "Please see the README on GitHub at <https://github.com/arbor/arbor-lru-cache#readme>")
    (license license:expat)))

haskell-8.6-arbor-lru-cache

(define-public haskell-8.6-beam-postgres
  (package
    (name "haskell-8.6-beam-postgres")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-postgres/beam-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dxnp6zsyy30vrlv15iw4qwyzwawg468zqqsjnzk9h3g9k9xzj3v"))))
    (properties `((upstream-name . "beam-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-beam-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-beam-migrate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page
     "http://tathougies.github.io/beam/user-guide/backends/beam-postgres")
    (synopsis "Connection layer between beam and postgres")
    (description
     "Beam driver for <https://www.postgresql.org/ PostgreSQL>, an advanced open-source RDBMS")
    (license license:expat)))

haskell-8.6-beam-postgres

(define-public haskell-8.6-beam-sqlite
  (package
    (name "haskell-8.6-beam-sqlite")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-sqlite/beam-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09va580nv05xavcrqw9drh86xgqgzl98bvh707xjn1d6wh3miizw"))))
    (properties `((upstream-name . "beam-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-beam-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-beam-migrate)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-sqlite-simple)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page
     "http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/")
    (synopsis "Beam driver for SQLite")
    (description
     "Beam driver for the <https://sqlite.org/ SQLite> embedded database.
See <http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/ here>
for more information")
    (license license:expat)))

haskell-8.6-beam-sqlite

(define-public haskell-8.6-bits-extra
  (package
    (name "haskell-8.6-bits-extra")
    (version "0.0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f29jn8gxmi9nrwnrykq4z88cg8zsknbw7licmf44hlid0s5glf5"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-8.6-bits-extra

(define-public haskell-8.6-brittany
  (package
    (name "haskell-8.6-brittany")
    (version "0.12.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brittany/brittany-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nw7ymdb7xam634w42l1xjgyvpla8grcg02aj19fscw2fn9gfh7z"))))
    (properties `((upstream-name . "brittany") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-brittany-dev-lib" "-f-brittany-test-perf")
       #:cabal-revision
       ("2" "0pfrm5vvh7x94f8gy8ka6rmq6yk6xxxgba68rd91bk8lbjxsmkxl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-butcher)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-czipwith)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-data-tree-print)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-monad-memo)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-multistate)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unsafe)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/lspitzner/brittany/")
    (synopsis "Haskell source code formatter")
    (description
     "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.

If you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;

The implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.6-brittany

(define-public haskell-8.6-bsb-http-chunked
  (package
    (name "haskell-8.6-bsb-http-chunked")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bsb-http-chunked/bsb-http-chunked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z0f18yc6zlwh29c6175ivfcin325lvi4irpvv0n3cmq7vi0k0ql"))))
    (properties `((upstream-name . "bsb-http-chunked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15hg352id2f4x0dnvv47bdiz6gv5hp5a2mki9yzmhc7ajpk31mdd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://github.com/sjakobi/bsb-http-chunked")
    (synopsis "Chunked HTTP transfer encoding for bytestring builders")
    (description
     "This library contains functions for encoding [bytestring
builders](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString-Builder.html#t:Builder)
for [chunked HTTP\\/1.1 transfer](https://en.wikipedia.org/wiki/Chunked_transfer_encoding).

This functionality was extracted from
the [blaze-builder](http://hackage.haskell.org/package/blaze-builder)
package.")
    (license license:bsd-3)))

haskell-8.6-bsb-http-chunked

(define-public haskell-8.6-bv-little
  (package
    (name "haskell-8.6-bv-little")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bv-little/bv-little-" version
                    ".tar.gz"))
              (sha256
               (base32
                "034riqlgkccyl5lvc593v3dyszvqy2vqikk80qm6lw30pkmbcdnr"))))
    (properties `((upstream-name . "bv-little") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-keys)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mono-traversable-keys)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-text-show)))
    (home-page "https://github.com/recursion-ninja/bv-little")
    (synopsis "Efficient little-endian bit vector library")
    (description
     "
This package contains a time- and space- efficient implementation of /little-endian, immutable/ bit vectors. Provides implementations of applicable typeclasses and numeric conversions.

The declared cost of each operation is either worst-case or amortized.

For an implementation of /big-endian, immutable/ bit vectors use the <https://hackage.haskell.org/package/bv bv> package.

For an implementation of /little-endian, mutable/ bit vectors, use the <https://hackage.haskell.org/package/bitvec bitvec> package.")
    (license license:bsd-3)))

haskell-8.6-bv-little

(define-public haskell-8.6-cacophony
  (package
    (name "haskell-8.6-cacophony")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cacophony/cacophony-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w9v04mdyzvwndqfb8my9a82b51avgwfnl6g7w89xj37ax9ariaj"))))
    (properties `((upstream-name . "cacophony") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-monad-coroutine)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-cacophony

(define-public haskell-8.6-cheapskate-highlight
  (package
    (name "haskell-8.6-cheapskate-highlight")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-highlight/cheapskate-highlight-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6k694gmnx7h8ix79z8scsdl65zbilxni1vjr90ka2fdfrazxss"))))
    (properties `((upstream-name . "cheapskate-highlight") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c8kxqdqf0j962xjdrrjfcbjsl0c1kax31rjykymv7w16d6hmlj4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-cheapskate)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-highlighting-kate)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-8.6-cheapskate-highlight

(define-public haskell-8.6-cheapskate-lucid
  (package
    (name "haskell-8.6-cheapskate-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-lucid/cheapskate-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibjfy5dbkizg8cw4avhwl62xpk735a1a7bc0nkhf9zxpq9fb0pm"))))
    (properties `((upstream-name . "cheapskate-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-cheapskate)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.6-cheapskate-lucid

(define-public haskell-8.6-classy-prelude
  (package
    (name "haskell-8.6-classy-prelude")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nm4lygxqb1wq503maki6dsah2gpn5rd22jmbwjxfwyzgyqy9fnk"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jivh1bmcvqn6bhh5z8x69v93zjcriklljm7gx342d8k5d5rsf4s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-basic-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-chunked-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-mutable-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-8.6-classy-prelude

(define-public haskell-8.6-compensated
  (package
    (name "haskell-8.6-compensated")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compensated/compensated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "089xj9j3gznxz66ywapjd9kasjcnv197ipj4azgjfbpl2y11l8dg"))))
    (properties `((upstream-name . "compensated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("2" "0yqmskvvhcwxj1d89hjc67pw3zfgm5n2s28f1lyq5qf1nhaf60gv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-log-domain)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-safecopy)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-8.6-compensated

(define-public haskell-8.6-connection
  (package
    (name "haskell-8.6-connection")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-socks)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-system)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-8.6-connection

(define-public haskell-8.6-credential-store
  (package
    (name "haskell-8.6-credential-store")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-dbus)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/credential-store#readme")
    (synopsis "Library to access secure credential storage providers")
    (description
     "Cross-platform library for storing secrets.

Uses Windows credential store, gnome-keyring or kwallet as backends.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-credential-store

(define-public haskell-8.6-diagrams-lib
  (package
    (name "haskell-8.6-diagrams-lib")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gqrcyjyp3p78vmfxvhfjbkkl2xvwcv3qyyinbdcmalb5zb8vyy6"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cqhqm2nz2ls00pfhx8hz6z6g17qhl380h24wp4d6l5msiw7gxq4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-active)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-dual-tree)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-fingertree)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-intervals)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-numeric-extras)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-diagrams-lib

(define-public haskell-8.6-dom-parser
  (package
    (name "haskell-8.6-dom-parser")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dom-parser/dom-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hra4sh34dr1gv4z55dg3f8s2g9l2qb7nlb0j4w0imr71fp5rqfp"))))
    (properties `((upstream-name . "dom-parser") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-xml-lens)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeable/dom-parser")
    (synopsis "Simple monadic DOM parser")
    (description "")
    (license license:expat)))

haskell-8.6-dom-parser

(define-public haskell-8.6-download
  (package
    (name "haskell-8.6-download")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-feed)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/download")
    (synopsis "High-level file download based on URLs")
    (description "High-level file download based on URLs")
    (license license:bsd-3)))

haskell-8.6-download

(define-public haskell-8.6-dublincore-xml-conduit
  (package
    (name "haskell-8.6-dublincore-xml-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-timerep)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/dublincore-xml-conduit")
    (synopsis
     "XML streaming parser/renderer for the Dublin Core standard elements.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-dublincore-xml-conduit

(define-public haskell-8.6-ekg
  (package
    (name "haskell-8.6-ekg")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ekg-core)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-ekg-json)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-snap-server)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tibbe/ekg")
    (synopsis "Remote monitoring of processes")
    (description
     "This library lets you remotely monitor a running process over HTTP.
It provides a simple way to integrate a monitoring server into any
application.")
    (license license:bsd-3)))

haskell-8.6-ekg

(define-public haskell-8.6-filecache
  (package
    (name "haskell-8.6-filecache")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filecache/filecache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17fbjdy2cicrd956317jj7fir0bd621c4zb5sb4991ph7jsah0n5"))))
    (properties `((upstream-name . "filecache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-strict-base-types)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "A cache system associating values to files.")
    (description
     "A cache system, that works by associating computation results with file names. When the files are modified, the cache entries are discarded.")
    (license license:bsd-3)))

haskell-8.6-filecache

(define-public haskell-8.6-fsnotify-conduit
  (package
    (name "haskell-8.6-fsnotify-conduit")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify-conduit/fsnotify-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kh1y1p4dw2yhxrl1rrkmpkvm3q5nq12cwl8dfcscrkx3wqhz683"))))
    (properties `((upstream-name . "fsnotify-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "https://github.com/fpco/fsnotify-conduit#readme")
    (synopsis "Get filesystem notifications as a stream of events")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>")
    (license license:expat)))

haskell-8.6-fsnotify-conduit

(define-public haskell-8.6-geojson
  (package
    (name "haskell-8.6-geojson")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/geojson/geojson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "100k6j57r14yxxhfpqlgm9q1x5hrj3qdzm7cpbs5rfyqi5g7kyrj"))))
    (properties `((upstream-name . "geojson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wlcx9fm46502kdsnlr3m0iprrg9qkig6rby32d72lisp7nhqhr7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-validation)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/indicatrix/hs-geojson")
    (synopsis "A thin GeoJSON Layer above the aeson library")
    (description
     "A thin GeoJSON Layer above the aeson library.

It currently conforms to version 1.0 of the GeoJSON spec which can be found here:

<https://tools.ietf.org/html/rfc7946>")
    (license license:bsd-3)))

haskell-8.6-geojson

(define-public haskell-8.6-ghcid
  (package
    (name "haskell-8.6-ghcid")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghcid/ghcid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qrj6is1f6jnx9m2g7cp2009dik7inzf5yqlvqv4pwzzxp0nhl3a"))))
    (properties `((upstream-name . "ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-terminal-size)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-8.6-ghcid

(define-public haskell-8.6-gi-cairo
  (package
    (name "haskell-8.6-gi-cairo")
    (version "1.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo/gi-cairo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y479ll6pzf5qjf18ziqgvfi6zq4jyajkq9zlggmh9pjhxpwj8nh"))))
    (properties `((upstream-name . "gi-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-cairo

(define-public haskell-8.6-gi-glib
  (package
    (name "haskell-8.6-gi-glib")
    (version "2.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-glib/gi-glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wsix558lj58i8mdwikb2q78941dxl3pchhd75xkk5hq8rknp37x"))))
    (properties `((upstream-name . "gi-glib") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-glib

(define-public haskell-8.6-groundhog-inspector
  (package
    (name "haskell-8.6-groundhog-inspector")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-inspector/groundhog-inspector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4smiydqqgpfqcyq77d2g0cvglanqfhlhx3y1k9n3kx94yss5a2"))))
    (properties `((upstream-name . "groundhog-inspector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsqlite" "-f-postgresql" "-f-mysql")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-groundhog)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-groundhog-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-groundhog-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-regex-compat)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/lykahb/groundhog")
    (synopsis "Type-safe datatype-database mapping library.")
    (description
     "This library analyzes database tables and creates corresponding datatypes and their mappings for Groundhog <https://www.fpcomplete.com/user/lykahb/groundhog>. See examples at <https://github.com/lykahb/groundhog/tree/master/groundhog-inspector/examples>.")
    (license license:bsd-3)))

haskell-8.6-groundhog-inspector

(define-public haskell-8.6-hamilton
  (package
    (name "haskell-8.6-hamilton")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamilton/hamilton-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06yvmm9641v74kd265csycwp6ywyc19mx0r0csycljcfghhj6xiw"))))
    (properties `((upstream-name . "hamilton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-ad)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-typelits-witnesses)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-vty)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hamilton#readme")
    (synopsis
     "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD")
    (description
     "See README.md (or read online at <https://github.com/mstksg/hamilton#readme>)")
    (license license:bsd-3)))

haskell-8.6-hamilton

(define-public haskell-8.6-hasql-pool
  (package
    (name "haskell-8.6-hasql-pool")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0agl5ilp0amsp9pidhmgivdyaq43x3xi7hb80c91n9l92pv6163k"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hasql)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-pool ")
    (synopsis "A pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-8.6-hasql-pool

(define-public haskell-8.6-hasql-transaction
  (package
    (name "haskell-8.6-hasql-transaction")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13d5zisr34bdbiypvpcb114d4c9yi6pyb9wnhigqpwd90vzpzsb5"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hasql)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction")
    (synopsis
     "A composable abstraction over the retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-8.6-hasql-transaction

(define-public haskell-8.6-hedis
  (package
    (name "haskell-8.6-hedis")
    (version "0.12.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedis/hedis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n83zwg011n9w2v1zz4mwpms9jh3c8mk700zya4as1jg83748xww"))))
    (properties `((upstream-name . "hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "01m2ww7bsjjw5j291mpvy8qlx8mp14558yvpavfqxcxd9hb9pvaj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-scanner)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
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

haskell-8.6-hedis

(define-public haskell-8.6-hledger-ui
  (package
    (name "haskell-8.6-hledger-ui")
    (version "1.14.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bhixvzxv7d0kwb4ppv3sc98wjkc58kna9f91202s63sbikahlcr"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-brick)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-hledger)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hledger-lib)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-microlens-platform)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-zipper)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-vty)))
    (home-page "http://hledger.org")
    (synopsis "Curses-style user interface for the hledger accounting tool")
    (description
     "This is hledger's curses-style interface.
It is simpler and more convenient for browsing data than the command-line interface,
but lighter and faster than hledger-web.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hledger-ui

(define-public haskell-8.6-hmatrix-backprop
  (package
    (name "haskell-8.6-hmatrix-backprop")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-backprop/hmatrix-backprop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nknwamc51f3d1syy1wi8fkvlx40riwi7x94yh34y0fzgddgjl2k"))))
    (properties `((upstream-name . "hmatrix-backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-backprop)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-microlens-platform)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-vinyl)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hmatrix-backprop#readme")
    (synopsis "hmatrix operations lifted for backprop")
    (description
     "hmatrix operations lifted for backprop, along with orphan instances.

Meant to act as a drop-in replacement to the API of
Numeric.LinearAlgebra.Static.  Just change your imports, and your
functions are automatically backpropagatable.

See README on Github at <https://github.com/mstksg/hmatrix-backprop#readme>")
    (license license:bsd-3)))

haskell-8.6-hmatrix-backprop

(define-public haskell-8.6-hschema-aeson
  (package
    (name "haskell-8.6-hschema-aeson")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hschema-aeson/hschema-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z85bsiynmrj46l3l24lcms5icj0a8bsvnvadbqqb8swq8j8npsc"))))
    (properties `((upstream-name . "hschema-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-convertible)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hschema)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hschema-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hschema-quickcheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alonsodomin/haskell-schema#readme")
    (synopsis "Describe schemas for your Haskell data types.")
    (description
     "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-hschema-aeson

(define-public haskell-8.6-hsdev
  (package
    (name "haskell-8.6-hsdev")
    (version "0.3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsdev/hsdev-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03v1lls7dv134675x10rgp4nla5a9dgczf4g78vrx488zf50rf1v"))))
    (properties `((upstream-name . "hsdev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-docs" "-fhlint")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-cpphs)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-names)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hformat)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-simple-log)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-sqlite-simple)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-text-region)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-traverse-with-class)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/mvoidex/hsdev")
    (synopsis "Haskell development library")
    (description
     "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references, hayoo search etc.")
    (license license:bsd-3)))

haskell-8.6-hsdev

(define-public haskell-8.6-hw-fingertree
  (package
    (name "haskell-8.6-hw-fingertree")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ghnnnbbrdy9s84rcw37v3yvlrw5awgdmcrzh0xd5dxpw557psf"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)))
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

haskell-8.6-hw-fingertree

(define-public haskell-8.6-hw-fingertree-strict
  (package
    (name "haskell-8.6-hw-fingertree-strict")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree-strict/hw-fingertree-strict-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fy492nl10a7p9a0b0jrqj1yiar8wir2g3qms2mmd814brbfkm80"))))
    (properties `((upstream-name . "hw-fingertree-strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1s7fcimgyf0vskkkms371icazjkkmscv9bkz2ysdhx708bza96v5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
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

haskell-8.6-hw-fingertree-strict

(define-public haskell-8.6-hw-int
  (package
    (name "haskell-8.6-hw-int")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-int/hw-int-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0im0fk23v6gh6hwfr35swai5fnvkpw0rrssc3s0ac978c899a8iz"))))
    (properties `((upstream-name . "hw-int") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)))
    (home-page "http://github.com/haskell-works/hw-int#readme")
    (synopsis "Additional facilities for Integers")
    (description "Additional faciltiies for Integers. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-int

(define-public haskell-8.6-hw-mquery
  (package
    (name "haskell-8.6-hw-mquery")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-mquery/hw-mquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vcxyin3cyc0pkhbfjyjm4r44yxk17gny5jhfg6hdlgivp150yij"))))
    (properties `((upstream-name . "hw-mquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Monadic query DSL")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-mquery

(define-public haskell-8.6-hw-parser
  (package
    (name "haskell-8.6-hw-parser")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-parser/hw-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "170dk943s2jbqqggxxfjxj23fbfk1532hgsrg63mr0v1ag9hlz1i"))))
    (properties `((upstream-name . "hw-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Simple parser support. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-parser

(define-public haskell-8.6-inliterate
  (package
    (name "haskell-8.6-inliterate")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inliterate/inliterate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17z3s5w49x8j57v6myz2r6i0knnm60ydg3y8d0v008xrwdjcr5id"))))
    (properties `((upstream-name . "inliterate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-cheapskate)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-lucid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-plotlyhs)))
    (home-page "https://github.com/diffusionkinetics/open/inliterate")
    (synopsis "Interactive literate programming")
    (description
     "Evaluate markdown code blocks to show the results of running the code.")
    (license license:expat)))

haskell-8.6-inliterate

(define-public haskell-8.6-ixset-typed
  (package
    (name "haskell-8.6-ixset-typed")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed/ixset-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "135cfc8d39qv02sga03gsym1yfajf0l5ci1s6q9n1xpb9ignblx8"))))
    (properties `((upstream-name . "ixset-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kfklsbjn4gmx76vl7vm1s149f13h2p537930yaq8s2671lzc79p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-safecopy)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://hackage.haskell.org/package/ixset-typed")
    (synopsis "Efficient relational queries on Haskell sets.")
    (description
     "This Haskell package provides a data structure of sets that are indexed
by potentially multiple indices.

Sets can be created, modified, and queried in various ways.

The package is a variant of the <https://hackage.haskell.org/package/ixset ixset>
package. The ixset package makes use
of run-time type information to find a suitable index on a query, resulting
in possible run-time errors when no suitable index exists. In ixset-typed,
the types of all indices available or tracked in the type system.
Thus, ixset-typed should be safer to use than ixset, but in turn requires
more GHC extensions.

At the moment, the two packages are relatively compatible. As a consequence
of the more precise types, a few manual tweaks are necessary when switching
from one to the other, but the interface is mostly the same.")
    (license license:bsd-3)))

haskell-8.6-ixset-typed

(define-public haskell-8.6-lackey
  (package
    (name "haskell-8.6-lackey")
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lackey/lackey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0sch6xpmkb3941bfv7g3qjvgsm9z74ra4z24y22j8w264naag601"))))
    (properties `((upstream-name . "lackey") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)))
    (home-page "https://github.com/tfausak/lackey#readme")
    (synopsis "Generate Ruby clients from Servant APIs.")
    (description "Lackey generates Ruby clients from Servant APIs.")
    (license license:expat)))

haskell-8.6-lackey

(define-public haskell-8.6-lambdabot-irc-plugins
  (package
    (name "haskell-8.6-lambdabot-irc-plugins")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lambdabot-irc-plugins/lambdabot-irc-plugins-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m0dmggmri8imzm15qf5xhzha5ww0qxzg9r3w826z57fwpsql5kh"))))
    (properties `((upstream-name . "lambdabot-irc-plugins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-lambdabot-core)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://wiki.haskell.org/Lambdabot")
    (synopsis "IRC plugins for lambdabot.")
    (description "Lambdabot is an IRC bot written over several years by
those on the #haskell IRC channel.

Provided plugins:

[irc] Lets lambdabot connect to IRC.

[localtime] Check user's local time.

[log] Log IRC channels.

[topic] Modify channel topics.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-lambdabot-irc-plugins

(define-public haskell-8.6-lsp-test
  (package
    (name "haskell-8.6-lsp-test")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-test/lsp-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "195p9m4992l01k8xsc8yxwsx3g74xfn6rdi00bwlzxw4ijy06lfi"))))
    (properties `((upstream-name . "lsp-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wga4jxmznf3iyr04mbv45lk8mi6cq5zgs48rmnmgvah5cs5aldj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-parse)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-lsp)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/bubba/lsp-test#readme")
    (synopsis "Functional test framework for LSP servers.")
    (description
     "A test framework for writing tests against
<https://microsoft.github.io/language-server-protocol/ Language Server Protocol servers>.
@@Language.Haskell.LSP.Test@@ launches your server as a subprocess and allows you to simulate a session
down to the wire, and @@Language.Haskell.LSP.Test@@ can replay captured sessions from
<haskell-lsp https://hackage.haskell.org/package/haskell-lsp>.
It's currently used for testing in <https://github.com/haskell/haskell-ide-engine haskell-ide-engine>.")
    (license license:bsd-3)))

haskell-8.6-lsp-test

(define-public haskell-8.6-machines-directory
  (package
    (name "haskell-8.6-machines-directory")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines-directory/machines-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d6yfh26g9gs406ywc42ascnxcfcz2isfa6j921xikzndzdhg744"))))
    (properties `((upstream-name . "machines-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-machines)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-machines-io)))
    (home-page "http://github.com/aloiscochard/machines-directory")
    (synopsis "Directory (system) utilities for the machines library")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-machines-directory

(define-public haskell-8.6-mongoDB
  (package
    (name "haskell-8.6-mongoDB")
    (version "2.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15zlh2ws9vs2d5rp1g299b4lrpj6a4gcdm1zqiig452w7m1bsyzd"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-bson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-nonce)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pureMD5)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-mongoDB

(define-public haskell-8.6-network-simple-tls
  (package
    (name "haskell-8.6-network-simple-tls")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple-tls/network-simple-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09fw7ynvry0wjc2nip6kwncl662f7glzq1akiwgh09bwnpbswxsh"))))
    (properties `((upstream-name . "network-simple-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-network-simple)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-system)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/k0001/network-simple-tls")
    (synopsis "Simple interface to TLS secured network sockets.")
    (description "Simple interface to TLS secured network sockets.")
    (license license:bsd-3)))

haskell-8.6-network-simple-tls

(define-public haskell-8.6-nonempty-containers
  (package
    (name "haskell-8.6-nonempty-containers")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-containers/nonempty-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15flyfv6w4078wk69d2nb2lx21b76xr6c34rxs0w8jz1mb497f6l"))))
    (properties `((upstream-name . "nonempty-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hedgehog-fn)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-these)))
    (home-page "https://github.com/mstksg/nonempty-containers#readme")
    (synopsis "Non-empty variants of containers data types, with full API")
    (description
     "Efficient and optimized non-empty versions of types from /containers/.
Inspired by /non-empty-containers/ library, except attempting a more
faithful port (with under-the-hood optimizations) of the full /containers/
API. Also contains a convenient typeclass abstraction for converting
betwewen non-empty and possibly-empty variants. See README.md for more
information.")
    (license license:bsd-3)))

haskell-8.6-nonempty-containers

(define-public haskell-8.6-not-gloss
  (package
    (name "haskell-8.6-not-gloss")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011) haskell-8.6-GLUT)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-OpenGL)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-bmp)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-spatial-math)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
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

haskell-8.6-not-gloss

(define-public haskell-8.6-pipes-misc
  (package
    (name "haskell-8.6-pipes-misc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-misc/pipes-misc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09ldpgza3yanpbsd6g2nlm352fwynq38sf226yp5kip0dqwpwbjf"))))
    (properties `((upstream-name . "pipes-misc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-pipes-category)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-concurrency)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "https://github.com/louispan/pipes-misc#readme")
    (synopsis
     "Miscellaneous utilities for pipes, required by glazier-tutorial")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-pipes-misc

(define-public haskell-8.6-postgresql-typed
  (package
    (name "haskell-8.6-postgresql-typed")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p7bcwbjb0pi96d9zad8kmlb2w3g06g4xra33xmmskynmsdyc0r9"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc" "-ftls")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-HDBC)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
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

haskell-8.6-postgresql-typed

(define-public haskell-8.6-rasterific-svg
  (package
    (name "haskell-8.6-rasterific-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-FontyFruity)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-Rasterific)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-svg-tree)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-8.6-rasterific-svg

(define-public haskell-8.6-reanimate-svg
  (package
    (name "haskell-8.6-reanimate-svg")
    (version "0.9.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate-svg/reanimate-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bxfhfdr7p98aj12krxrzcmvxbl8b20flbvqydja8pcwh6jgd744"))))
    (properties `((upstream-name . "reanimate-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-svg-tree)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/reanimate-svg")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-8.6-reanimate-svg

(define-public haskell-8.6-registry
  (package
    (name "haskell-8.6-registry")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry/registry-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14da74d1fijib9w6xi2x904c9iqhdja685lq63c0wc6zgi7ss2ln"))))
    (properties `((upstream-name . "registry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-io-memoize)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-multimap)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-discover)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-universum)))
    (home-page "https://hackage.haskell.org/package/registry")
    (synopsis "data structure for assembling components")
    (description
     "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.
You can start with the [README](https://github.com/etorreborre/registry/blob/master/README.md) for a full description of the library.")
    (license license:expat)))

haskell-8.6-registry

(define-public haskell-8.6-relude
  (package
    (name "haskell-8.6-relude")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "108xd4ybfj7v0cc0h71cym0z31fzsi17aad2l3s17j11h6ainhbm"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qw27rmf14dn44lics58mqdf4wfcnx5z5zrwi13bsbf8qicmd7cb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/kowainik/relude")
    (synopsis "Custom prelude from Kowainik")
    (description
     "== Goals

* __Avoid all [partial functions](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)__
(like @@head :: [a] -> a@@). The types of partial functions lie about their
behavior and usage of such functions can lead to the unexpected bugs. Though
you can still use some unsafe functions from @@Relude.Unsafe@@ module, but they
are not exported by default.

* __Type-safety__. We like to make invalid states unrepresantable. And if it's
possible to express this concept through the types then we will do it.
/Example:/ @@ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @@

* __Performance.__ Prefer @@Text@@ over @@[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@@,
use spaceleak-free functions (like our custom @@sum@@ and @@product@@).

* __Minimalism__ (low number of dependencies). We don't force users of @@relude@@ to
stick to some specific lens or text formatting or logging library.

* __Convenience__ (like lifted to @@MonadIO@@ functions, more reexports). But we
want to bring common types and functions (like @@containers@@ and @@bytestrng@@)
into scope because they are used in almost every application anyways.

* __Provide excellent documentation.__

1. Tutorial

2. Migration guide from @@Prelude@@

3. Haddock with examples for (almost) every function
(all examples are tested with [`doctest`](http://hackage.haskell.org/package/doctest))

4. Documentation regarding [internal module structure]((http://hackage.haskell.org/package/relude/docs/Relude.html))

5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@@

* __User-friendliness.__ Ability to quickly migrate to @@relude@@ if you're familiar
with the common libraries like @@text@@ and @@containers@@.

* __Exploration.__ Experiment with new ideas and proposals without introducing
breaking changes.")
    (license license:expat)))

haskell-8.6-relude

(define-public haskell-8.6-retry
  (package
    (name "haskell-8.6-retry")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02k03r86amg1vbrsvb644342ym13d9jwkzki9sk93pdg5l8j35dj"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis "Retry combinators for monadic actions that may fail")
    (description
     "This package exposes combinators that can wrap arbitrary
monadic actions. They run the action and potentially retry
running it with some configurable delay for a configurable
number of times.
The purpose is to make it easier to work with IO and
especially network IO actions that often experience temporary
failure and warrant retrying of the original action. For
example, a database query may time out for a while, in which
case we should hang back for a bit and retry the query instead
of simply raising an exception.")
    (license license:bsd-3)))

haskell-8.6-retry

(define-public haskell-8.6-sbv
  (package
    (name "haskell-8.6-sbv")
    (version "8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbv/sbv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0d2ph3wr6qga3x43w7xlrvdr63zzsx4x3xn8p7l994b6i7d6rdzd"))))
    (properties `((upstream-name . "sbv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-crackNum)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hlint)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-tasty-golden)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "http://leventerkok.github.com/sbv/")
    (synopsis
     "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.")
    (description
     "Express properties about Haskell programs and automatically prove them using SMT
(Satisfiability Modulo Theories) solvers.

For details, please see: <http://leventerkok.github.com/sbv/>")
    (license license:bsd-3)))

haskell-8.6-sbv

(define-public haskell-8.6-sdl2-gfx
  (package
    (name "haskell-8.6-sdl2-gfx")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-gfx/sdl2-gfx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03f541vrp1ifn26kzakamlc5f8pr9rfcf808cp6q5mvmlsvi07lc"))))
    (properties `((upstream-name . "sdl2-gfx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("1" "1gdasf1rq7gszfhin521cni8bxfzanvssznfi8m2fkgwz6ichhpv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-sdl2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-gfx)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-gfx")
    (synopsis "Bindings to SDL2_gfx.")
    (description "Haskell bindings to SDL2_gfx.")
    (license license:expat)))

haskell-8.6-sdl2-gfx

(define-public haskell-8.6-sdl2-image
  (package
    (name "haskell-8.6-sdl2-image")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-image/sdl2-image-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pr6dkg73cy9z0w54lrkj9c5bhxj56nl92lxikjy8kz6nyr455rr"))))
    (properties `((upstream-name . "sdl2-image") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("1" "0471p3d1ws5n7r072xgk38n3vzs6ijjkmpv1r05vxn6qninlnq6m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-image)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-image")
    (synopsis "Bindings to SDL2_image.")
    (description "Haskell bindings to SDL2_image.")
    (license license:expat)))

haskell-8.6-sdl2-image

(define-public haskell-8.6-sdl2-mixer
  (package
    (name "haskell-8.6-sdl2-mixer")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-mixer/sdl2-mixer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k8avyccq5l9z7bwxigim312yaancxl1sr3q6a96bcm7pnhiak0g"))))
    (properties `((upstream-name . "sdl2-mixer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("1" "06h708gbvl5z590p6fn10ck6yxjzyjjbmvk6mxcwgygbj76sw2f8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-sdl2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2-mixer)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-mixer)))
    (home-page "https://hackage.haskell.org/package/sdl2-mixer")
    (synopsis "Bindings to SDL2_mixer.")
    (description "Haskell bindings to SDL2_mixer.")
    (license license:bsd-3)))

haskell-8.6-sdl2-mixer

(define-public haskell-8.6-sdl2-ttf
  (package
    (name "haskell-8.6-sdl2-ttf")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-ttf/sdl2-ttf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xw05jgv6x9xplahwf3jjdq6v3mha4s7bb27kn8x66764glnyrf7"))))
    (properties `((upstream-name . "sdl2-ttf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.")
    (license license:bsd-3)))

haskell-8.6-sdl2-ttf

(define-public haskell-8.6-servant-auth-docs
  (package
    (name "haskell-8.6-servant-auth-docs")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-docs/servant-auth-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j1ynnrb6plrhpb2vzs2p7a9jb41llp0j1jwgap7hjhkwhyc7wxd"))))
    (properties `((upstream-name . "servant-auth-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("11" "1xk6j4l5jccwzk0xkiv6ny6w33g92wziacqvqgc5rvy2mzyff4fl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-servant-auth)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-docs)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-docs/servant-auth compatibility")
    (description
     "This package provides instances that allow generating docs from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.6-servant-auth-docs

(define-public haskell-8.6-servant-checked-exceptions-core
  (package
    (name "haskell-8.6-servant-checked-exceptions-core")
    (version "2.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions-core/servant-checked-exceptions-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1irakwsdj6f0yjp0cpgai6x01yq99qd2rwy1w3pb7xwiksdnxx6c"))))
    (properties `((upstream-name . "servant-checked-exceptions-core")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-docs)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-world-peace)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-servant-checked-exceptions-core

(define-public haskell-8.6-servant-client
  (package
    (name "haskell-8.6-servant-client")
    (version "0.16.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6rw1bdm5x8swi9dy70n86gq9v85wlgmm6pglfxqbv7bgzpql8c"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant-client

(define-public haskell-8.6-servant-kotlin
  (package
    (name "haskell-8.6-servant-kotlin")
    (version "0.1.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-kotlin/servant-kotlin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wywp494wbhs32szyni294k5qf8fjbznydwss7lwxprnli1hh1qm"))))
    (properties `((upstream-name . "servant-kotlin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-wl-pprint-text)))
    (home-page "https://github.com/matsubara0507/servant-kotlin#readme")
    (synopsis "Automatically derive Kotlin class to query servant webservices")
    (description
     "See README at <https://github.com/matsubara0507/servant-kotlin#readme>")
    (license license:expat)))

haskell-8.6-servant-kotlin

(define-public haskell-8.6-servant-ruby
  (package
    (name "haskell-8.6-servant-ruby")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-casing)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)))
    (home-page "https://github.com/joneshf/servant-ruby#readme")
    (synopsis "Generate a Ruby client from a Servant API with Net::HTTP.")
    (description "Generate a Ruby client from a Servant API with Net::HTTP.")
    (license license:bsd-3)))

haskell-8.6-servant-ruby

(define-public haskell-8.6-servant-swagger
  (package
    (name "haskell-8.6-servant-swagger")
    (version "1.1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger/servant-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vdjvn5bsd26q8wx1qdwn7vdfnd9jk8m9jzzm251gyn1ijxv8ild"))))
    (properties `((upstream-name . "servant-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ij93pd7lsq39grglhfrdjrg21bxigmhavy51xilg6rrpnfcj2wv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-singleton-bool)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-swagger2)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/haskell-servant/servant-swagger")
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

haskell-8.6-servant-swagger

(define-public haskell-8.6-skylighting
  (package
    (name "haskell-8.6-skylighting")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xls8ycad77m55ax4hp55k60h3pi5sm3m32hycbc8baixbgfx5xz"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-pcre" "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-skylighting-core)))
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

haskell-8.6-skylighting

(define-public haskell-8.6-soap
  (package
    (name "haskell-8.6-soap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-configurator)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-iconv)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-xml-conduit-writer)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-soap

(define-public haskell-8.6-starter
  (package
    (name "haskell-8.6-starter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/starter/starter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14rxrs1gjsm26m7rk4rj9b2389zca0j24kjl7sfznqpxgk99qmpx"))))
    (properties `((upstream-name . "starter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)))
    (home-page "https://github.com/rkaippully/starter#readme")
    (synopsis "Develop applications without restarts")
    (description
     "Please see the README on Github at <https://github.com/rkaippully/starter#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.6-starter

(define-public haskell-8.6-sv-core
  (package
    (name "haskell-8.6-sv-core")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sv-core/sv-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1brjdh22sarg9v0qak8xgzyhpcilwn0czab9mh65l2izp3nzkfn7"))))
    (properties `((upstream-name . "sv-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05h0lsj434qv81b2fvnm80wyb7272wcwly3jfk4l1qp5hjyq6917")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-double-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-readable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-trifecta)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-validation)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/qfpl/sv")
    (synopsis "Encode and decode separated values (CSV, PSV, ...)")
    (description
     "<<http://i.imgur.com/uZnp9ke.png>>

sv-core is the decoding and encoding for the
<https://hackage.haskell.org/package/sv sv> CSV library. This is split
off into its own package so that one swap out sv's parser without incurring
a dependency on the default parser
(<https://hackage.haskell.org/package/hw-dsv hw-dsv>)

For an example, see <https://hackage.haskell.org/package/sv-cassava sv-cassava>")
    (license license:bsd-3)))

haskell-8.6-sv-core

(define-public haskell-8.6-tcp-streams
  (package
    (name "haskell-8.6-tcp-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-system)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "One stop solution for tcp client and server with tls support.")
    (description
     "One stop solution for tcp client and server with tls support.")
    (license license:bsd-3)))

haskell-8.6-tcp-streams

(define-public haskell-8.6-tls-debug
  (package
    (name "haskell-8.6-tls-debug")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-debug/tls-debug-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16zb4dray3l6sdckixyd2a5hbf6s0svy5f5bfffq48zr7f3c8id3"))))
    (properties `((upstream-name . "tls-debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-system)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "Set of programs for TLS testing and debugging")
    (description
     "A set of program to test and debug various aspect of the TLS package.
")
    (license license:bsd-3)))

haskell-8.6-tls-debug

(define-public haskell-8.6-websockets-snap
  (package
    (name "haskell-8.6-websockets-snap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-snap-server)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/websockets-snap")
    (synopsis "Snap integration for the websockets library")
    (description "Snap integration for the websockets library")
    (license license:bsd-3)))

haskell-8.6-websockets-snap

(define-public haskell-8.6-xlsx-tabular
  (package
    (name "haskell-8.6-xlsx-tabular")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-xlsx)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kkazuo/xlsx-tabular")
    (synopsis "Xlsx table cell value extraction utility")
    (description "
Convenience utility to read xlsx tabular cells.

You can extract the values from xlsx files
table rows to JSON format by the heuristics or
your custom function.")
    (license license:bsd-3)))

haskell-8.6-xlsx-tabular

(define-public haskell-8.6-xml-html-qq
  (package
    (name "haskell-8.6-xml-html-qq")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-from-sum)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-heterocephalus)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-html-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-xml-html-qq

(define-public haskell-8.6-xml-to-json
  (package
    (name "haskell-8.6-xml-to-json")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-to-json/xml-to-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0brfdlarr4yyfsfawkfjdbk4z3lvi9ihkhvqh5ws2ll0h80ja6md"))))
    (properties `((upstream-name . "xml-to-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-curl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hxt-curl)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hxt-expat)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hxt-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xml) expat)))
    (home-page "https://github.com/sinelaw/xml-to-json")
    (synopsis "Library and command line tool for converting XML files to json")
    (description
     "The xml-to-json executable (and library) converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.

For files that are slow to process, please use 'xml-to-json-fast' which (starting with version 2.0.0) resides in its own package.

The original purpose was to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.

The package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).

See <https://github.com/sinelaw/xml-to-json#readme> for details and usage.")
    (license license:expat)))

haskell-8.6-xml-to-json

