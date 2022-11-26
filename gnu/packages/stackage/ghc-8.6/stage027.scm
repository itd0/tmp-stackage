;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage027)
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
(define-public haskell-8.6-gym-http-api
  (package
    (name "haskell-8.6-gym-http-api")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gym-http-api/gym-http-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0469n34s0p313nwnw8zpg1n9aaf6sqn5h7yl0jhc6yydc6rdjgrc"))))
    (properties `((upstream-name . "gym-http-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-servant-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/stites/gym-http-api#readme")
    (synopsis "REST client to the gym-http-api project")
    (description
     "This library provides a REST client to the gym open-source library. gym-http-api itself provides a <https://github.com/openai/gym-http-api/blob/master/gym_http_server.py python-based REST> server to the gym open-source library, allowing development in languages other than python.

Note that the <https://github.com/openai/gym-http-api/ openai/gym-http-api> is a monorepo of all language-clients. This hackage library tracks <https://github.com/stites/gym-http-api/ stites/gym-http-api> which is the actively-maintained haskell fork.")
    (license license:expat)))

haskell-8.6-gym-http-api

(define-public haskell-8.6-mega-sdist
  (package
    (name "haskell-8.6-mega-sdist")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mega-sdist/mega-sdist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "191saxmdh3705rhci7lz7qzcdzv2zvw9bwa7f5d62500azi13j8v"))))
    (properties `((upstream-name . "mega-sdist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-optparse-simple)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-pantry)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-rio-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/mega-sdist#readme")
    (synopsis "Handles uploading to Hackage from mega repos")
    (description
     "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>")
    (license license:expat)))

haskell-8.6-mega-sdist

(define-public haskell-8.6-miso
  (package
    (name "haskell-8.6-miso")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/miso/miso-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08yhr5hxrvgqdc32yz2j3mix7s8q5bzycld3kd4rfcy2h4h72962"))))
    (properties `((upstream-name . "miso") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tests" "-f-jsaddle" "-f-ios")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-servant-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/dmjio/miso")
    (synopsis "A tasty Haskell front-end framework")
    (description
     "Miso is a small, production-ready, \"isomorphic\" Haskell front-end framework featuring a virtual-dom, recursive diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, type-safe servant-style routing and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. Miso is pure by default, but side effects (like XHR) can be introduced into the system via the Effect data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.")
    (license license:bsd-3)))

haskell-8.6-miso

(define-public haskell-8.6-servant-swagger-ui
  (package
    (name "haskell-8.6-servant-swagger-ui")
    (version "0.3.4.3.23.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ryr6h74vz6q6q0c9aixb7kwhq1vn95m3m0799cvc0xkfvm0ljha"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1wmxiihiwjkzwqqj2996fqmixz6jblj5gh43p7dxbww3g9fdz8qi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

https://github.com/swagger-api/swagger-ui")
    (license license:bsd-3)))

haskell-8.6-servant-swagger-ui

(define-public haskell-8.6-servant-swagger-ui-redoc
  (package
    (name "haskell-8.6-servant-swagger-ui-redoc")
    (version "0.3.3.1.22.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-redoc/servant-swagger-ui-redoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bzkrh1hf29vfa1r1sgifb9j2zcg6i43fal4abbx4lcqvf155pzv"))))
    (properties `((upstream-name . "servant-swagger-ui-redoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1csz8gzmrrjbjvr6kx4vmyp419i5vbzk84a01vh5zr6ncrpx5nf3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui: ReDoc theme")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

ReDoc theme: https://github.com/Rebilly/ReDoc")
    (license license:bsd-3)))

haskell-8.6-servant-swagger-ui-redoc

(define-public haskell-8.6-stack
  (package
    (name "haskell-8.6-stack")
    (version "2.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stack/stack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q2nagnc24fvyj3hwnpgyp3rqhxswhscyw4pw2dazqx34ad3d0zr"))))
    (properties `((upstream-name . "stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-disable-git-info" "-f-hide-dependency-versions" "-f-integration-tests" "-f-static" "-f-supported-build")
       #:cabal-revision
       ("1" "0s51an3anrn01rghap4ml9f2vqamsv99jbk996x1l1yyl9sqp294")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-echo)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-filelock)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-githash)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hackage-security)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-hi-file-parser)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hpack)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-http-download)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mintty)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mustache)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-open-browser)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-optparse-generic)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-optparse-simple)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-pantry)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-project-template)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-regex-applicative-text)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-terminal-size)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-metrics)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-th-reify-many)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskellstack.org")
    (synopsis "The Haskell Tool Stack")
    (description
     "Please see the documentation at <https://docs.haskellstack.org>
for usage information.

If building a 'stack' executable for distribution, please download the
source code from <https://github.com/commercialhaskell/stack/releases>
and build it using Stack itself in order to ensure identical behaviour
to official binaries.  This package on Hackage is provided for convenience
and bootstrapping purposes.

Note that the API for the library is not currently stable, and may
change significantly, even between minor releases. It is
currently only intended for use by the executable.")
    (license license:bsd-3)))

haskell-8.6-stack

(define-public haskell-8.6-sv
  (package
    (name "haskell-8.6-sv")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sv/sv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0j92jgma41ggfjvd8a1la1wi2vms8ia1y6aqf6l7casavcn5vf2k"))))
    (properties `((upstream-name . "sv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1c0q010bpzdmjlncjn58fvz50l5z2wqp4hjpj0isvdr5iq96pgza")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Only)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-hw-dsv)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-sv-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-trifecta)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-validation)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages multiprecision) gmp)))
    (home-page "https://github.com/qfpl/sv")
    (synopsis "Encode and decode separated values (CSV, PSV, ...)")
    (description
     "<<http://i.imgur.com/uZnp9ke.png>>

sv (separated values) is a library for parsing, decoding, encoding, and
printing CSV and similar formats (such as PSV, TSV, and many more).

sv uses an Applicative combinator style for decoding and encoding, rather
than a type class based approach. This means we can have multiple decoders
for the same type, multiple combinators of the same type, and we never have
to worry about orphan instances. These decoders can be stitched together from
provided primitives and combinators, or you can build one from a parser
from your favourite parser combinator library.

For parsing, sv uses <https://hackage.haskell.org/package/hw-dsv hw-dsv>, a high performance streaming CSV parser based on rank-select data structures.
sv works with UTF-8, and should work with CP-1252 as well. It does not work
with UTF-16 or UTF-32.

sv returns values for all errors that occur - not just the first. Errors have
more structure than just a string, indicating what went wrong.

sv tries not to be opinionated about how your data should look. We intend for
the user to have a great degree of freedom to build the right decoder for
their dataset.

Parts of sv are intended to be imported as follows:

@@
import Data.Sv
import qualified Data.Sv.Decode as D
import qualified Data.Sv.Encode as E
@@

Examples:

* Decoding a real CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Species.lhs Species.lhs>
* Decoding by column name: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Columnar.hs Columnar.hs>
* Encoding data to a CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Encoding.hs Encoding.hs>
* Encoding data to a CSV with a header: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/EncodingWithHeader.hs EncodingWithHeader.hs>
* Handling NULL and Unknown occuring in a column of numbers: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Numbers.hs Numbers.hs>
* Dealing with non-rectangular data: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Ragged.hs Ragged.hs>
* Integrating with an existing attoparsec parser to read date stamps: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/TableTennis.hs TableTennis.hs>

To get the best performance, the hw-dsv parser and its dependencies
underlying sv should be compiled with the flag @@+bmi2@@ to enable . These
libraries are:  @@bits-extra@@, @@hw-rankselect@@, @@hw-rankselect-base@@, and
@@hw-dsv@@. A simple way to set the flags for all of them when building with
cabal is to include a cabal.project file in your project containing
something like the following:

>packages: .
>package bits-extra
>  flags: +bmi2
>package hw-rankselect
>  flags: +bmi2
>package hw-rankselect-base
>  flags: +bmi2
>package hw-dsv
>  flags: +bmi2")
    (license license:bsd-3)))

haskell-8.6-sv

(define-public haskell-8.6-wai-middleware-auth
  (package
    (name "haskell-8.6-wai-middleware-auth")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-auth/wai-middleware-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x3x3vc2l7glvfv6xcmqq0bw4mm8w2l577zx6qhx4399b03j56a1"))))
    (properties `((upstream-name . "wai-middleware-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1spa115xylz59bvx27vjhzzd5a6q226a4lpck5wlqskdi7bf295f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-clientsession)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-hoauth2)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-optparse-simple)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/wai-middleware-auth")
    (synopsis "Authentication middleware that secures WAI application")
    (description "See README")
    (license license:expat)))

haskell-8.6-wai-middleware-auth

(define-public haskell-8.6-yesod-form
  (package
    (name "haskell-8.6-yesod-form")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0mny71dyp6cp5akyp5wvmrhmip5rkqi8ibdn3lipvmajx9h58r5d"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-email-validate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xss-sanitize)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currntly it provides only Summernote support).")
    (license license:expat)))

haskell-8.6-yesod-form

