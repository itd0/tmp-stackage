;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage020)
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
(define-public haskell-9.4-DAV
  (package
    (name "haskell-9.4-DAV")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.4-DAV

(define-public haskell-9.4-api-maker
  (package
    (name "haskell-9.4-api-maker")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-easy-logger)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/api-maker#readme")
    (synopsis "Package to make APIs")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/api-maker#readme>")
    (license license:bsd-3)))

haskell-9.4-api-maker

(define-public haskell-9.4-bcp47
  (package
    (name "haskell-9.4-bcp47")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bcp47/bcp47-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k226jmpv6fnifbmbgdfvbj375an5g7bzzlcvfa1n5x65512ibp2"))))
    (properties `((upstream-name . "bcp47") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-country)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-iso639)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "Language tags as specified by BCP 47")
    (description
     "/Language tags for use in cases where it is desirable to indicate the/
/language used in an information object./

/ - /<https://tools.ietf.org/html/bcp47>

This package exposes a language tag data type 'BCP47' and a 'Trie' data
structure for collecting and querying information that varies based on
language tag.

> import Data.BCP47 (en, enGB, sw)
> import Data.BCP47.Trie (Trie, fromList, lookup)
>
> color :: Trie Text
> color = fromList [(en, \"color\"), (sw, \"rangi\")]
>
> main = do
>   print $ match en color -- Just \"color\"
>   print $ match enGB color -- Nothing
>   print $ lookup enGB color -- Just \"color\"")
    (license license:expat)))

haskell-9.4-bcp47

(define-public haskell-9.4-bugsnag
  (package
    (name "haskell-9.4-bugsnag")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bugsnag/bugsnag-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sbm85r2ia5k4rdbz8yqgd5x01b2l5kw0p4knj8mr8cr37fqzp8b"))))
    (properties `((upstream-name . "bugsnag") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-bugsnag-hs)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-ua-parser)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Bugsnag error reporter for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-bugsnag

(define-public haskell-9.4-conduit-parse
  (package
    (name "haskell-9.4-conduit-parse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hlint)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-conduit-parse

(define-public haskell-9.4-credential-store
  (package
    (name "haskell-9.4-credential-store")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dbus)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/credential-store#readme")
    (synopsis "Library to access secure credential storage providers")
    (description
     "Cross-platform library for storing secrets.

Uses Windows credential store, gnome-keyring or kwallet as backends.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-credential-store

(define-public haskell-9.4-dbus-hslogger
  (package
    (name "haskell-9.4-dbus-hslogger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dbus)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/dbus-hslogger#readme")
    (synopsis "Expose a dbus server to control hslogger")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/dbus-hslogger#readme>")
    (license license:bsd-3)))

haskell-9.4-dbus-hslogger

(define-public haskell-9.4-dhall-json
  (package
    (name "haskell-9.4-dhall-json")
    (version "1.7.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0a7gcnx5xm2b1kvprvxlm7bjk68c30qs8cy3596pyngw7grsrhi6"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0m5sngc1j7jagn95qmjz7gpw2jgqnnafgr6nwd506q8z2jg2a3my")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-aeson-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lens-family-core)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-silver)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-dhall-json

(define-public haskell-9.4-domain
  (package
    (name "haskell-9.4-domain")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/domain/domain-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fdpbcn2cyfpkp8qln87b27fqrsy95n7sb2x3bpwhbr5dzz55ih2"))))
    (properties `((upstream-name . "domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-domain-core)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-th-lego)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-yaml-unscrambler)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain")
    (synopsis "Codegen helping you define domain models")
    (description
     "- For introduction and demo skip to [Readme](#readme).
- For documentation and syntax reference see the \"Domain.Docs\" module.
- For API documentation refer to the \"Domain\" module,
which exports the whole API of this package.")
    (license license:expat)))

haskell-9.4-domain

(define-public haskell-9.4-dublincore-xml-conduit
  (package
    (name "haskell-9.4-dublincore-xml-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hlint)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-timerep)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/dublincore-xml-conduit")
    (synopsis
     "XML streaming parser/renderer for the Dublin Core standard elements.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-dublincore-xml-conduit

(define-public haskell-9.4-fakedata-quickcheck
  (package
    (name "haskell-9.4-fakedata-quickcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fakedata)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/fakedata-haskell/fakedata-quickcheck#readme")
    (synopsis "Fake a -> Gen a")
    (description
     "Use fakedata Fake monad for quicheck tests. See readme for examples at <https://github.com/fakedata-haskell/fakedata-quickcheck>.")
    (license license:expat)))

haskell-9.4-fakedata-quickcheck

(define-public haskell-9.4-fdo-notify
  (package
    (name "haskell-9.4-fdo-notify")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fdo-notify/fdo-notify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1n4zk1i7g34w0wk5zy8n4r63xbglxf62h8j78kv5fc2yn95l30vh"))))
    (properties `((upstream-name . "fdo-notify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dbus)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://bitbucket.org/taejo/fdo-notify/")
    (synopsis "Desktop Notifications client")
    (description
     "A library for issuing notifications using FreeDesktop.org's Desktop
Notifications protcol. This protocol is supported by services such
as Ubuntu's NotifyOSD.")
    (license license:bsd-3)))

haskell-9.4-fdo-notify

(define-public haskell-9.4-gi-cairo
  (package
    (name "haskell-9.4-gi-cairo")
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
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-cairo

(define-public haskell-9.4-gi-freetype2
  (package
    (name "haskell-9.4-gi-freetype2")
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
    (synopsis "freetype2 bindings")
    (description "Bindings for freetype2, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-freetype2

(define-public haskell-9.4-gi-glib
  (package
    (name "haskell-9.4-gi-glib")
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
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-glib

(define-public haskell-9.4-gi-xlib
  (package
    (name "haskell-9.4-gi-xlib")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages xorg) libx11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "xlib bindings")
    (description "Bindings for xlib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-xlib

(define-public haskell-9.4-hasql
  (package
    (name "haskell-9.4-hasql")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04d4pa248pffqsj032m69wkv11cn0mdfc21qfygk3dcb1yfh0nnj"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-ip)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-text-builder)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-hasql

(define-public haskell-9.4-hedgehog-fakedata
  (package
    (name "haskell-9.4-hedgehog-fakedata")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fakedata)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/hedgehog-fakedata#readme")
    (synopsis "Use 'fakedata' with 'hedgehog'")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>")
    (license license:bsd-3)))

haskell-9.4-hedgehog-fakedata

(define-public haskell-9.4-http2
  (package
    (name "haskell-9.4-http2")
    (version "3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/http2/http2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kv99i3pnnx31xndlkaczrpd2j5mvzbqlfz1kaw6cwlwkdnl5bhv"))))
    (properties `((upstream-name . "http2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-devel" "-f-h2spec" "-f-doc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-network-byte-order)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-run)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-time-manager)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-time)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kazu-yamamoto/http2")
    (synopsis "HTTP/2 library")
    (description
     "HTTP/2 library including frames, priority queues, HPACK, client and server.")
    (license license:bsd-3)))

haskell-9.4-http2

(define-public haskell-9.4-hw-excess
  (package
    (name "haskell-9.4-hw-excess")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "09c7x1qkmjs8bl9gzcb6ykls3jjj75i8hvwdfcx1zgiwg79w1g1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-hw-bits)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-excess

(define-public haskell-9.4-katip-logstash
  (package
    (name "haskell-9.4-katip-logstash")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/katip-logstash/katip-logstash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hd277cvgs83aqr70g3c59nb5jc81fxhv7ngkk80gx4gc62q6l19"))))
    (properties `((upstream-name . "katip-logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-katip)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-logstash)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash backend for katip.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.4-katip-logstash

(define-public haskell-9.4-language-avro
  (package
    (name "haskell-9.4-language-avro")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-avro/language-avro-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x7279nk306pc9db8bav6aj5g36g338mzjnhkgl21dqxh1qb43rx"))))
    (properties `((upstream-name . "language-avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-avro)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kutyel/avro-parser-haskell#readme")
    (synopsis "Language definition and parser for AVRO files.")
    (description
     "Parser for the AVRO language specification, see README.md for more details.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-language-avro

(define-public haskell-9.4-logging
  (package
    (name "haskell-9.4-logging")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logging/logging-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cd00pjxjdq69n6hxa01x31s2vdfd39kkvj0d0ssqj3n6ahssbxi"))))
    (properties `((upstream-name . "logging") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/logging")
    (synopsis "Simplified logging in IO for application writers.")
    (description
     "@@logging@@ is a wrapper around @@fast-logger@@ which makes
it easy to log from 'IO'. It provides the following conveniences on top of
those libraries:

- A set of shorter functions to type: 'debug', 'log', 'warn', plus others
that flush after each message, or which allow providing a message source
string.

- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',
'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as
direct replacements, so the usual caveats apply.

- A global function, 'setDebugLevel', which uses a global 'IORef' to record
the logging level, saving you from having to carry around the notion of
\"verbosity level\" in a Reader environment.

- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how
long the specified action took to execute in wall-clock time.")
    (license license:expat)))

haskell-9.4-logging

(define-public haskell-9.4-monad-logger
  (package
    (name "haskell-9.4-monad-logger")
    (version "0.3.37")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z275a428zcj73zz0cpfha2adwiwqqqp7klx3kbd3i9rl20xa106"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("3" "1dzkw08b4ijacdw0vcfxlr13rd819x2yj7b6sr9jrrwicd45zm1z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-9.4-monad-logger

(define-public haskell-9.4-mongoDB
  (package
    (name "haskell-9.4-mongoDB")
    (version "2.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0csjhvsvy534lq7lvqx96dw6ia3737rg7q96174067k7mhkxwf9m"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")
       #:cabal-revision
       ("1" "06kdgrg2p2c9n6im1fy04y0rvlwc4xssmk9wvw33k9svhzld7afr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dns)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-nonce)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pureMD5)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-mongoDB

(define-public haskell-9.4-network-simple-tls
  (package
    (name "haskell-9.4-network-simple-tls")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple-tls/network-simple-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5xxqp2xw1q046sngd5gnwp7gn0ima9wm8drxxry13l0i0bnmn1"))))
    (properties `((upstream-name . "network-simple-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-simple)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-system)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/network-simple-tls")
    (synopsis "Simple interface to TLS secured network sockets.")
    (description "Simple interface to TLS secured network sockets.")
    (license license:bsd-3)))

haskell-9.4-network-simple-tls

(define-public haskell-9.4-nvim-hs-ghcid
  (package
    (name "haskell-9.4-nvim-hs-ghcid")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nvim-hs-ghcid/nvim-hs-ghcid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vx1hj5x6xzxy305qm7ax74b85440hl7wbr39501xz1yanvz5i1i"))))
    (properties `((upstream-name . "nvim-hs-ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-ghcid)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-nvim-hs)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-nvim-hs-contrib)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/saep/nvim-hs-ghcid")
    (synopsis "Neovim plugin that runs ghcid to update the quickfix list")
    (description "This plugin uses the nvim-hs plugin backend for neovim and
fills the quickfix list on file-saves with the errors and
warnings that ghcid determines.

The only limitation for this tool is that it needs a .cabal
file to work.

This plugin provides 3 commands:

@@:GhcidStart@@ will prompt you for the configuration you
want to use. It should guess a reasonable option based on
the files present in your project directory and so you will
just have to press enter all the time. If you provide a
bang, these questions will not be asked.

@@:GhcidStop@@ stops the current ghcid process.

@@:GhcidRestart@@ combines the two previous commands.

Simply import the @@plugin@@ definition from \"Neovim.Ghcid\"
and add it to your plugin list.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-nvim-hs-ghcid

(define-public haskell-9.4-opentelemetry-lightstep
  (package
    (name "haskell-9.4-opentelemetry-lightstep")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-lightstep/opentelemetry-lightstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nvfyd2m393szvvsrpfv8f59xx55xk1mr4gv46idwr43mvqxdz84"))))
    (properties `((upstream-name . "opentelemetry-lightstep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ghc-events)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-opentelemetry)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-opentelemetry-extra)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-lightstep")
    (synopsis "")
    (description
     "The OpenTelemetry Haskell Client (Lightstep exporter) https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.4-opentelemetry-lightstep

(define-public haskell-9.4-opml-conduit
  (package
    (name "haskell-9.4-opml-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hlint)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-refined)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-timerep)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/opml-conduit")
    (synopsis "Streaming parser/renderer for the OPML 2.0 format.")
    (description
     "This library implements the OPML 2.0 standard (<http://dev.opml.org/spec2.html>) as a 'conduit' parser/renderer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-opml-conduit

(define-public haskell-9.4-optima
  (package
    (name "haskell-9.4-optima")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-text-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/optima")
    (synopsis "Simple command line interface arguments parser")
    (description "")
    (license license:expat)))

haskell-9.4-optima

(define-public haskell-9.4-pontarius-xmpp
  (package
    (name "haskell-9.4-pontarius-xmpp")
    (version "0.5.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pontarius-xmpp/pontarius-xmpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k01mmd19wcv5gzavnh81fhdiq8rlhvnv63f6n3s582qlsdc2lhi"))))
    (properties `((upstream-name . "pontarius-xmpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-th")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-crypto-random)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash-cryptoapi)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dns)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-lens-family)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pureMD5)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-stringprep)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-system)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-xml-picklers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/l29ah/pontarius-xmpp/")
    (synopsis "An XMPP client library")
    (description
     "Pontarius XMPP is a work in progress implementation of RFC 6120
(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").
While in alpha, Pontarius XMPP works quite well and fulfills most
requirements of the RFCs.")
    (license license:bsd-3)))

haskell-9.4-pontarius-xmpp

(define-public haskell-9.4-postgresql-syntax
  (package
    (name "haskell-9.4-postgresql-syntax")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-headed-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-text-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-syntax")
    (synopsis "PostgreSQL AST parsing and rendering")
    (description
     "Postgres syntax tree and related utils extracted from the \\\"hasql-th\\\" package.
The API is in a rather raw \\\"guts out\\\" state with most documentation lacking,
but the codebase is well tested.")
    (license license:expat)))

haskell-9.4-postgresql-syntax

(define-public haskell-9.4-siggy-chardust
  (package
    (name "haskell-9.4-siggy-chardust")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hlint)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme")
    (synopsis "Rounding rationals to significant digits and decimal places.")
    (description
     "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-siggy-chardust

(define-public haskell-9.4-skylighting-format-ansi
  (package
    (name "haskell-9.4-skylighting-format-ansi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-ansi/skylighting-format-ansi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16qavv10g5yqwi60axj7q595ll605vmnfjgdxyi029nd5rnaipr3"))))
    (properties `((upstream-name . "skylighting-format-ansi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "ANSI formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as ANSI colored text.")
    (license license:bsd-3)))

haskell-9.4-skylighting-format-ansi

(define-public haskell-9.4-skylighting-format-blaze-html
  (package
    (name "haskell-9.4-skylighting-format-blaze-html")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-blaze-html/skylighting-format-blaze-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04zg92x1jnzv6hac6wdgksgma7gi5g82x2kdxk8r7pk9yd6rn4xi"))))
    (properties `((upstream-name . "skylighting-format-blaze-html")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "HTML formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as HTML.")
    (license license:bsd-3)))

haskell-9.4-skylighting-format-blaze-html

(define-public haskell-9.4-skylighting-format-context
  (package
    (name "haskell-9.4-skylighting-format-context")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-context/skylighting-format-context-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d4nf16wl2l4r627qnph09x21xwcq03r7bznqm08d4di1z241xv0"))))
    (properties `((upstream-name . "skylighting-format-context")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "ConTeXt formatter for skylighting syntax highlighting
library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as ConTeXt commands.")
    (license license:bsd-3)))

haskell-9.4-skylighting-format-context

(define-public haskell-9.4-skylighting-format-latex
  (package
    (name "haskell-9.4-skylighting-format-latex")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-latex/skylighting-format-latex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y7v5aifwar24i976pw32scfdywjwy2ad05ajhdf8l84nsd6rdlp"))))
    (properties `((upstream-name . "skylighting-format-latex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "LaTeX formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as LaTeX macros.")
    (license license:bsd-3)))

haskell-9.4-skylighting-format-latex

(define-public haskell-9.4-spacecookie
  (package
    (name "haskell-9.4-spacecookie")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spacecookie/spacecookie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f60ak4i6msyxk4bypgiijsm8wg2qvj96lr7chy20kdy44wghnxp"))))
    (properties `((upstream-name . "spacecookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-filepath-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-socket)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-systemd)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sternenseemann/spacecookie")
    (synopsis "Gopher server library and daemon")
    (description "Simple gopher library that allows writing custom gopher
applications. Also includes a fully-featured gopher server
daemon complete with gophermap-support built on top of it.")
    (license license:gpl3)))

haskell-9.4-spacecookie

(define-public haskell-9.4-stm-containers
  (package
    (name "haskell-9.4-stm-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-focus)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-list-t)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-stm-hamt)))
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

haskell-9.4-stm-containers

(define-public haskell-9.4-sydtest
  (package
    (name "haskell-9.4-sydtest")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sydtest/sydtest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0am1bgg2figd3zwd80ia8jayp3ikvvb50wvjaivy4y66gz7x4qb3"))))
    (properties `((upstream-name . "sydtest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-envparse)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-safe-coloured-text-terminfo)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis
     "A modern testing framework for Haskell with good defaults and advanced testing features.")
    (description
     "A modern testing framework for Haskell with good defaults and advanced testing features. Sydtest aims to make the common easy and the hard possible. See https://github.com/NorfairKing/sydtest#readme for more information.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest

(define-public haskell-9.4-text-ansi
  (package
    (name "haskell-9.4-text-ansi")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ansi/text-ansi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s0ad0nap9z0pzwl3nm2vglkz148qv120bngwy08bqb6vbs8w90p"))))
    (properties `((upstream-name . "text-ansi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-text-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/text-ansi")
    (synopsis "Text styling for ANSI terminals.")
    (description
     "Text styling for ANSI terminals using SGR codes, as defined by the
<https://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf ECMA-48>
standard.

Supports foreground\\/background color, bold\\/faint intensity, italic,
single\\/double underline, strikethrough, frame, encircle, and overline escape
sequences. Some styles may not work on your terminal.

Also features terminal detection, so redirecting styled output to a file will
automatically strip the ANSI escape sequences.")
    (license license:bsd-3)))

haskell-9.4-text-ansi

(define-public haskell-9.4-wai-logger
  (package
    (name "haskell-9.4-wai-logger")
    (version "2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02i9jsy5gdglqwwk5gcvax8y498lz9flrfp4v9nrv8rmrmd66zh5"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteorder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-9.4-wai-logger

(define-public haskell-9.4-wss-client
  (package
    (name "haskell-9.4-wss-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-envy)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skews)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/wss-client")
    (synopsis "A-little-higher-level WebSocket client.")
    (description
     "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.")
    (license license:bsd-3)))

haskell-9.4-wss-client

(define-public haskell-9.4-xml-html-qq
  (package
    (name "haskell-9.4-xml-html-qq")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-from-sum)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-heterocephalus)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-html-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-xml-html-qq

(define-public haskell-9.4-xml-parser
  (package
    (name "haskell-9.4-xml-parser")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-parser/xml-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13af7yfxn1m7clhzxsbkd6q1nr8dslv39w4hvyhca0l7adplyyw3"))))
    (properties `((upstream-name . "xml-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-text-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nikita-volkov/xml-parser")
    (synopsis "XML parser with informative error-reporting and simple API")
    (description "")
    (license license:expat)))

haskell-9.4-xml-parser

