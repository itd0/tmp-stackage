;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage028)
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
(define-public haskell-9.4-classy-prelude-yesod
  (package
    (name "haskell-9.4-classy-prelude-yesod")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-yesod/classy-prelude-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wz09ksn537w5z9lmj4dsfi0ygk37d5khijr8qq3py2gr2c9ywz"))))
    (properties `((upstream-name . "classy-prelude-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-classy-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-9.4 stage027)
                     haskell-9.4-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-9.4-classy-prelude-yesod

(define-public haskell-9.4-hledger-web
  (package
    (name "haskell-9.4-hledger-web")
    (version "1.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "143340249wbcq4nsykk2d32xv9r89znzl8fr9yhaab68zlppfyh1"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-Decimal)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base64)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-clientsession)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-hjsmin)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-hledger)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hledger-lib)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-cors)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-handler-launch)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)
                  (@ (gnu packages stackage ghc-9.4 stage027)
                     haskell-9.4-yesod-static)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hledger.org")
    (synopsis "Web-based user interface for the hledger accounting system")
    (description
     "A simple web-based user interface for the hledger accounting system,
providing a more modern UI than the command-line or terminal interfaces.
It can be used as a local single-user UI, or as a multi-user UI for
viewing\\/adding\\/editing on the web.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hledger-web

(define-public haskell-9.4-sydtest-webdriver-yesod
  (package
    (name "haskell-9.4-sydtest-webdriver-yesod")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-webdriver-yesod/sydtest-webdriver-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10q112rsj5gh3ijy7pf93zslsxqk7jim1i1fslqpld71wqw2abr2"))))
    (properties `((upstream-name . "sydtest-webdriver-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-sydtest-webdriver)
                  (@ (gnu packages stackage ghc-9.4 stage027)
                     haskell-9.4-sydtest-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-webdriver)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/sydtest-webdriver-yesod")
    (synopsis "A webdriver+yesod companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-webdriver-yesod

