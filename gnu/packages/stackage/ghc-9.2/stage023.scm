;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage023)
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
(define-public haskell-9.2-Blammo
  (package
    (name "haskell-9.2-Blammo")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Blammo/Blammo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qms459jmikx2dxsl6znn8scb6293s4zprz419da5s71lkiql7cp"))))
    (properties `((upstream-name . "Blammo") (hidden? . #f)))
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
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-envparse)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-monad-logger-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/blammo#readme")
    (synopsis "Batteries-included Structured Logging library")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-Blammo

(define-public haskell-9.2-async-refresh-tokens
  (package
    (name "haskell-9.2-async-refresh-tokens")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh-tokens/async-refresh-tokens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1py7ips87gbwdhxdfv0xh4hkgw0my4nkkz4w1vwcb3s296a439v7"))))
    (properties `((upstream-name . "async-refresh-tokens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-async-refresh)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh-tokens#readme")
    (synopsis
     "Package implementing core logic for refreshing of expiring access tokens")
    (description
     "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).")
    (license license:bsd-3)))

haskell-9.2-async-refresh-tokens

(define-public haskell-9.2-aws-xray-client-persistent
  (package
    (name "haskell-9.2-aws-xray-client-persistent")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client-persistent/aws-xray-client-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pfmlb5i51sz4aypazw2cpkmgxjbmik1jpi9zbp68jwfaw31j7wk"))))
    (properties `((upstream-name . "aws-xray-client-persistent")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with Persistent.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with Persistent.")
    (license license:expat)))

haskell-9.2-aws-xray-client-persistent

(define-public haskell-9.2-bimap-server
  (package
    (name "haskell-9.2-bimap-server")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bimap-server/bimap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgmiv1pzzrq22778a2l46knxfk5rh2vw331gcqhxx0jb23d3pq9"))))
    (properties `((upstream-name . "bimap-server") (hidden? . #f)))
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
                     haskell-9.2-bimap)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/bimap-server")
    (synopsis "Two-column database server.")
    (description
     "A server that stores a database with two columns, where the elements in each column are of the same type.
Operations are fast, although memory usage increases with the number of rows. The implementation is based
in bimaps.")
    (license license:bsd-3)))

haskell-9.2-bimap-server

(define-public haskell-9.2-bugsnag-wai
  (package
    (name "haskell-9.2-bugsnag-wai")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-wai/bugsnag-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f3x4m9nl277rhg2pwrja9xh6fffrwl2dm1cf3jiyngkrbrfck0w"))))
    (properties `((upstream-name . "bugsnag-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-bugsnag)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "WAI integration for Bugsnag error reporting for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-bugsnag-wai

(define-public haskell-9.2-casa-types
  (package
    (name "haskell-9.2-casa-types")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/casa-types/casa-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c3qvph690pgnqmj132sn1zh878n3ljvmp913vvhwynfhyixs1v7"))))
    (properties `((upstream-name . "casa-types") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/casa-types")
    (synopsis "Types for Casa")
    (description "Types for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-9.2-casa-types

(define-public haskell-9.2-closed
  (package
    (name "haskell-9.2-closed")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/closed/closed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dh73bayq78a0idbh2lprmb8hazj03g4ma5gcmad06bq01nl9yxh"))))
    (properties `((upstream-name . "closed") (hidden? . #f)))
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
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/frontrowed/closed#readme")
    (synopsis "Integers bounded by a closed interval")
    (description
     "Integers bounded by a closed interval checked at compile time")
    (license license:expat)))

haskell-9.2-closed

(define-public haskell-9.2-context-http-client
  (package
    (name "haskell-9.2-context-http-client")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/context-http-client/context-http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sm36mrnc80pnafpyikcalajy2kz1rxp7d40sgqng1s48k6d8js1"))))
    (properties `((upstream-name . "context-http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-context)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Modify HTTP requests/responses using context")
    (description
     "Modify outgoing HTTP requests and incoming HTTP responses using context.")
    (license license:expat)))

haskell-9.2-context-http-client

(define-public haskell-9.2-context-wai-middleware
  (package
    (name "haskell-9.2-context-wai-middleware")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/context-wai-middleware/context-wai-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y34137h0zjqxs4f5mbjyq500sazsryl20sfx4p5b227nb8lyplh"))))
    (properties `((upstream-name . "context-wai-middleware") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-context)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis
     "Add request-specific (or not!) context to your WAI applications")
    (description
     "Add request-specific (or not!) context to your WAI applications.")
    (license license:expat)))

haskell-9.2-context-wai-middleware

(define-public haskell-9.2-esqueleto
  (package
    (name "haskell-9.2-esqueleto")
    (version "3.5.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/esqueleto/esqueleto-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k7h2hbxv14x0kq9w2wi83h0swzlri99ic9rj76540l39yqwjc5v"))))
    (properties `((upstream-name . "esqueleto") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitemyapp/esqueleto")
    (synopsis "Type-safe EDSL for SQL queries on persistent backends.")
    (description
     "@@esqueleto@@ is a bare bones, type-safe EDSL for SQL queries that works with unmodified @@persistent@@ SQL backends.  Its language closely resembles SQL, so you don't have to learn new concepts, just new syntax, and it's fairly easy to predict the generated SQL and optimize it for your backend. Most kinds of errors committed when writing SQL are caught as compile-time errors---although it is possible to write type-checked @@esqueleto@@ queries that fail at runtime.

@@persistent@@ is a library for type-safe data serialization.  It has many kinds of backends, such as SQL backends (@@persistent-mysql@@, @@persistent-postgresql@@, @@persistent-sqlite@@) and NoSQL backends (@@persistent-mongoDB@@). While @@persistent@@ is a nice library for storing and retrieving records, including with filters, it does not try to support some of the features that are specific to SQL backends.  In particular, @@esqueleto@@ is the recommended library for type-safe @@JOIN@@s on @@persistent@@ SQL backends.  (The alternative is using raw SQL, but that's error prone and does not offer any composability.)

Currently, @@SELECT@@s, @@UPDATE@@s, @@INSERT@@s and @@DELETE@@s are supported. Not all SQL features are available, but most of them can be easily added (especially functions), so please open an issue or send a pull request if you need anything that is not covered by @@esqueleto@@ on <https://github.com/bitemyapp/esqueleto>.

The name of this library means \\\"skeleton\\\" in Portuguese and contains all three SQL letters in the correct order =).  It was inspired by Scala's Squeryl but created from scratch.")
    (license license:bsd-3)))

haskell-9.2-esqueleto

(define-public haskell-9.2-essence-of-live-coding-warp
  (package
    (name "haskell-9.2-essence-of-live-coding-warp")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-warp/essence-of-live-coding-warp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zykg5qik61xr4ri6d9r04w5rj7wm0wqmnzm6nipwpixal3gdxqa"))))
    (properties `((upstream-name . "essence-of-live-coding-warp")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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
There are also useful utilities for debugging and quickchecking.

This library contains a single-threaded interface to the WARP web server.
WAI applications can be run this way.")
    (license license:bsd-3)))

haskell-9.2-essence-of-live-coding-warp

(define-public haskell-9.2-genvalidity-hspec-persistent
  (package
    (name "haskell-9.2-genvalidity-hspec-persistent")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-persistent/genvalidity-hspec-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "131k8yibypaqb4pbwrm0ql6h2ywqchlm2w0rzmax9ylzg71vkm0z"))))
    (properties `((upstream-name . "genvalidity-hspec-persistent")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-persistent

(define-public haskell-9.2-genvalidity-sydtest-persistent
  (package
    (name "haskell-9.2-genvalidity-sydtest-persistent")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-persistent/genvalidity-sydtest-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1njjwl9x7kirvzxpqpdw5gzfba1ixxx8z3ji3yn3fvhm8rkswfyp"))))
    (properties `((upstream-name . "genvalidity-sydtest-persistent")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances for sydtest")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-sydtest-persistent

(define-public haskell-9.2-gi-dbusmenugtk3
  (package
    (name "haskell-9.2-gi-dbusmenugtk3")
    (version "0.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenugtk3/gi-dbusmenugtk3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ky4x665p5f7zlfckz7fykgnl9n839vz5pv4l0lprhp0l04f32hz"))))
    (properties `((upstream-name . "gi-dbusmenugtk3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-atk)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-dbusmenu)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "DbusmenuGtk bindings")
    (description "Bindings for libdbusgtk3, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-dbusmenugtk3

(define-public haskell-9.2-gi-gtk-hs
  (package
    (name "haskell-9.2-gi-gtk-hs")
    (version "0.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtk-hs/gi-gtk-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0w9bjhny6l2ll83ffcdmdzgnza0gfgyqv8v161pj080lsq00fdli"))))
    (properties `((upstream-name . "gi-gtk-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (description
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gtk-hs

(define-public haskell-9.2-gi-gtksource
  (package
    (name "haskell-9.2-gi-gtksource")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtksource/gi-gtksource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xax0w5zxiqw2nhz3ndl6kyxfa61n1ldwq3r6s1i0khz0xx79k5q"))))
    (properties `((upstream-name . "gi-gtksource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtksourceview)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-atk)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-pango)
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
    (synopsis "GtkSource bindings")
    (description "Bindings for GtkSource, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gtksource

(define-public haskell-9.2-gi-vte
  (package
    (name "haskell-9.2-gi-vte")
    (version "2.91.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-vte/gi-vte-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n787xacng9279y7vi2g4lmxvx8xgb967v55fxvmxhjyds35fy4w"))))
    (properties `((upstream-name . "gi-vte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-atk)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-pango)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Vte bindings")
    (description "Bindings for Vte, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-vte

(define-public haskell-9.2-gopher-proxy
  (package
    (name "haskell-9.2-gopher-proxy")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gopher-proxy/gopher-proxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pqsir7hpz2hfdczhvvnqh7rbckxkzj7fsdq6r27nm9ixf5kmwfb"))))
    (properties `((upstream-name . "gopher-proxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sternenseemann/gopher-proxy")
    (synopsis "proxy gopher over http")
    (description
     "@@gopher-proxy@@ allows to proxy gopher over HTTP, which is mainly useful for HTTP-ifying a specific gopher space.

A simple invocation looks like this:

@@
gopher-proxy --host example.org --http-port 8080
@@

In this particular example @@gopher-proxy@@ does the following things:

* Takes HTTP requests on @@127.0.0.1:8080@@ (to be used by a proxying web server, like nginx), converts those to gopher requests to @@example.org@@ and returns the gopher responses as HTTP responses

* Links menu items pointing to external servers to @@gopher:\\/\\/@@ URLs (this ensures that only one gopher server is proxied) and recognizes <https://en.wikipedia.org/wiki/Gopher_(protocol)#URL_links URL links> which are converted to normal HTML links

* Tries to guess the correct mime-type for every gopher-served file (as it is not included in the response) and wraps text files in a HTML container.

* And generally works hard to offer the best HTTP equivalent of a given gopher space :)

To learn about the other parameters for tweaking the behavior of @@gopher-proxy@@ <#readme see the readme>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-gopher-proxy

(define-public haskell-9.2-gtk-strut
  (package
    (name "haskell-9.2-gtk-strut")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-strut/gtk-strut-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rymacvllin8ni2fd7yyfq43rbbyb921c4nm4z7aa2z82fsrkw3q"))))
    (properties `((upstream-name . "gtk-strut") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-strut#readme")
    (synopsis "Library for creating strut windows with gi-gtk")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-strut#readme>")
    (license license:bsd-3)))

haskell-9.2-gtk-strut

(define-public haskell-9.2-hasql-dynamic-statements
  (package
    (name "haskell-9.2-hasql-dynamic-statements")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-dynamic-statements/hasql-dynamic-statements-"
                    version ".tar.gz"))
              (sha256
               (base32
                "165s21mw1j38xpzrqpg5nbgfa3gc9qw88b80d8cfdxdiyghn79hq"))))
    (properties `((upstream-name . "hasql-dynamic-statements") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hasql-implicits)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-ptr)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-dynamic-statements")
    (synopsis "Toolkit for constructing Hasql statements dynamically")
    (description
     "This library introduces into the Hasql ecosystem a new abstraction named Snippet,
which makes it trivial to construct SQL, while injecting values.
It is intended to be used when the SQL of your statement depends on the parameters,
that you want to pass in.")
    (license license:expat)))

haskell-9.2-hasql-dynamic-statements

(define-public haskell-9.2-hasql-migration
  (package
    (name "haskell-9.2-hasql-migration")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-migration/hasql-migration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qk9cds6crdbjrn0niv6dfaj2pa3qpmwh1l96rl2hvqyq2dz148q"))))
    (properties `((upstream-name . "hasql-migration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hasql-transaction)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tvh/hasql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.2-hasql-migration

(define-public haskell-9.2-hasql-notifications
  (package
    (name "haskell-9.2-hasql-notifications")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-notifications/hasql-notifications-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yhl2r1wiy5sxn77mv6g8yr2mf00q8sjvq7vg84k04c4x6kl9w9n"))))
    (properties `((upstream-name . "hasql-notifications") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hasql-pool)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/diogob/hasql-notifications")
    (synopsis "LISTEN/NOTIFY support for Hasql")
    (description
     "Use PostgreSQL Asynchronous notification support with your Hasql Types.")
    (license license:bsd-3)))

haskell-9.2-hasql-notifications

(define-public haskell-9.2-hasql-optparse-applicative
  (package
    (name "haskell-9.2-hasql-optparse-applicative")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-optparse-applicative/hasql-optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bc7vknc6kq8ljbzf0hpqaps6jp1wrggx2kx4fvvqmw90z83vz28"))))
    (properties `((upstream-name . "hasql-optparse-applicative")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hasql-pool)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-9.2-hasql-optparse-applicative

(define-public haskell-9.2-hw-rankselect
  (package
    (name "haskell-9.2-hw-rankselect")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "0qivfmg1khicyj068y08avcswyrmvl3z4blcdhjp8mj3ygys7n4i")))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect#readme")
    (synopsis "Rank-select")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-rankselect

(define-public haskell-9.2-katip-wai
  (package
    (name "haskell-9.2-katip-wai")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/katip-wai/katip-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1shzmjpz043fglvn4niydbjf3a41bmx2dhyp7ch5g256irqs4a21"))))
    (properties `((upstream-name . "katip-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-katip)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Disco-Dave/katip-wai#readme")
    (synopsis
     "WAI middleware for logging request and response info through katip.")
    (description
     "WAI middleware for logging request and response info through katip. Please see the README on GitHub at <https://github.com/Disco-Dave/katip-wai#readme>")
    (license license:bsd-3)))

haskell-9.2-katip-wai

(define-public haskell-9.2-little-rio
  (package
    (name "haskell-9.2-little-rio")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-rio/little-rio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l505nimjwg9i8kkj2ndp5i4mh0mhxnhssxsvgmd5qnzxw4i0rd3"))))
    (properties `((upstream-name . "little-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-little-logger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ejconlon/little-rio#readme")
    (synopsis "When you need just the RIO monad")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-rio#readme>")
    (license license:bsd-3)))

haskell-9.2-little-rio

(define-public haskell-9.2-mergeful-persistent
  (package
    (name "haskell-9.2-mergeful-persistent")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeful-persistent/mergeful-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13i2bajgxwmyr5w8qfswlpizhsajnnhgs96hav74sj5m5i6z0dpi"))))
    (properties `((upstream-name . "mergeful-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-mergeful)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "Support for using mergeful from persistent-based databases")
    (description "")
    (license license:expat)))

haskell-9.2-mergeful-persistent

(define-public haskell-9.2-mergeless-persistent
  (package
    (name "haskell-9.2-mergeless-persistent")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeless-persistent/mergeless-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05fazha6q5lmpagfazlrly7ms0p1jag9n6llwmr0zspx0raq35mb"))))
    (properties `((upstream-name . "mergeless-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-mergeless)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "Support for using mergeless from persistent-based databases")
    (description "")
    (license license:expat)))

haskell-9.2-mergeless-persistent

(define-public haskell-9.2-password-instances
  (package
    (name "haskell-9.2-password-instances")
    (version "3.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password-instances/password-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08y42r165n3d7lry160rdmn8akhhfyx76fwjhsqb25zc5a9d5glj"))))
    (properties `((upstream-name . "password-instances") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-password)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-password-types)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password-instances#readme")
    (synopsis "typeclass instances for password package")
    (description
     "A library providing typeclass instances for common libraries for the types from the password package.")
    (license license:bsd-3)))

haskell-9.2-password-instances

(define-public haskell-9.2-persistent-discover
  (package
    (name "haskell-9.2-persistent-discover")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-discover/persistent-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p4qvyjrf142192g9chxpdawpb55vk3dxrb1w0clwrhbz2w1q6q9"))))
    (properties `((upstream-name . "persistent-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-discover-instances)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-some-dict-of)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-discover#readme")
    (synopsis "Persistent module discover utilities")
    (description
     "This package provides an executable for discovering Persistent model definition files, as well as a library function to glob all persistent model files. Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-discover#readme>")
    (license license:bsd-3)))

haskell-9.2-persistent-discover

(define-public haskell-9.2-persistent-documentation
  (package
    (name "haskell-9.2-persistent-documentation")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-documentation/persistent-documentation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ib56hz4q83knw6lqdbfcflnpwd0x8381p67yibmnbyn9p5b6r1q"))))
    (properties `((upstream-name . "persistent-documentation") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-documentation")
    (synopsis "Documentation DSL for persistent entities")
    (description
     "A convenient DSL that allows you to attach documentation to persistent database entities")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-persistent-documentation

(define-public haskell-9.2-persistent-iproute
  (package
    (name "haskell-9.2-persistent-iproute")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-iproute/persistent-iproute-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x5vsincd2gll20agkrsgl8f092x7pc7b22fn5ardcm2fnyl2x8i"))))
    (properties `((upstream-name . "persistent-iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ip4r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/greydot/persistent-iproute")
    (synopsis "Persistent instances for types in iproute")
    (description
     "Persistent instances and operators for types in iproute to use with PostgreSQL.")
    (license license:bsd-3)))

haskell-9.2-persistent-iproute

(define-public haskell-9.2-persistent-mongoDB
  (package
    (name "haskell-9.2-persistent-mongoDB")
    (version "2.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mongoDB/persistent-mongoDB-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ck74kpzkz623c43qb8r1cjq8chi2p721vx95zrpciz8jm496235"))))
    (properties `((upstream-name . "persistent-mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-high_precision_date")
       #:cabal-revision
       ("3" "163c5q6fwnp96y952qq5ya26z64lr6abblmpxfqxcsalfcgx3rad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008) haskell-9.2-bson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-mongoDB)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using mongoDB.")
    (description "MongoDB backend for the persistent library.")
    (license license:expat)))

haskell-9.2-persistent-mongoDB

(define-public haskell-9.2-persistent-mysql
  (package
    (name "haskell-9.2-persistent-mysql")
    (version "2.13.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mysql/persistent-mysql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fm6agqwawwraw6l6kxm8lq40pm5pnjg093f574a7sdf648q21yc"))))
    (properties `((upstream-name . "persistent-mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mysql)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-mysql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis
     "Backend for the persistent library using MySQL database server.")
    (description
     "This package contains a backend for persistent using the
MySQL database server.  Internally it uses the @@mysql-simple@@
and @@mysql@@ packages in order to access the database.

This package supports only MySQL 5.1 and above.  However, it
has been tested only on MySQL 5.5.
Only the InnoDB storage engine is officially supported.

Known problems:

* This package does not support statements inside other
statements.")
    (license license:expat)))

haskell-9.2-persistent-mysql

(define-public haskell-9.2-persistent-postgresql
  (package
    (name "haskell-9.2-persistent-postgresql")
    (version "2.13.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-postgresql/persistent-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q9hy49nfrb3azgz5rjz235d7scy27l5axkih7crskaa04hf4k8d"))))
    (properties `((upstream-name . "persistent-postgresql") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using postgresql.")
    (description "Based on the postgresql-simple package")
    (license license:expat)))

haskell-9.2-persistent-postgresql

(define-public haskell-9.2-persistent-redis
  (package
    (name "haskell-9.2-persistent-redis")
    (version "2.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-redis/persistent-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p03bwsldi3w4vsig1krnilhpbkkhzrm240jbx22q514922kgjr9"))))
    (properties `((upstream-name . "persistent-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0k383hvfpd0s38a8fmr2zad3f10lvz7sj969ainx9fd7hf550br2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-redis")
    (synopsis "Backend for persistent library using Redis.")
    (description "Based on the Redis package.")
    (license license:bsd-3)))

haskell-9.2-persistent-redis

(define-public haskell-9.2-persistent-sqlite
  (package
    (name "haskell-9.2-persistent-sqlite")
    (version "2.13.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-sqlite/persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z8650nv10f6yldn9sihk54c7mlcnkxwaj956igvs6q3x3s8aa1b"))))
    (properties `((upstream-name . "persistent-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-f-use-pkgconfig" "-f-build-sanity-exe" "-ffull-text-search" "-furi-filenames" "-fhave-usleep" "-fjson1" "-f-use-stat3" "-fuse-stat4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-9.2-persistent-sqlite

(define-public haskell-9.2-persistent-test
  (package
    (name "haskell-9.2-persistent-test")
    (version "2.13.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-test/persistent-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cah2gyp5lm9hipm3wvcxnl14cmq51dajzcw3wcf9xd19sbm4k49"))))
    (properties `((upstream-name . "persistent-test") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Tests for Persistent")
    (description
     "Tests for Persistent. This is only for use in developing libraries that should conform to the persistent interface, not for users of the persistent suite of database libraries.")
    (license license:expat)))

haskell-9.2-persistent-test

(define-public haskell-9.2-prometheus
  (package
    (name "haskell-9.2-prometheus")
    (version "2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus/prometheus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ggav326fpkrvg39a5rxg2ysg6mb16zzdv4yw0753fyk61v2g4pz"))))
    (properties `((upstream-name . "prometheus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/bitnomial/prometheus")
    (synopsis "Prometheus Haskell Client")
    (description
     "[Prometheus Haskell Client]

A simple and modern, type safe, performance focused, idiomatic Haskell client
for <http://prometheus.io Prometheus> monitoring. Specifically there is no
use of unsafe IO or manual ByteString construction from lists of
bytes. Batteries-included web server.

A key design element of this library is that the RegistryT monad transformer
is only required for registering new time series. Once the time series is
registered, new data samples may just be added in the IO monad.

Note: Version 0.* supports Prometheus v1.0 and version 2.* supports Prometheus v2.0.

[Usage Example]

> module Example where
>
> import           Control.Monad.IO.Class                         (liftIO)
> import           System.Metrics.Prometheus.Http.Scrape          (serveMetricsT)
> import           System.Metrics.Prometheus.Concurrent.RegistryT
> import           System.Metrics.Prometheus.Metric.Counter       (inc)
> import           System.Metrics.Prometheus.MetricId
>
> main :: IO ()
> main = runRegistryT $ do
>     -- Labels can be defined as lists or added to an empty label set
>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")])
>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty)
>     connectCounter <- registerCounter \"example_connection_total\" mempty
>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100]
>
>     liftIO $ inc connectCounter -- increment a counter
>
>     -- [...] pass metric handles to the rest of the app
>
>     serveMetricsT 8080 [\"metrics\"] -- http://localhost:8080/metric server
>

[Advanced Usage]

A `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists
of `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.")
    (license license:bsd-3)))

haskell-9.2-prometheus

(define-public haskell-9.2-sandwich-hedgehog
  (package
    (name "haskell-9.2-sandwich-hedgehog")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-hedgehog/sandwich-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05zzsf3m2lc050aafb16x94dgprmhs8f5fx5l5nfrinki0zyjg04"))))
    (properties `((upstream-name . "sandwich-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-sandwich)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-string-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-vty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-wl-pprint-annotated)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Hedgehog")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-hedgehog documentation>.")
    (license license:bsd-3)))

haskell-9.2-sandwich-hedgehog

(define-public haskell-9.2-sandwich-quickcheck
  (package
    (name "haskell-9.2-sandwich-quickcheck")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-quickcheck/sandwich-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vlp15hcmrxrqwzqgk7ykpg3pvr0wd2cz6pib61yrxmp7334cf4y"))))
    (properties `((upstream-name . "sandwich-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-sandwich)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with QuickCheck")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-quickcheck documentation>.")
    (license license:bsd-3)))

haskell-9.2-sandwich-quickcheck

(define-public haskell-9.2-sandwich-slack
  (package
    (name "haskell-9.2-sandwich-slack")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-slack/sandwich-slack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ffvkqxffyrl02w22xa3rg8y3lnsq57dhmprp9h6sgp5xwxyrhcb"))))
    (properties `((upstream-name . "sandwich-slack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-sandwich)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-string-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Slack")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-slack documentation>.")
    (license license:bsd-3)))

haskell-9.2-sandwich-slack

(define-public haskell-9.2-sqlcli-odbc
  (package
    (name "haskell-9.2-sqlcli-odbc")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlcli-odbc/sqlcli-odbc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rfhdaa0wmvc78nbjhi93p9sv66xa6rjr79yyhlkqi1d335b8vb5"))))
    (properties `((upstream-name . "sqlcli-odbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-logging)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-sqlcli)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) unixodbc)))
    (home-page "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc")
    (synopsis "ODBC specific definitions to be used by SQL CLI clients.")
    (description
     "Access databases through ODBC using SQLCLI compatible functions.
The package adds ODBC specific definition to the sqlcli package.")
    (license license:bsd-3)))

haskell-9.2-sqlcli-odbc

(define-public haskell-9.2-sydtest-persistent
  (package
    (name "haskell-9.2-sydtest-persistent")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-persistent/sydtest-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19shysqqn4dz33lgmlshnk1aksp8f9rnxmzzag2hmbrywbrjwr1q"))))
    (properties `((upstream-name . "sydtest-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A persistent companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-persistent

(define-public haskell-9.2-sydtest-wai
  (package
    (name "haskell-9.2-sydtest-wai")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-wai/sydtest-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zyhgwi8vhjg7mahp98fjgvkhqvh6zwfw3pmhwk57raavzsg2ksb"))))
    (properties `((upstream-name . "sydtest-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A wai companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-wai

(define-public haskell-9.2-validity-persistent
  (package
    (name "haskell-9.2-validity-persistent")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-persistent/validity-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02kyiwnj53kk11p0178m98gbfs7508lpk0bi4yd1svpj3vryhf6c"))))
    (properties `((upstream-name . "validity-persistent") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Validity instances for persistent-related types")
    (description "")
    (license license:expat)))

haskell-9.2-validity-persistent

(define-public haskell-9.2-wai-extra
  (package
    (name "haskell-9.2-wai-extra")
    (version "3.1.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-extra/wai-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h4cqd5akrq0vhv3l0fzryy7qw0c2jb58lngx7x8ij63bckjs3fz"))))
    (properties `((upstream-name . "wai-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")
       #:cabal-revision
       ("1" "0dyvg2bb37im790757khncxpnf45451dd8575p736ry4g8rpqgpw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-wai-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
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

* Combine Headers

Combine duplicate headers into one.

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

haskell-9.2-wai-extra

(define-public haskell-9.2-wai-feature-flags
  (package
    (name "haskell-9.2-wai-feature-flags")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-feature-flags/wai-feature-flags-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02fwha57wwjbjapkp519da2jml3921rdlna1zr7vdmrqdz6j327j"))))
    (properties `((upstream-name . "wai-feature-flags") (hidden? . #f)))
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
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/wai-feature-flags#readme")
    (synopsis "Feature flag support for WAI applications.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/wai-feature-flags>.")
    (license license:bsd-3)))

haskell-9.2-wai-feature-flags

(define-public haskell-9.2-wai-handler-launch
  (package
    (name "haskell-9.2-wai-handler-launch")
    (version "3.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-handler-launch/wai-handler-launch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ifqgyc1ccig5angh5l1iq7vyms4lvi8wzvysg5dw82nml49n02m"))))
    (properties `((upstream-name . "wai-handler-launch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wai-handler-launch")
    (synopsis "Launch a web app in the default browser.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.")
    (license license:expat)))

haskell-9.2-wai-handler-launch

(define-public haskell-9.2-wai-session-redis
  (package
    (name "haskell-9.2-wai-session-redis")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session-redis/wai-session-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lfyj0id6gm6cfx7dmfiw0mx26m7ah5c4mb5xhnzmh65s538l2zs"))))
    (properties `((upstream-name . "wai-session-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-session)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/t4ccer/wai-session-redis#readme")
    (synopsis "Simple Redis backed wai-session backend.")
    (description
     "Simple Redis backed wai-session backend. This module allows you to store session data of wai-sessions in a Redis database.")
    (license license:bsd-3)))

haskell-9.2-wai-session-redis

(define-public haskell-9.2-warp-tls
  (package
    (name "haskell-9.2-warp-tls")
    (version "3.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls/warp-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00vgs9v7k0fapl05knqii9g47svf4lapb7ixkll7xr4zvmkk0r0m"))))
    (properties `((upstream-name . "warp-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "HTTP over TLS support for Warp via the TLS package")
    (description "SSLv1 and SSLv2 are obsoleted by IETF.
We should use TLS 1.2 (or TLS 1.1 or TLS 1.0 if necessary).
HTTP/2 can be negotiated by ALPN.
API docs and the README are available at
<http://www.stackage.org/package/warp-tls>.")
    (license license:expat)))

haskell-9.2-warp-tls

(define-public haskell-9.2-webby
  (package
    (name "haskell-9.2-webby")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/webby/webby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nrk40blzmzv3drgja76bq6czlayqan4rl3wgkd7mlkbkvdplmxj"))))
    (properties `((upstream-name . "webby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/donatello/webby")
    (synopsis "A super-simple web server framework")
    (description
     "A super-simple, easy to use web server framework inspired by
Scotty. The goals of the project are: (1) Be easy to use (2) Allow
graceful exception handling (3) Parse request parameters easily and
in a typed manner.")
    (license license:asl2.0)))

haskell-9.2-webby

