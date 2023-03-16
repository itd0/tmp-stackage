;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage025)
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
(define-public haskell-9.0-brittany
  (package
    (name "haskell-9.0-brittany")
    (version "0.14.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brittany/brittany-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03jnjmp4hy0g22h0jq5md60iz5y94fzhdjx849s89mvb28pdfd1n"))))
    (properties `((upstream-name . "brittany") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-butcher)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-czipwith)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-data-tree-print)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-ghc-exactprint)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-monad-memo)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-multistate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/brittany/")
    (synopsis "Haskell source code formatter")
    (description
     "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.

If you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;

The implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.")
    (license (license "FSDG-compatible" "AGPL_3_0_only" ""))))

haskell-9.0-brittany

(define-public haskell-9.0-domain
  (package
    (name "haskell-9.0-domain")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/domain/domain-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0szq40sxd3cpq5mbgq9293643a5j45mr1p03lkxwny8xxhz6hs5a"))))
    (properties `((upstream-name . "domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-domain-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
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
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-th-lego)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-th-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yaml-unscrambler)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain")
    (synopsis "Codegen helping you define domain models")
    (description
     "- For introduction and demo skip to [Readme](#readme).
- For documentation and syntax reference see the \"Domain.Docs\" module.
- For API documentation refer to the \"Domain\" module,
which exports the whole API of this package.")
    (license license:expat)))

haskell-9.0-domain

