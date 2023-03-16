;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage029)
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
(define-public haskell-9.0-classy-prelude-yesod
  (package
    (name "haskell-9.0-classy-prelude-yesod")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-classy-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-9.0 stage028)
                     haskell-9.0-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-9.0-classy-prelude-yesod

(define-public haskell-9.0-fedora-haskell-tools
  (package
    (name "haskell-9.0-fedora-haskell-tools")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-haskell-tools/fedora-haskell-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13nqsf4p5cm9zzdryl09hcxsya5qn3h8q8wl1sz02jswkhwlhlzb"))))
    (properties `((upstream-name . "fedora-haskell-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-csv)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage028)
                     haskell-9.0-fedora-dists)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-cmd)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fedora-haskell/fedora-haskell-tools")
    (synopsis "Building and maintenance tools for Fedora Haskell")
    (description
     "Maintainer tools for building and managing Fedora Haskell packages.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-fedora-haskell-tools

(define-public haskell-9.0-hledger-web
  (package
    (name "haskell-9.0-hledger-web")
    (version "1.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgy2whld4b5f3ahs0zbmrgh56i0drw5hv43wnb57qixcirhlf8g"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-Decimal)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base64)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-clientsession)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-hjsmin)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hledger)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-wai-cors)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-handler-launch)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)
                  (@ (gnu packages stackage ghc-9.0 stage028)
                     haskell-9.0-yesod-static)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-test)))
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

haskell-9.0-hledger-web

