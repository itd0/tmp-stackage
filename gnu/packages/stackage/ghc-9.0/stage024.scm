;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage024)
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
(define-public haskell-9.0-async-refresh-tokens
  (package
    (name "haskell-9.0-async-refresh-tokens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-async-refresh)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
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
    (home-page "https://github.com/mtesseract/async-refresh-tokens#readme")
    (synopsis
     "Package implementing core logic for refreshing of expiring access tokens")
    (description
     "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).")
    (license license:bsd-3)))

haskell-9.0-async-refresh-tokens

(define-public haskell-9.0-aws-xray-client-persistent
  (package
    (name "haskell-9.0-aws-xray-client-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with Persistent.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with Persistent.")
    (license license:expat)))

haskell-9.0-aws-xray-client-persistent

(define-public haskell-9.0-bimap-server
  (package
    (name "haskell-9.0-bimap-server")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bimap)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
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

haskell-9.0-bimap-server

(define-public haskell-9.0-butcher
  (package
    (name "haskell-9.0-butcher")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-deque)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-multistate)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unsafe)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-9.0-butcher

(define-public haskell-9.0-casa-types
  (package
    (name "haskell-9.0-casa-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/casa-types")
    (synopsis "Types for Casa")
    (description "Types for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-9.0-casa-types

(define-public haskell-9.0-closed
  (package
    (name "haskell-9.0-closed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/frontrowed/closed#readme")
    (synopsis "Integers bounded by a closed interval")
    (description
     "Integers bounded by a closed interval checked at compile time")
    (license license:expat)))

haskell-9.0-closed

(define-public haskell-9.0-conferer-warp
  (package
    (name "haskell-9.0-conferer-warp")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-warp/conferer-warp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zbgxq229jr7xwzw6q20rwnslbci07b1vk324izm8hxcp3kb76mj"))))
    (properties `((upstream-name . "conferer-warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14gcyf7kn60rlka1ff9n10jhv1j7lxc5f3kfib7y1j4sy3dshbnl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-conferer)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's FromConfig instances for warp settings")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-conferer-warp

(define-public haskell-9.0-dhall-yaml
  (package
    (name "haskell-9.0-dhall-yaml")
    (version "1.2.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-yaml/dhall-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a3g84799lbq7v9bzdq9bcwzyzci07rd1x42325ck4x51hrqs8nn"))))
    (properties `((upstream-name . "dhall-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jfzpwbcg17mqk9c2f1lhqjwadxm1k04rd91j4h4gd5wnsvb85i4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-HsYAML)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-dhall-json)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-yaml")
    (synopsis "Convert between Dhall and YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and YAML.
You can use this package as a library or an executable:

* See the \"Dhall.Yaml\" module if you want to use this package as a library

* Use the @@dhall-to-yaml-ng@@ program from this package if you want an executable")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-dhall-yaml

(define-public haskell-9.0-domain-optics
  (package
    (name "haskell-9.0-domain-optics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-domain-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-th-lego)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-optics")
    (synopsis "Integration of domain with optics")
    (description "")
    (license license:expat)))

haskell-9.0-domain-optics

(define-public haskell-9.0-esqueleto
  (package
    (name "haskell-9.0-esqueleto")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-esqueleto

(define-public haskell-9.0-essence-of-live-coding-warp
  (package
    (name "haskell-9.0-essence-of-live-coding-warp")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-warp/essence-of-live-coding-warp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x18jxw0xwqvbwdalbrz4lp2lq9pyl4a5r9vnky5hc5wcwqm2f4m"))))
    (properties `((upstream-name . "essence-of-live-coding-warp")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
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

haskell-9.0-essence-of-live-coding-warp

(define-public haskell-9.0-eventful-memory
  (package
    (name "haskell-9.0-eventful-memory")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-memory/eventful-memory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fdd2z13lnk1zxhylriwblz96x90v4504abrj9rfbi732853wz3a"))))
    (properties `((upstream-name . "eventful-memory") (hidden? . #f)))
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
                     haskell-9.0-eventful-core)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-eventful-test-helpers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "In-memory implementations for eventful")
    (description "In-memory implementations for eventful")
    (license license:expat)))

haskell-9.0-eventful-memory

(define-public haskell-9.0-fn
  (package
    (name "haskell-9.0-fn")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fn/fn-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0pxfwyfigj449qd01xb044gz1h63f3lvmpq6xij09xhkm8bv0d0y"))))
    (properties `((upstream-name . "fn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/positiondev/fn#readme")
    (synopsis "A functional web framework.")
    (description
     "A Haskell web framework where you write plain old functions.

/Provided you have/ <https://github.com/commercialhaskell/stack#readme stack> /installed, you can run this example like a shell script (it'll listen on port 3000):/

@@
#!\\/usr\\/bin\\/env stack
\\-\\- stack --resolver lts-5.5 --install-ghc runghc --package fn --package warp
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
import Data.Monoid ((&#60;&#62;))
import Data.Text (Text)
import Network.Wai (Response)
import Network.Wai.Handler.Warp (run)
import Web.Fn

data Ctxt = Ctxt &#123; _req :: FnRequest &#125;
instance RequestContext Ctxt where
&#32; getRequest = _req
&#32; setRequest c r = c &#123; _req = r &#125;

initializer :: IO Ctxt
initializer = return (Ctxt defaultFnRequest)

main :: IO ()
main = do ctxt <- initializer
&#32;         run 3000 $ toWAI ctxt site

site :: Ctxt -> IO Response
site ctxt = route ctxt [ end                        ==> indexH
&#32;                      , path &#34;echo&#34; \\/\\/ param &#34;msg&#34; ==> echoH
&#32;                      , path &#34;echo&#34; \\/\\/ segment     ==> echoH
&#32;                      ]
&#32;                 \\`fallthrough\\` notFoundText &#34;Page not found.&#34;

indexH :: Ctxt -> IO (Maybe Response)
indexH _ = okText &#34;Try visiting \\/echo?msg='hello' or \\/echo\\/hello&#34;

echoH :: Ctxt -> Text -> IO (Maybe Response)
echoH _ msg = okText $ &#34;Echoing '&#34; &#60;&#62; msg &#60;&#62; &#34;'.&#34;
@@


Fn lets you write web code that just looks like normal Haskell code.

* An application has some \\\"context\\\", which must contain a @@Request@@,
but can contain other data as well, like database connection pools,
etc. This context will be passed to each of your handlers, updated
with the current HTTP Request.

* Routes are declared to capture parameters and/or segments of the url,
and then routed to handler functions that have the appropriate number
and type of arguments. These functions return @@IO (Maybe Response)@@,
where @@Nothing@@ indicates to Fn that you want it to keep looking for
matching routes.

* All handlers just use plain old @@IO@@, which means it is easy to call
them from GHCi, @@forkIO@@, etc.

* All of this is a small wrapper around the WAI interface, so you have
the flexilibility to do anything you need to do with HTTP.

The name comes from the fact that Fn emphasizes functions (over monads),
where all necessary data is passed via function arguments, and control
flow is mediated by return values.")
    (license license:isc)))

haskell-9.0-fn

(define-public haskell-9.0-genvalidity-hspec-persistent
  (package
    (name "haskell-9.0-genvalidity-hspec-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-persistent

(define-public haskell-9.0-gi-gdkpixbuf
  (package
    (name "haskell-9.0-gi-gdkpixbuf")
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
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gmodule)
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
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-gdkpixbuf

(define-public haskell-9.0-gi-pango
  (package
    (name "haskell-9.0-gi-pango")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-harfbuzz)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-pango

(define-public haskell-9.0-gopher-proxy
  (package
    (name "haskell-9.0-gopher-proxy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mime-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
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

haskell-9.0-gopher-proxy

(define-public haskell-9.0-hgeometry
  (package
    (name "haskell-9.0-hgeometry")
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
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-data-clist)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-fixed-vector)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hgeometry-combinatorial)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
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
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-vector-builder)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-circular)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-vinyl)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-witherable)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
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

haskell-9.0-hgeometry

(define-public haskell-9.0-hpack-dhall
  (package
    (name "haskell-9.0-hpack-dhall")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpack-dhall/hpack-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yhf9b1nadcz98bq84jzb80mc1w4a6sph5d6c4pnf2xj2akdxcxf"))))
    (properties `((upstream-name . "hpack-dhall") (hidden? . #f)))
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
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-dhall)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-dhall-json)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hpack)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cabalism/hpack-dhall#readme")
    (synopsis "hpack's dhalling")
    (description
     "Use hpack phrasing in dhall to write cabal files.

There are two main reasons why you'd use hpack-dhall, convenience and safety.

Get the convenience of hpack. Don't bother to state what can be inferred or
defaulted, easing the burden of completing a package description by hand.  For
example `other-modules` can be inferred by taking the set difference between
modules on disk and the set of `exposed-modules`.

Get the safety of dhall's programmable configuration: typed fields, safe imports
and functions.")
    (license license:bsd-3)))

haskell-9.0-hpack-dhall

(define-public haskell-9.0-hspec-wai
  (package
    (name "haskell-9.0-hspec-wai")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai/hspec-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03wiksic5y9a2g6a86nsxrnajdgdvpv17w02h5qla0zp9zs6pa1j"))))
    (properties `((upstream-name . "hspec-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-9.0-hspec-wai

(define-public haskell-9.0-hw-eliasfano
  (package
    (name "haskell-9.0-hw-eliasfano")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-eliasfano/hw-eliasfano-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k22yq8blyjmgh7nzmqvnc1g0bgjbbvqv9r4w02z5jn9kfj619h2"))))
    (properties `((upstream-name . "hw-eliasfano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ncny2wnj29dnld28az30w5by238fc58gxs6sx6vvc8hcqycfj67")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hw-int)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-packed-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-temporary-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-eliasfano#readme")
    (synopsis "Elias-Fano")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-eliasfano

(define-public haskell-9.0-hw-json-simple-cursor
  (package
    (name "haskell-9.0-hw-json-simple-cursor")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simple-cursor/hw-json-simple-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b867rgsybfb568z6qa4x8jqz24wfjydg91w7bsl44vqq0k3hk4f"))))
    (properties `((upstream-name . "hw-json-simple-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2" "-f-sse42")
       #:cabal-revision
       ("2" "0zs8hd42j64aymrf06qlkc70cr1jyz0svq78xqwvwxk37pz9r1qq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-json-simd)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-json-simple-cursor#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Memory efficient JSON parser. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-json-simple-cursor

(define-public haskell-9.0-hw-json-standard-cursor
  (package
    (name "haskell-9.0-hw-json-standard-cursor")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-standard-cursor/hw-json-standard-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02fmhjnjf0idmzq0y1a1m78bwl72ycvr6cxlscxpc2370r2s3akh"))))
    (properties `((upstream-name . "hw-json-standard-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2" "-f-sse42")
       #:cabal-revision
       ("2" "0qsii1d0y22w8hb9pf654fb2qs9ndkysahpabgi0d1q59qv3msx0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-bits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-json-simd)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/haskell-works/hw-json-standard-cursor#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Memory efficient JSON parser. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-json-standard-cursor

(define-public haskell-9.0-hw-simd
  (package
    (name "haskell-9.0-hw-simd")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-simd/hw-simd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "051dbwi4kvv04dnglcx9666g097fy9rw8kmgbcw5y9cs06mbw9cr"))))
    (properties `((upstream-name . "hw-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("2" "10ns52d5xzry7bkaaggv5sgry44fxl9jpyx48iafyfpcn3h8439k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-bits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-simd#readme")
    (synopsis "SIMD library")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>")
    (license license:bsd-3)))

haskell-9.0-hw-simd

(define-public haskell-9.0-hw-succinct
  (package
    (name "haskell-9.0-hw-succinct")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-succinct/hw-succinct-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ns96y77r7pa7pv6p7v24m0w2xw7451skcl9y2z3r8zp3y65fb00"))))
    (properties `((upstream-name . "hw-succinct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-succinct#readme")
    (synopsis "Succint datastructures")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-hw-succinct

(define-public haskell-9.0-hw-xml
  (package
    (name "haskell-9.0-hw-xml")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-xml/hw-xml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gjs2rcm40j3962kw7n02pqim1p485prm1bd2v8hk1ka35c8nq1w"))))
    (properties `((upstream-name . "hw-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ckkwz82y1gdkd85zaiild82i6fcbrb3ybkh5s94rbbyaqgjkhv6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hw-parser)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-xml#readme")
    (synopsis "XML parser based on succinct data structures.")
    (description
     "XML parser based on succinct data structures. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-xml

(define-public haskell-9.0-hyperloglog
  (package
    (name "haskell-9.0-hyperloglog")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyperloglog/hyperloglog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zwg4dhgasa9sx7pbjjjb9kz2bnhb3r2daij2b572cszv65l91nv"))))
    (properties `((upstream-name . "hyperloglog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("2" "0al93mhfhng8vwvhz8721gkzjjdblycpv4pi9lygbj8ay129djpr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-approximate)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-bits)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-cpu)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/hyperloglog")
    (synopsis
     "An approximate streaming (constant space) unique object counter")
    (description
     "This package provides an approximate streaming (constant space) unique object counter.

See the original paper for details:
<http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf>

Notably it can be used to approximate a set of several billion elements with 1-2% inaccuracy
in around 1.5k of memory.")
    (license license:bsd-3)))

haskell-9.0-hyperloglog

(define-public haskell-9.0-katip-wai
  (package
    (name "haskell-9.0-katip-wai")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/katip-wai/katip-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10chkrjjh6ja6bil3s12hm7mfgi1j1idq490h5iqs1y3am44bda1"))))
    (properties `((upstream-name . "katip-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-katip)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Disco-Dave/katip-wai#readme")
    (synopsis
     "WAI middleware for logging request and response info through katip.")
    (description
     "WAI middleware for logging request and response info through katip. Please see the README on GitHub at <https://github.com/Disco-Dave/katip-wai#readme>")
    (license license:bsd-3)))

haskell-9.0-katip-wai

(define-public haskell-9.0-opentelemetry-extra
  (package
    (name "haskell-9.0-opentelemetry-extra")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-extra/opentelemetry-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11lwhm3rpajmch7kjb4qwngram5ka8fbd3c0mxszlf4a9dlqag32"))))
    (properties `((upstream-name . "opentelemetry-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ghc-events)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hvega)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-jsonifier)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-opentelemetry)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-text-show)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-extra")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.0-opentelemetry-extra

(define-public haskell-9.0-password-instances
  (package
    (name "haskell-9.0-password-instances")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-password-types)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password-instances#readme")
    (synopsis "typeclass instances for password package")
    (description
     "A library providing typeclass instances for common libraries for the types from the password package.")
    (license license:bsd-3)))

haskell-9.0-password-instances

(define-public haskell-9.0-persistent-discover
  (package
    (name "haskell-9.0-persistent-discover")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-discover-instances)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-some-dict-of)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-discover#readme")
    (synopsis "Persistent module discover utilities")
    (description
     "This package provides an executable for discovering Persistent model definition files, as well as a library function to glob all persistent model files. Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-discover#readme>")
    (license license:bsd-3)))

haskell-9.0-persistent-discover

(define-public haskell-9.0-persistent-documentation
  (package
    (name "haskell-9.0-persistent-documentation")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-documentation")
    (synopsis "Documentation DSL for persistent entities")
    (description
     "A convenient DSL that allows you to attach documentation to persistent database entities")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-persistent-documentation

(define-public haskell-9.0-persistent-mongoDB
  (package
    (name "haskell-9.0-persistent-mongoDB")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage008) haskell-9.0-bson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-mongoDB)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using mongoDB.")
    (description "MongoDB backend for the persistent library.")
    (license license:expat)))

haskell-9.0-persistent-mongoDB

(define-public haskell-9.0-persistent-mysql
  (package
    (name "haskell-9.0-persistent-mysql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mysql)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-mysql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
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

haskell-9.0-persistent-mysql

(define-public haskell-9.0-persistent-postgresql
  (package
    (name "haskell-9.0-persistent-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using postgresql.")
    (description "Based on the postgresql-simple package")
    (license license:expat)))

haskell-9.0-persistent-postgresql

(define-public haskell-9.0-persistent-redis
  (package
    (name "haskell-9.0-persistent-redis")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hedis)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/persistent-redis")
    (synopsis "Backend for persistent library using Redis.")
    (description "Based on the Redis package.")
    (license license:bsd-3)))

haskell-9.0-persistent-redis

(define-public haskell-9.0-persistent-sqlite
  (package
    (name "haskell-9.0-persistent-sqlite")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-9.0-persistent-sqlite

(define-public haskell-9.0-persistent-test
  (package
    (name "haskell-9.0-persistent-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Tests for Persistent")
    (description
     "Tests for Persistent. This is only for use in developing libraries that should conform to the persistent interface, not for users of the persistent suite of database libraries.")
    (license license:expat)))

haskell-9.0-persistent-test

(define-public haskell-9.0-postgresql-typed
  (package
    (name "haskell-9.0-postgresql-typed")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15zrsg2zz2jgzb1v0g13c98hfrmnkcjakqpdy2zhbfr6ibivlhkx"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc" "-ftls")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-HDBC)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
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

haskell-9.0-postgresql-typed

(define-public haskell-9.0-prometheus
  (package
    (name "haskell-9.0-prometheus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
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

haskell-9.0-prometheus

(define-public haskell-9.0-sandwich-quickcheck
  (package
    (name "haskell-9.0-sandwich-quickcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-sandwich)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with QuickCheck")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-quickcheck documentation>.")
    (license license:bsd-3)))

haskell-9.0-sandwich-quickcheck

(define-public haskell-9.0-sandwich-slack
  (package
    (name "haskell-9.0-sandwich-slack")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-sandwich)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-string-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Slack")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-slack documentation>.")
    (license license:bsd-3)))

haskell-9.0-sandwich-slack

(define-public haskell-9.0-sized
  (package
    (name "haskell-9.0-sized")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sized/sized-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ayj3fzr4l4l5wmkqnv4h4fxgivmjgamq3wdlpixlwy43wbmf3fy"))))
    (properties `((upstream-name . "sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-subcategories)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-type-natural)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sized")
    (synopsis "Sized sequence data-types")
    (description
     "A wrapper to make length-parametrized data-type from functorial data-types.")
    (license license:bsd-3)))

haskell-9.0-sized

(define-public haskell-9.0-skews
  (package
    (name "haskell-9.0-skews")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-deque)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-9.0-skews

(define-public haskell-9.0-sqlcli-odbc
  (package
    (name "haskell-9.0-sqlcli-odbc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-logging)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-sqlcli)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc")
    (synopsis "ODBC specific definitions to be used by SQL CLI clients.")
    (description
     "Access databases through ODBC using SQLCLI compatible functions.
The package adds ODBC specific definition to the sqlcli package.")
    (license license:bsd-3)))

haskell-9.0-sqlcli-odbc

(define-public haskell-9.0-stm-hamt
  (package
    (name "haskell-9.0-stm-hamt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-deferred-folds)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-focus)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-list-t)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-primitive-extras)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
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

haskell-9.0-stm-hamt

(define-public haskell-9.0-tasty-wai
  (package
    (name "haskell-9.0-tasty-wai")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-wai/tasty-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18yw2qzzg969c99rpa8p154hxbm9i4iq64pma3jkr2gfdm6j4vvg"))))
    (properties `((upstream-name . "tasty-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tasty-wai")
    (synopsis "Test 'wai' endpoints via Test.Tasty")
    (description
     "Helper functions and runners for testing wai endpoints using the Tasty testing infrastructure.")
    (license license:bsd-3)))

haskell-9.0-tasty-wai

(define-public haskell-9.0-text-builder
  (package
    (name "haskell-9.0-text-builder")
    (version "0.6.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder/text-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "145m3v5fpisz04dwd3pwnak8mvsnc60rw92br4q946kymfifb7kj"))))
    (properties `((upstream-name . "text-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-text-builder-dev)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-9.0-text-builder

(define-public haskell-9.0-validity-persistent
  (package
    (name "haskell-9.0-validity-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Validity instances for persistent-related types")
    (description "")
    (license license:expat)))

haskell-9.0-validity-persistent

(define-public haskell-9.0-wai-app-static
  (package
    (name "haskell-9.0-wai-app-static")
    (version "3.1.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-app-static/wai-app-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8zy3dprqjxvlqxrids65yg5qf1h4f63ddspwxrbp0r9d28hwb4"))))
    (properties `((upstream-name . "wai-app-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-print" "-fcryptonite")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-date)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mime-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mockery)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI application for static serving")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-app-static>.")
    (license license:expat)))

haskell-9.0-wai-app-static

(define-public haskell-9.0-wai-feature-flags
  (package
    (name "haskell-9.0-wai-feature-flags")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/wai-feature-flags#readme")
    (synopsis "Feature flag support for WAI applications.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/wai-feature-flags>.")
    (license license:bsd-3)))

haskell-9.0-wai-feature-flags

(define-public haskell-9.0-wai-handler-launch
  (package
    (name "haskell-9.0-wai-handler-launch")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wai-handler-launch")
    (synopsis "Launch a web app in the default browser.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.")
    (license license:expat)))

haskell-9.0-wai-handler-launch

(define-public haskell-9.0-wai-saml2
  (package
    (name "haskell-9.0-wai-saml2")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-saml2/wai-saml2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q1il1lwzinpyhkqrg62hwh7kbb2dyhrlynpzhc9kps00kfxg8zw"))))
    (properties `((upstream-name . "wai-saml2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-c14n)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xml) libxml2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/wai-saml2#readme")
    (synopsis "SAML2 assertion validation as WAI middleware")
    (description
     "A Haskell library which implements SAML2 assertion validation as WAI middleware")
    (license license:expat)))

haskell-9.0-wai-saml2

(define-public haskell-9.0-wai-session-redis
  (package
    (name "haskell-9.0-wai-session-redis")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hedis)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-session)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/t4ccer/wai-session-redis#readme")
    (synopsis "Simple Redis backed wai-session backend.")
    (description
     "Simple Redis backed wai-session backend. This module allows you to store session data of wai-sessions in a Redis database.")
    (license license:bsd-3)))

haskell-9.0-wai-session-redis

(define-public haskell-9.0-warp-tls
  (package
    (name "haskell-9.0-warp-tls")
    (version "3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls/warp-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b9viw26ymzq4q8snfddz3w59sqcf5ankxnw6f99iacxjhk6zs6m"))))
    (properties `((upstream-name . "warp-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r4g0j4kcz9rx776mp8hqd06k8b2k7kxd4qjavh2ay6wcplfl0bl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
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

haskell-9.0-warp-tls

(define-public haskell-9.0-yaml-unscrambler
  (package
    (name "haskell-9.0-yaml-unscrambler")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yaml-unscrambler/yaml-unscrambler-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18xl26w4w7ql0936n5h7fqmcpyg284gn507wx67vs3yqqva1n07a"))))
    (properties `((upstream-name . "yaml-unscrambler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-acc)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-libyaml)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-rerebase)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-selective)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-text-builder-dev)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/yaml-unscrambler")
    (synopsis "Flexible declarative YAML parsing toolkit")
    (description "")
    (license license:expat)))

haskell-9.0-yaml-unscrambler

(define-public haskell-9.0-yesod-core
  (package
    (name "haskell-9.0-yesod-core")
    (version "1.6.24.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-core/yesod-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19ilgm73108ki1hvqc86kir0yrx36vp9g45na6g8dmfsvk9izr10"))))
    (properties `((upstream-name . "yesod-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1406s7is60ji6nn3h1mafkdh7729ipq3i06cqsq77hz2ilj264jl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-auto-update)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-clientsession)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-wai-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-core>")
    (license license:expat)))

haskell-9.0-yesod-core