(define-public haskell-9.0-experimenter
  (package
    (name "haskell-9.0-experimenter")
    (version "0.1.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/experimenter/experimenter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11m832x42xgd679zwnsykggp9afk7kwkis1s04iq4hdxbcylh7kc"))))
    (properties `((upstream-name . "experimenter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-HaTeX)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-esqueleto)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-foundation)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hostname)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-matrix)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/experimenter#readme")
    (synopsis
     "Perform scientific experiments stored in a DB, and generate reports.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/experimenter#readme>")
    (license license:bsd-3)))

haskell-9.0-experimenter

(define-public haskell-9.0-genvalidity-persistent
  (package
    (name "haskell-9.0-genvalidity-persistent")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-persistent/genvalidity-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3illab5k0rzmyi1pjc4yij2dsxn9gnmrvdgll32plxkdmyp0jr"))))
    (properties `((upstream-name . "genvalidity-persistent") (hidden? . #f)))
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
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-containers)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-validity-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Persistent")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-persistent

(define-public haskell-9.0-gi-gdk
  (package
    (name "haskell-9.0-gi-gdk")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14271bbi1dy0r1krxg0ry3hqmqv10v55ja55a912qknsq1ya8nka"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-cairo)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-pango)
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
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-gdk

(define-public haskell-9.0-graphula
  (package
    (name "haskell-9.0-graphula")
    (version "2.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphula/graphula-" version
                    ".tar.gz"))
              (sha256
               (base32
                "066lcn262x4l826sglybrz4mp58ishcj0h1r5h41aiy09mcf4g3v"))))
    (properties `((upstream-name . "graphula") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-persistent-template")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-generics-eot)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/graphula#readme")
    (synopsis
     "A simple interface for generating persistent data and linking its dependencies")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-graphula

(define-public haskell-9.0-hasql
  (package
    (name "haskell-9.0-hasql")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g9hbn9saf17a9jxjkm4bak7xbjgq0nf8khv5djfkyz1yxmw4l6p"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-text-builder)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql")
    (synopsis "An efficient PostgreSQL driver with a flexible mapping API")
    (description
     "Root of the \\\"hasql\\\" ecosystem.
For details and tutorials see
<https://github.com/nikita-volkov/hasql the readme>.

The API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.")
    (license license:expat)))

haskell-9.0-hasql

(define-public haskell-9.0-http-conduit
  (package
    (name "haskell-9.0-http-conduit")
    (version "2.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bj24phbcb7s3k6v48l5gk82m3m23j8zy9l7c5ccxp3ghn9z5gng"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-faeson")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-wai-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-9.0-http-conduit

(define-public haskell-9.0-hw-dsv
  (package
    (name "haskell-9.0-hw-dsv")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-dsv/hw-dsv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xfpkyinwfhjilb428z7nnk84m12b34x29806j1azbv9yfqvhq7z"))))
    (properties `((upstream-name . "hw-dsv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("2" "199xwdcqwdkb62zx91il2naa9j67n4g2rxr9xpmnq1afdl06xzfh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-appar)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-bits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-ip)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-hw-simd)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-dsv#readme")
    (synopsis "Unbelievably fast streaming DSV file parser")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-dsv#readme>")
    (license license:bsd-3)))

haskell-9.0-hw-dsv

(define-public haskell-9.0-opentelemetry-lightstep
  (package
    (name "haskell-9.0-opentelemetry-lightstep")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-lightstep/opentelemetry-lightstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yd6gzhwwmjjh41ipz2kifzpn7hha9nli3war2rqdjvhj349lrw8"))))
    (properties `((upstream-name . "opentelemetry-lightstep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
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
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-opentelemetry)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-opentelemetry-extra)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-lightstep")
    (synopsis "")
    (description
     "The OpenTelemetry Haskell Client (Lightstep exporter) https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.0-opentelemetry-lightstep

(define-public haskell-9.0-optima
  (package
    (name "haskell-9.0-optima")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optima/optima-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pah3p4f5j8ah2ccb5mpq1dcjrlzvwg6pf0yfqhnq4m7j1nqhzlj"))))
    (properties `((upstream-name . "optima") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-text-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/optima")
    (synopsis "Simple command line interface arguments parser")
    (description "")
    (license license:expat)))

haskell-9.0-optima

(define-public haskell-9.0-persistent-mtl
  (package
    (name "haskell-9.0-persistent-mtl")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mtl/persistent-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8azgcgj245dw59wnsh1cpn8n3l6b8s8gh5rim8jl315rxbsn5w"))))
    (properties `((upstream-name . "persistent-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-esqueleto)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-unliftio-pool)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/brandonchinn178/persistent-mtl#readme")
    (synopsis "Monad transformer for the persistent API")
    (description "A monad transformer and mtl-style type class for using the
persistent API directly in your monad transformer stack.")
    (license license:bsd-3)))

haskell-9.0-persistent-mtl

(define-public haskell-9.0-persistent-pagination
  (package
    (name "haskell-9.0-persistent-pagination")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-pagination/persistent-pagination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16p89c4rjwak7slb7rmzn0qyap2vg3ayis8q3lkxl0k7a609pf5h"))))
    (properties `((upstream-name . "persistent-pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-esqueleto)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-9.0-persistent-pagination

(define-public haskell-9.0-persistent-qq
  (package
    (name "haskell-9.0-persistent-qq")
    (version "2.12.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-qq/persistent-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pzlhwl4h9q358zc6d0m5zv0ii2yhf2lzw0a3v2spfc1ch4a014a"))))
    (properties `((upstream-name . "persistent-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/persistent#readme")
    (synopsis "Provides a quasi-quoter for raw SQL for persistent")
    (description
     "Please see README and API docs at <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.0-persistent-qq

(define-public haskell-9.0-postgresql-syntax
  (package
    (name "haskell-9.0-postgresql-syntax")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-syntax/postgresql-syntax-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ls3jjgbvdy0x3110lgjd3icas187qyd31cwvi858l6ayhwf9kck"))))
    (properties `((upstream-name . "postgresql-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-headed-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-text-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-syntax")
    (synopsis "PostgreSQL AST parsing and rendering")
    (description
     "Postgres syntax tree and related utils extracted from the \\\"hasql-th\\\" package.
The API is in a rather raw \\\"guts out\\\" state with most documentation lacking,
but the codebase is well tested.")
    (license license:expat)))

haskell-9.0-postgresql-syntax

(define-public haskell-9.0-prometheus-wai-middleware
  (package
    (name "haskell-9.0-prometheus-wai-middleware")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-wai-middleware/prometheus-wai-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srp4j7841wfc29x5x8wkykjdqzdln26s219zrq15f5vir14lpar"))))
    (properties `((upstream-name . "prometheus-wai-middleware")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-prometheus)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/prometheus-wai-middleware")
    (synopsis "Instrument a wai application with various metrics")
    (description
     "See https://github.com/bitnomial/prometheus-wai-middleware/tree/master/readme.md")
    (license license:bsd-3)))

haskell-9.0-prometheus-wai-middleware

(define-public haskell-9.0-scotty
  (package
    (name "haskell-9.0-scotty")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scotty/scotty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lpggpdzgjk23mq7aa64yylds5dbm4ynhcvbarqihjxabvh7xmz1"))))
    (properties `((upstream-name . "scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "0d61dgx6wq682mz8ryq2a10v1z4yi0dik8b5psi0ragl2qip191j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-hspec-wai)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-nats)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-regex-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/scotty-web/scotty")
    (synopsis
     "Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp")
    (description
     "A Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp.

@@
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;

import Web.Scotty

import Data.Monoid (mconcat)

main = scotty 3000 $
&#32;&#32;get &#34;/:word&#34; $ do
&#32;&#32;&#32;&#32;beam <- param &#34;word&#34;
&#32;&#32;&#32;&#32;html $ mconcat [&#34;&#60;h1&#62;Scotty, &#34;, beam, &#34; me up!&#60;/h1&#62;&#34;]
@@


Scotty is the cheap and cheerful way to write RESTful, declarative web applications.

* A page is as simple as defining the verb, url pattern, and Text content.

* It is template-language agnostic. Anything that returns a Text value will do.

* Conforms to WAI Application interface.

* Uses very fast Warp webserver by default.

As for the name: Sinatra + Warp = Scotty.

[WAI] <http://hackage.haskell.org/package/wai>

[Warp] <http://hackage.haskell.org/package/warp>")
    (license license:bsd-3)))

haskell-9.0-scotty

(define-public haskell-9.0-servant-server
  (package
    (name "haskell-9.0-servant-server")
    (version "0.19.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a7msh8p59v5mgsnj5li9s3jg0jwq2zjsznr0cg7g0fncn7r1axy"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qlc6bg31abfhdgwalmb89bkrdsxv21rcb2gdli85xy1jvcs4z7v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-hspec-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-sop-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-app-static)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "A family of combinators for defining webservices APIs and serving them")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>
is a runnable example, with comments, that defines a dummy API and implements
a webserver that serves this API, using this package.

<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.0-servant-server

(define-public haskell-9.0-serversession
  (package
    (name "haskell-9.0-serversession")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession/serversession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzyvz3jkv248lbq4pgy92dm054wj2s4d19rjr096ymcaznhxgfl"))))
    (properties `((upstream-name . "serversession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-nonce)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-test)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-9.0-serversession

(define-public haskell-9.0-servius
  (package
    (name "haskell-9.0-servius")
    (version "1.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servius/servius-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09wbw7lqchpldxgbs580zp5favjcshqmxj5y6lcva36zhlzbdi3j"))))
    (properties `((upstream-name . "servius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-cmark-gfm)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/servius#readme")
    (synopsis "Warp web server with template rendering")
    (description
     "Please see README.md at https://www.stackage.org/package/servius")
    (license license:expat)))

haskell-9.0-servius

(define-public haskell-9.0-stm-containers
  (package
    (name "haskell-9.0-stm-containers")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-containers/stm-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yhpnxj7v880fy7vgjz5idpqfg2sm4dflp13k7fs0bqqlfv9hkbc"))))
    (properties `((upstream-name . "stm-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-deferred-folds)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-focus)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-list-t)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-stm-hamt)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/stm-containers")
    (synopsis "Containers for STM")
    (description
     "This library is based on an STM-specialized implementation of
Hash Array Mapped Trie.
It provides efficient implementations of @@Map@@, @@Set@@
and other data structures,
which starting from version @@1@@ perform even better than their counterparts from \\\"unordered-containers\\\",
but also scale well on concurrent access patterns.

For details on performance of the library, which are a bit outdated, see
<http://nikita-volkov.github.io/stm-containers/ this blog post>.")
    (license license:expat)))

haskell-9.0-stm-containers

(define-public haskell-9.0-tmp-proc
  (package
    (name "haskell-9.0-tmp-proc")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc/tmp-proc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fisalws4qz4y3dagmra4mxns6b5ljf3szf907kdf34v4lysf8j0"))))
    (properties `((upstream-name . "tmp-proc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-doc-tests" "-f-build-the-readme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-connection)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage022) haskell-9.0-req)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/adetokunbo/tmp-proc/tree/master/tmp-proc#tmp-proc")
    (synopsis "Run 'tmp' processes in integration tests")
    (description
     "@@tmp-proc@@ runs services in docker containers for use in integration tests.

It aims to make using these services become like accessing /tmp/ processes,
similar to how /tmp/ file or directories are used.

It aspires to provide a user-friendly API, while including useful features
such as

* launch of multiple services on docker during test setup

* delayed test execution until the launched services are available

* simplified use of connections to the services from a [WAI](https://hackage.haskell.org/package/wai) server under test

* good integration with haskell testing frameworks like [hspec](https://hspec.github.io)
and [tasty](https://hackage.haskell.org/package/tasty)")
    (license license:bsd-3)))

haskell-9.0-tmp-proc

(define-public haskell-9.0-wai-cli
  (package
    (name "haskell-9.0-wai-cli")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai-cli/wai-cli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fflvxfc9ibkrrgqdsr89gl77b0b706a8g7ylydaqqz6z089qbi3"))))
    (properties `((upstream-name . "wai-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftls" "-f-fastcgi" "-funixsockets")
       #:cabal-revision
       ("2" "1dv6lvfrsjpg733ssxgxghlfddqmnm8h2lp99wxyc8iiliy62vl9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-monads-tf)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-options)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codeberg.org/valpackett/wai-cli")
    (synopsis
     "Command line runner for Wai apps (using Warp) with TLS, CGI, socket activation & graceful shutdown")
    (description
     "Command line runner for Wai apps (using Warp) with support for UNIX domain sockets,
TLS (can be turned off with a cabal flag to avoid compiling the TLS library), CGI,
socket activation (systemd-compatible, but see https://codeberg.org/valpackett/soad for a more interesting (and not linux-only) thing than what systemd does),
and graceful shutdown (on TERM signal).")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-wai-cli

(define-public haskell-9.0-wai-enforce-https
  (package
    (name "haskell-9.0-wai-enforce-https")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-enforce-https/wai-enforce-https-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08hygyl930bwjxfvzds7wwl9yv94q7612bfg68qzmq2dfivypkfq"))))
    (properties `((upstream-name . "wai-enforce-https") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-9.0-wai-enforce-https

(define-public haskell-9.0-wai-middleware-clacks
  (package
    (name "haskell-9.0-wai-middleware-clacks")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-clacks/wai-middleware-clacks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mx3qmyiywib8wcrccxd7wjlx4jv9wlc5w8lykivgh8q66pbcihf"))))
    (properties `((upstream-name . "wai-middleware-clacks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-tasty-wai)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/wai-middleware-clacks#readme")
    (synopsis
     "GNU Terry Pratchett - Add the X-Clacks-Overhead Header to Wai Responses.")
    (description
     "/\"You know they'll never really die while the Trunk is alive.\"/

@@wai-middleware-clacks@@ is a middleware that inserts an arbitrary
@@X-Clacks-Overhead@@ header into every Wai response. From
<http://gnuterrypratchett.com GNU Terry Pratchett>:

> In Terry Pratchett's Discworld series, the clacks are a series of
> semaphore towers loosely based on the concept of the telegraph. Invented
> by an artificer named Robert Dearheart, the towers could send messages
> \"at the speed of light\" using standardized codes. Three of these codes
> are of particular import:
>
> G: send the message on
> N: do not log the message
> U: turn the message around at the end of the line and send it back again
>
> When Dearheart's son John died due to an accident while working on a
> clacks tower, Dearheart inserted John's name into the overhead of the
> clacks with a \"GNU\" in front of it as a way to memorialize his son forever
> (or for at least as long as the clacks are standing.)
>
>
> Keeping the legacy of Sir Terry Pratchett alive forever. For as long as
> his name is still passed along the Clacks, Death can't have him.

Please see the
<https://github.com/prikhi/wai-middleware-clacks/blob/master/README.md README>
or
<https://hackage.haskell.org/package/wai-middleware-clacks/docs/Network-Wai-Middleware-Clacks.html module documentation>
for usage instructions.")
    (license license:bsd-3)))

haskell-9.0-wai-middleware-clacks

(define-public haskell-9.0-wai-websockets
  (package
    (name "haskell-9.0-wai-websockets")
    (version "3.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-websockets/wai-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2xmdsrsqpssyib53wbr6r8hf75789ndyyanv37sv99iyqcwz4i"))))
    (properties `((upstream-name . "wai-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-app-static)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-9.0-wai-websockets

(define-public haskell-9.0-warp-tls-uid
  (package
    (name "haskell-9.0-warp-tls-uid")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls-uid/warp-tls-uid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09xvwvb6nc6ymp6x389dxbllisrj24srcdli6d19h05cwlqbay4w"))))
    (properties `((upstream-name . "warp-tls-uid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-9.0-warp-tls-uid

(define-public haskell-9.0-wss-client
  (package
    (name "haskell-9.0-wss-client")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wss-client/wss-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1licynhnyhfdq4gxpsya3gaypjs9inqzr2xqmjs9f99ymbvin8d8"))))
    (properties `((upstream-name . "wss-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-sample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-envy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-skews)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/wss-client")
    (synopsis "A-little-higher-level WebSocket client.")
    (description
     "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.")
    (license license:bsd-3)))

haskell-9.0-wss-client

(define-public haskell-9.0-xml-parser
  (package
    (name "haskell-9.0-xml-parser")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-parser/xml-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06a8pci3jr3mdrsh8708i61rqd2rsgqyf86s269ycca6xlbrgwzh"))))
    (properties `((upstream-name . "xml-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
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
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-text-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nikita-volkov/xml-parser")
    (synopsis "XML parser with informative error-reporting and simple API")
    (description "")
    (license license:expat)))

haskell-9.0-xml-parser

(define-public haskell-9.0-yesod-alerts
  (package
    (name "haskell-9.0-yesod-alerts")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-alerts/yesod-alerts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x7l1h4xziqg6fjjp5qnqdmbnrpiryzv37q322llnmsi1f89zvzv"))))
    (properties `((upstream-name . "yesod-alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-alerts)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alx741/yesod-alerts#readme")
    (synopsis "Alert messages for the Yesod framework")
    (description "Use the \"alerts\" package with the Yesod framework")
    (license license:bsd-3)))

haskell-9.0-yesod-alerts

(define-public haskell-9.0-yesod-eventsource
  (package
    (name "haskell-9.0-yesod-eventsource")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-eventsource/yesod-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h8gyvlqvp6zm6kfmiwa0z7ic2377f0vi43fgcn5mlssv890z8gh"))))
    (properties `((upstream-name . "yesod-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Server-sent events support for Yesod apps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-eventsource>")
    (license license:expat)))

haskell-9.0-yesod-eventsource

(define-public haskell-9.0-yesod-gitrepo
  (package
    (name "haskell-9.0-yesod-gitrepo")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrepo/yesod-gitrepo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07lqhih9jcb5rdjdkjsrg7s9l5f3y9lrsxa1rc1c8gxw0v2nfg5h"))))
    (properties `((upstream-name . "yesod-gitrepo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/yesod-gitrepo#readme")
    (synopsis "Host content provided by a Git repo")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>")
    (license license:expat)))

haskell-9.0-yesod-gitrepo

(define-public haskell-9.0-yesod-gitrev
  (package
    (name "haskell-9.0-yesod-gitrev")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "048g2pp2pgdhhv9g9wazwh4mjavdvrmrs2z5lks42bccsfgg00h8"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-githash)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description
     "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme")
    (license license:bsd-3)))

haskell-9.0-yesod-gitrev

(define-public haskell-9.0-yesod-newsfeed
  (package
    (name "haskell-9.0-yesod-newsfeed")
    (version "1.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7n99zsrfinal2kcmrfyj3gcxrd390az93yz3c1kxzd5w1ffb4g"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-9.0-yesod-newsfeed

(define-public haskell-9.0-yesod-persistent
  (package
    (name "haskell-9.0-yesod-persistent")
    (version "1.6.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vm0qm0yxqn6x61iir81wf6ibwnf8gkia8lw71fgpxgav154ig6"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-9.0-yesod-persistent

(define-public haskell-9.0-yesod-routes-flow
  (package
    (name "haskell-9.0-yesod-routes-flow")
    (version "3.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-routes-flow/yesod-routes-flow-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gw6a5089j0a1c0aivlznsqld1r8wc6babjcc7c7vzy7wpnc87c9"))))
    (properties `((upstream-name . "yesod-routes-flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-classy-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-system-fileio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-system-filepath)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/yesod-routes-flow")
    (synopsis "Generate Flow routes for Yesod")
    (description
     "Parse the Yesod routes data structure and generate routes that can be used with Flow.")
    (license license:expat)))

haskell-9.0-yesod-routes-flow

(define-public haskell-9.0-yesod-sitemap
  (package
    (name "haskell-9.0-yesod-sitemap")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-sitemap/yesod-sitemap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mnv658z36ja1avig0g4pirb2i9vqriycykhfky74xymvjmhdyp5"))))
    (properties `((upstream-name . "yesod-sitemap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-9.0-yesod-sitemap

