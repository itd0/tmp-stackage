;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage022)
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
(define-public haskell-9.4-Blammo
  (package
    (name "haskell-9.4-Blammo")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-envparse)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-monad-logger-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/blammo#readme")
    (synopsis "Batteries-included Structured Logging library")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-Blammo

(define-public haskell-9.4-async-refresh-tokens
  (package
    (name "haskell-9.4-async-refresh-tokens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-async-refresh)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-formatting)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh-tokens#readme")
    (synopsis
     "Package implementing core logic for refreshing of expiring access tokens")
    (description
     "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).")
    (license license:bsd-3)))

haskell-9.4-async-refresh-tokens

(define-public haskell-9.4-aws-xray-client-persistent
  (package
    (name "haskell-9.4-aws-xray-client-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with Persistent.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with Persistent.")
    (license license:expat)))

haskell-9.4-aws-xray-client-persistent

(define-public haskell-9.4-bimap-server
  (package
    (name "haskell-9.4-bimap-server")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bimap)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
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

haskell-9.4-bimap-server

(define-public haskell-9.4-bugsnag-wai
  (package
    (name "haskell-9.4-bugsnag-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-bugsnag)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "WAI integration for Bugsnag error reporting for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-bugsnag-wai

(define-public haskell-9.4-casa-types
  (package
    (name "haskell-9.4-casa-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/casa-types")
    (synopsis "Types for Casa")
    (description "Types for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-9.4-casa-types

(define-public haskell-9.4-closed
  (package
    (name "haskell-9.4-closed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/frontrowed/closed#readme")
    (synopsis "Integers bounded by a closed interval")
    (description
     "Integers bounded by a closed interval checked at compile time")
    (license license:expat)))

haskell-9.4-closed

(define-public haskell-9.4-context-http-client
  (package
    (name "haskell-9.4-context-http-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-context)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Modify HTTP requests/responses using context")
    (description
     "Modify outgoing HTTP requests and incoming HTTP responses using context.")
    (license license:expat)))

haskell-9.4-context-http-client

(define-public haskell-9.4-context-wai-middleware
  (package
    (name "haskell-9.4-context-wai-middleware")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-context)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis
     "Add request-specific (or not!) context to your WAI applications")
    (description
     "Add request-specific (or not!) context to your WAI applications.")
    (license license:expat)))

haskell-9.4-context-wai-middleware

(define-public haskell-9.4-esqueleto
  (package
    (name "haskell-9.4-esqueleto")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
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

haskell-9.4-esqueleto

(define-public haskell-9.4-genvalidity-hspec-persistent
  (package
    (name "haskell-9.4-genvalidity-hspec-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-persistent

(define-public haskell-9.4-genvalidity-sydtest-aeson
  (package
    (name "haskell-9.4-genvalidity-sydtest-aeson")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-aeson/genvalidity-sydtest-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n8n07h5v7gwpfrfd8f4jir3d2331licmv78ih0i0qxwr87grv02"))))
    (properties `((upstream-name . "genvalidity-sydtest-aeson")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances in sydtest")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-sydtest-aeson

(define-public haskell-9.4-genvalidity-sydtest-hashable
  (package
    (name "haskell-9.4-genvalidity-sydtest-hashable")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-hashable/genvalidity-sydtest-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05482ynm19k9wj0hvvlfimvdng1wkl35409lp1r6vj02b7ml4i2z"))))
    (properties `((upstream-name . "genvalidity-sydtest-hashable")
                  (hidden? . #f)))
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
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances for sydtest")
    (description "Standard spec's for Hashable instances for sydtest")
    (license license:expat)))

haskell-9.4-genvalidity-sydtest-hashable

(define-public haskell-9.4-genvalidity-sydtest-lens
  (package
    (name "haskell-9.4-genvalidity-sydtest-lens")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-lens/genvalidity-sydtest-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yvgbyhbf8mbqy6hil8g1zk1l0zgjnrw3y3cydnqvvbvka5h7jm9"))))
    (properties `((upstream-name . "genvalidity-sydtest-lens") (hidden? . #f)))
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
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens for sydtest")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-9.4-genvalidity-sydtest-lens

(define-public haskell-9.4-genvalidity-sydtest-persistent
  (package
    (name "haskell-9.4-genvalidity-sydtest-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances for sydtest")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-sydtest-persistent

(define-public haskell-9.4-gi-atk
  (package
    (name "haskell-9.4-gi-atk")
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
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-atk

(define-public haskell-9.4-gi-dbusmenu
  (package
    (name "haskell-9.4-gi-dbusmenu")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Dbusmenu bindings")
    (description "Bindings for libdbusmenu, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-dbusmenu

(define-public haskell-9.4-gi-gio
  (package
    (name "haskell-9.4-gi-gio")
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
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gio

(define-public haskell-9.4-gi-graphene
  (package
    (name "haskell-9.4-gi-graphene")
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
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Graphene bindings")
    (description "Bindings for Graphene, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-graphene

(define-public haskell-9.4-gi-harfbuzz
  (package
    (name "haskell-9.4-gi-harfbuzz")
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
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-freetype2)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "HarfBuzz bindings")
    (description "Bindings for HarfBuzz, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-harfbuzz

(define-public haskell-9.4-gi-javascriptcore
  (package
    (name "haskell-9.4-gi-javascriptcore")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "JavaScriptCore bindings")
    (description "Bindings for JavaScriptCore, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-javascriptcore

(define-public haskell-9.4-gopher-proxy
  (package
    (name "haskell-9.4-gopher-proxy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
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

haskell-9.4-gopher-proxy

(define-public haskell-9.4-hasql-dynamic-statements
  (package
    (name "haskell-9.4-hasql-dynamic-statements")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-hasql-implicits)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-ptr)))
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

haskell-9.4-hasql-dynamic-statements

(define-public haskell-9.4-hasql-migration
  (package
    (name "haskell-9.4-hasql-migration")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-hasql-transaction)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tvh/hasql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.4-hasql-migration

(define-public haskell-9.4-hasql-notifications
  (package
    (name "haskell-9.4-hasql-notifications")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-hasql-pool)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/diogob/hasql-notifications")
    (synopsis "LISTEN/NOTIFY support for Hasql")
    (description
     "Use PostgreSQL Asynchronous notification support with your Hasql Types.")
    (license license:bsd-3)))

haskell-9.4-hasql-notifications

(define-public haskell-9.4-hasql-optparse-applicative
  (package
    (name "haskell-9.4-hasql-optparse-applicative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-hasql-pool)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-9.4-hasql-optparse-applicative

(define-public haskell-9.4-katip-wai
  (package
    (name "haskell-9.4-katip-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-katip)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Disco-Dave/katip-wai#readme")
    (synopsis
     "WAI middleware for logging request and response info through katip.")
    (description
     "WAI middleware for logging request and response info through katip. Please see the README on GitHub at <https://github.com/Disco-Dave/katip-wai#readme>")
    (license license:bsd-3)))

haskell-9.4-katip-wai

(define-public haskell-9.4-mmark-ext
  (package
    (name "haskell-9.4-mmark-ext")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-ext/mmark-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dy3xnzpbbnp03k3r04q8y10pcj2r708dk8bff0pxzkvypm75g88"))))
    (properties `((upstream-name . "mmark-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0kz0389rrjd4wy6a5m89w7a4pcd4765kah7rwa7i649l8h5a5asm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-mmark)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-modern-uri)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-skylighting)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mmark-md/mmark-ext")
    (synopsis "Commonly useful extensions for the MMark markdown processor")
    (description
     "Commonly useful extensions for the MMark markdown processor. Click on
\"Text.MMark.Extension.Common\" to get started.")
    (license license:bsd-3)))

haskell-9.4-mmark-ext

(define-public haskell-9.4-persistent-discover
  (package
    (name "haskell-9.4-persistent-discover")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-discover-instances)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-some-dict-of)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-discover#readme")
    (synopsis "Persistent module discover utilities")
    (description
     "This package provides an executable for discovering Persistent model definition files, as well as a library function to glob all persistent model files. Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-discover#readme>")
    (license license:bsd-3)))

haskell-9.4-persistent-discover

(define-public haskell-9.4-persistent-documentation
  (package
    (name "haskell-9.4-persistent-documentation")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-documentation")
    (synopsis "Documentation DSL for persistent entities")
    (description
     "A convenient DSL that allows you to attach documentation to persistent database entities")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-persistent-documentation

(define-public haskell-9.4-persistent-iproute
  (package
    (name "haskell-9.4-persistent-iproute")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/greydot/persistent-iproute")
    (synopsis "Persistent instances for types in iproute")
    (description
     "Persistent instances and operators for types in iproute to use with PostgreSQL.")
    (license license:bsd-3)))

haskell-9.4-persistent-iproute

(define-public haskell-9.4-persistent-mongoDB
  (package
    (name "haskell-9.4-persistent-mongoDB")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-mongoDB)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using mongoDB.")
    (description "MongoDB backend for the persistent library.")
    (license license:expat)))

haskell-9.4-persistent-mongoDB

(define-public haskell-9.4-persistent-mysql
  (package
    (name "haskell-9.4-persistent-mysql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mysql)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-mysql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
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

haskell-9.4-persistent-mysql

(define-public haskell-9.4-persistent-postgresql
  (package
    (name "haskell-9.4-persistent-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using postgresql.")
    (description "Based on the postgresql-simple package")
    (license license:expat)))

haskell-9.4-persistent-postgresql

(define-public haskell-9.4-persistent-redis
  (package
    (name "haskell-9.4-persistent-redis")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-redis")
    (synopsis "Backend for persistent library using Redis.")
    (description "Based on the Redis package.")
    (license license:bsd-3)))

haskell-9.4-persistent-redis

(define-public haskell-9.4-persistent-sqlite
  (package
    (name "haskell-9.4-persistent-sqlite")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-9.4-persistent-sqlite

(define-public haskell-9.4-persistent-test
  (package
    (name "haskell-9.4-persistent-test")
    (version "2.13.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-test/persistent-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qqv00nlqpnfx4h3kkd8k0y41a8dfmgj0rc0smdf6p4kl2g1hrdl"))))
    (properties `((upstream-name . "persistent-test") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Tests for Persistent")
    (description
     "Tests for Persistent. This is only for use in developing libraries that should conform to the persistent interface, not for users of the persistent suite of database libraries.")
    (license license:expat)))

haskell-9.4-persistent-test

(define-public haskell-9.4-safe-coloured-text-layout-gen
  (package
    (name "haskell-9.4-safe-coloured-text-layout-gen")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-layout-gen/safe-coloured-text-layout-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v4in8zl689j47jwac0z1k3rnnsc54qdclrbzja9aa364bmczzv8"))))
    (properties `((upstream-name . "safe-coloured-text-layout-gen")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-safe-coloured-text-gen)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-safe-coloured-text-layout)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "")
    (description "Generators for types in safe-coloured-text-layout")
    (license license:expat)))

haskell-9.4-safe-coloured-text-layout-gen

(define-public haskell-9.4-sandwich-hedgehog
  (package
    (name "haskell-9.4-sandwich-hedgehog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sandwich)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-string-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-vty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-wl-pprint-annotated)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Hedgehog")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-hedgehog documentation>.")
    (license license:bsd-3)))

haskell-9.4-sandwich-hedgehog

(define-public haskell-9.4-sandwich-quickcheck
  (package
    (name "haskell-9.4-sandwich-quickcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sandwich)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with QuickCheck")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-quickcheck documentation>.")
    (license license:bsd-3)))

haskell-9.4-sandwich-quickcheck

(define-public haskell-9.4-sandwich-slack
  (package
    (name "haskell-9.4-sandwich-slack")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sandwich)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-string-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Slack")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-slack documentation>.")
    (license license:bsd-3)))

haskell-9.4-sandwich-slack

(define-public haskell-9.4-sqlcli-odbc
  (package
    (name "haskell-9.4-sqlcli-odbc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-logging)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sqlcli)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) unixodbc)))
    (home-page "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc")
    (synopsis "ODBC specific definitions to be used by SQL CLI clients.")
    (description
     "Access databases through ODBC using SQLCLI compatible functions.
The package adds ODBC specific definition to the sqlcli package.")
    (license license:bsd-3)))

haskell-9.4-sqlcli-odbc

(define-public haskell-9.4-sydtest-hedis
  (package
    (name "haskell-9.4-sydtest-hedis")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-hedis/sydtest-hedis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y31aqn4ra92arq054amhkcxxng0wsngv59ngwn05gc5jv6whi9j"))))
    (properties `((upstream-name . "sydtest-hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An hedis companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-hedis

(define-public haskell-9.4-sydtest-mongo
  (package
    (name "haskell-9.4-sydtest-mongo")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-mongo/sydtest-mongo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jm2c05dxri0w83ii3pyphb2rrla72fih5g26w0indb51i0wlnq1"))))
    (properties `((upstream-name . "sydtest-mongo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-mongoDB)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sydtest-process)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An mongoDB companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-mongo

(define-public haskell-9.4-sydtest-persistent
  (package
    (name "haskell-9.4-sydtest-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A persistent companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-persistent

(define-public haskell-9.4-sydtest-rabbitmq
  (package
    (name "haskell-9.4-sydtest-rabbitmq")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-rabbitmq/sydtest-rabbitmq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ra32y2w7hirjmaz67myq26waccznkl7gqmdnwdd93n6n1h1gb9p"))))
    (properties `((upstream-name . "sydtest-rabbitmq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-amqp)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An rabbitmq companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-rabbitmq

(define-public haskell-9.4-sydtest-wai
  (package
    (name "haskell-9.4-sydtest-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A wai companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-wai

(define-public haskell-9.4-validity-persistent
  (package
    (name "haskell-9.4-validity-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Validity instances for persistent-related types")
    (description "")
    (license license:expat)))

haskell-9.4-validity-persistent

(define-public haskell-9.4-wai-extra
  (package
    (name "haskell-9.4-wai-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
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

haskell-9.4-wai-extra

(define-public haskell-9.4-wai-feature-flags
  (package
    (name "haskell-9.4-wai-feature-flags")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/wai-feature-flags#readme")
    (synopsis "Feature flag support for WAI applications.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/wai-feature-flags>.")
    (license license:bsd-3)))

haskell-9.4-wai-feature-flags

(define-public haskell-9.4-wai-handler-launch
  (package
    (name "haskell-9.4-wai-handler-launch")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wai-handler-launch")
    (synopsis "Launch a web app in the default browser.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.")
    (license license:expat)))

haskell-9.4-wai-handler-launch

(define-public haskell-9.4-wai-session-redis
  (package
    (name "haskell-9.4-wai-session-redis")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-session)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/t4ccer/wai-session-redis#readme")
    (synopsis "Simple Redis backed wai-session backend.")
    (description
     "Simple Redis backed wai-session backend. This module allows you to store session data of wai-sessions in a Redis database.")
    (license license:bsd-3)))

haskell-9.4-wai-session-redis

(define-public haskell-9.4-warp-tls
  (package
    (name "haskell-9.4-warp-tls")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
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

haskell-9.4-warp-tls

