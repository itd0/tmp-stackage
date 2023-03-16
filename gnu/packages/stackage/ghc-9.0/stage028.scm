;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage028)
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
(define-public haskell-9.0-fedora-dists
  (package
    (name "haskell-9.0-fedora-dists")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-dists/fedora-dists-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1igw3rl99g48c46qzclj15896c97qd8g02pdscjwm0zid83pbimk"))))
    (properties `((upstream-name . "fedora-dists") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-cached-json-file)
                  (@ (gnu packages stackage ghc-9.0 stage027) haskell-9.0-pdc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/fedora-dists")
    (synopsis "Library for Fedora distribution versions")
    (description
     "This library provides the Dist datatype and various associated
metadata functions for Red Hat distributions (Fedora, EPEL, RHEL)
needed for packaging development and building. It uses current
releasedata from Fedora PDC. Also provides a Branch type.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-fedora-dists

(define-public haskell-9.0-gtk-sni-tray
  (package
    (name "haskell-9.0-gtk-sni-tray")
    (version "0.1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-sni-tray/gtk-sni-tray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i131ks6m5akgcfahcbfqhg1i5dxz0y6rba3is4s3m5va6spp5yf"))))
    (properties `((upstream-name . "gtk-sni-tray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-dbus)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-dbus-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-cairo)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-cairo-connector)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-gi-cairo-render)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-gi-dbusmenugtk3)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-gtk-strut)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-status-notifier-item)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-sni-tray#readme")
    (synopsis "A standalone StatusNotifierItem/AppIndicator tray")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>")
    (license license:bsd-3)))

haskell-9.0-gtk-sni-tray

(define-public haskell-9.0-mega-sdist
  (package
    (name "haskell-9.0-mega-sdist")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mega-sdist/mega-sdist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00c1cc2cgwr6p01xc8sf570aly5hw6p932anjjra7rw7a3mcmc96"))))
    (properties `((upstream-name . "mega-sdist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-optparse-simple)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-pantry)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-rio-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mega-sdist#readme")
    (synopsis "Handles uploading to Hackage from mega repos")
    (description
     "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>")
    (license license:expat)))

haskell-9.0-mega-sdist

(define-public haskell-9.0-pagure-cli
  (package
    (name "haskell-9.0-pagure-cli")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagure-cli/pagure-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w0z6c3i91di9ixbpiwp610xyfp26g325571c0j5abscr1d2fbv7"))))
    (properties `((upstream-name . "pagure-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-pagure)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pagure-cli")
    (synopsis "Pagure client")
    (description
     "A command-line Pagure client for querying projects and users.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-pagure-cli

(define-public haskell-9.0-servant-swagger-ui
  (package
    (name "haskell-9.0-servant-swagger-ui")
    (version "0.3.5.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12w75z23bnygyr3ki9w3zfy9nhxyjawf9pyzhfg6rp2mq3nji9gg"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0qspb55lvavfsyqjjjyyax9gqzp8yq9r13nvzj3qnsipjgw2irln")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-file-embed-lzma)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-servant-swagger-ui-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

https://github.com/swagger-api/swagger-ui")
    (license license:bsd-3)))

haskell-9.0-servant-swagger-ui

(define-public haskell-9.0-servant-swagger-ui-redoc
  (package
    (name "haskell-9.0-servant-swagger-ui-redoc")
    (version "0.3.4.1.22.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-redoc/servant-swagger-ui-redoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ln2sz7ffhddk4dqvczpxb5g8f6bic7sandn5zifpz2jg7lgzy0f"))))
    (properties `((upstream-name . "servant-swagger-ui-redoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "17spfmrwvj24hxd5sxysn6l3a449nw0ln2m6fslrr7wy4czp2kj5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-file-embed-lzma)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-servant-swagger-ui-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui: ReDoc theme")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

ReDoc theme: https://github.com/Rebilly/ReDoc")
    (license license:bsd-3)))

haskell-9.0-servant-swagger-ui-redoc

(define-public haskell-9.0-stack-all
  (package
    (name "haskell-9.0-stack-all")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-all/stack-all-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aw5bx737cg0isdnnrhlwba0ddjki57p4ygav4piv5d3ffzhrfzm"))))
    (properties `((upstream-name . "stack-all") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-cached-json-file)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-config-ini)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-cmd)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/stack-all")
    (synopsis "CLI tool for building across Stackage major versions")
    (description
     "Build your Haskell project over Stackage major LTS versions.")
    (license license:bsd-3)))

haskell-9.0-stack-all

(define-public haskell-9.0-telegram-bot-simple
  (package
    (name "haskell-9.0-telegram-bot-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/telegram-bot-simple/telegram-bot-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c2j0dmx6j15c8csmv64zc3m7qnbvnf5aqan7qjc8d5yfzbxr4nr"))))
    (properties `((upstream-name . "telegram-bot-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-cron)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-multipart-api)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-servant-multipart-client)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fizruk/telegram-bot-simple#readme")
    (synopsis "Easy to use library for building Telegram bots.")
    (description
     "Please see the README on Github at <https://github.com/fizruk/telegram-bot-simple#readme>")
    (license license:bsd-3)))

haskell-9.0-telegram-bot-simple

(define-public haskell-9.0-termonad
  (package
    (name "haskell-9.0-termonad")
    (version "4.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termonad/termonad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qsjgx3742z21qg1cbw2mp8gaqvb2rnp4ds90s82vf9s1ps2dkqm"))))
    (properties `((upstream-name . "termonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-classy-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-dyre)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-focuslist)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-pango)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-gi-vte)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-inline-c)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pretty-simple)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-xml-html-qq)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages pcre) pcre2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/termonad")
    (synopsis "Terminal emulator configurable in Haskell")
    (description
     "Termonad is a terminal emulator configurable in Haskell.  It is extremely
customizable and provides hooks to modify the default behavior.  It can be
thought of as the \\\"XMonad\\\" of terminal emulators.  Termonad was featured on
an <https://www.youtube.com/watch?v=TLNr_gBv5HY episode> of
<https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg DistroTube>.  This
video gives a short overview of Termonad.

Please see <https://github.com/cdepillabout/termonad#readme README.md> for
more information.")
    (license license:bsd-3)))

haskell-9.0-termonad

(define-public haskell-9.0-yesod-auth-basic
  (package
    (name "haskell-9.0-yesod-auth-basic")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-basic/yesod-auth-basic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qm65ml82waxapq3v19k6x33cghgg6wg72p5h2j1ii329dv6293b"))))
    (properties `((upstream-name . "yesod-auth-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/yesod-auth-basic")
    (synopsis "Yesod Middleware for HTTP Basic Authentication")
    (description
     "An efficient Yesod middleware middleware for HTTP Basic
Authentication.

Utilizes Yesod request-local caching mechanisms to store valid auth
credentials found in the Authorization header.")
    (license license:bsd-3)))

haskell-9.0-yesod-auth-basic

(define-public haskell-9.0-yesod-auth-hashdb
  (package
    (name "haskell-9.0-yesod-auth-hashdb")
    (version "1.7.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1daibkn5qhw131pp0sfyahyicwlgpin90zkcrwr2qk05ms5j3hj5"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-basic-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-auth)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-yesod-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/paul-rouse/yesod-auth-hashdb")
    (synopsis "Authentication plugin for Yesod.")
    (description
     "This package is the Yesod.Auth.HashDB plugin, originally included as part
of yesod-auth, but now modified to be more secure and placed in a separate
package.

It provides authentication using hashed passwords stored in a database,
and works best in situations where an administrator is involved in
setting up a user with an initial password.

The complete login process, including a default form, is implemented by
this plugin, but the application developer must design the interfaces
for setting up users and allowing them to change their own passwords,
since only the low-level password-setting functions are provided by this
package.  (Note that other authentication plugins may be more appropriate
if you wish to use email verification to set up accounts).")
    (license license:expat)))

haskell-9.0-yesod-auth-hashdb

(define-public haskell-9.0-yesod-auth-oauth2
  (package
    (name "haskell-9.0-yesod-auth-oauth2")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-oauth2/yesod-auth-oauth2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dnpw1rl8pa7dwfiy203l54x1rrzaiib7ryha9yy2vyaljlymg4v"))))
    (properties `((upstream-name . "yesod-auth-oauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-hoauth2)
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
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-load-env)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-auth)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/freckle/yesod-auth-oauth2")
    (synopsis "OAuth 2.0 authentication plugins")
    (description
     "Library to authenticate with OAuth 2.0 for Yesod web applications.")
    (license license:expat)))

haskell-9.0-yesod-auth-oauth2

(define-public haskell-9.0-yesod-page-cursor
  (package
    (name "haskell-9.0-yesod-page-cursor")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-page-cursor/yesod-page-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1isgw7299nc656aqdk4blraz9kh1raki2nngz1jaddjbd6x56b40"))))
    (properties `((upstream-name . "yesod-page-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-http-link-header)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/yesod-page-cursor#readme")
    (synopsis "")
    (description "Cursor based pagination for Yesod")
    (license license:expat)))

haskell-9.0-yesod-page-cursor

(define-public haskell-9.0-yesod-paginator
  (package
    (name "haskell-9.0-yesod-paginator")
    (version "1.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-paginator/yesod-paginator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j6mkzx0grdjnd3xldshx1lhlwshcjl8n5wsqj2pmxsrfh4a2qqg"))))
    (properties `((upstream-name . "yesod-paginator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-path-pieces)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-uri-encode)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:expat)))

haskell-9.0-yesod-paginator

(define-public haskell-9.0-yesod-static
  (package
    (name "haskell-9.0-yesod-static")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-static/yesod-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18f5hm9ncvkzl8bkn39cg841z0k5iqs5w45afsyk9y6k98pjd54p"))))
    (properties `((upstream-name . "yesod-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-css-text)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-hjsmin)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mime-types)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-app-static)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage027)
                     haskell-9.0-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-9.0-yesod-static

