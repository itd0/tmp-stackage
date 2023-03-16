;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage029)
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
(define-public haskell-9.2-classy-prelude-yesod
  (package
    (name "haskell-9.2-classy-prelude-yesod")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-classy-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-9.2 stage028)
                     haskell-9.2-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-9.2-classy-prelude-yesod

(define-public haskell-9.2-hledger-web
  (package
    (name "haskell-9.2-hledger-web")
    (version "1.27.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "151dxci7dld8626dzw823sr3d9iaac92wfzbfcbdz4jh9f7n07wa"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-Decimal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base64)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-breakpoint)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-clientsession)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-hjsmin)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hledger)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hledger-lib)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-cors)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-handler-launch)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)
                  (@ (gnu packages stackage ghc-9.2 stage028)
                     haskell-9.2-yesod-static)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
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

haskell-9.2-hledger-web

