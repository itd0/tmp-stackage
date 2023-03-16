;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage027)
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
(define-public haskell-9.4-diagrams-canvas
  (package
    (name "haskell-9.4-diagrams-canvas")
    (version "1.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-canvas/diagrams-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vhjrmnf2bf4sfyaqhijsx79wah4p2dkg3h79yj9q8l7n90vbfw5"))))
    (properties `((upstream-name . "diagrams-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-NumInstances)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-blank-canvas)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-statestack)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "HTML5 canvas backend for diagrams drawing EDSL")
    (description "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL using an
HTML5 canvas.")
    (license license:bsd-3)))

haskell-9.4-diagrams-canvas

(define-public haskell-9.4-fedora-haskell-tools
  (package
    (name "haskell-9.4-fedora-haskell-tools")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-csv)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-fedora-dists)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fedora-haskell/fedora-haskell-tools")
    (synopsis "Building and maintenance tools for Fedora Haskell")
    (description
     "Maintainer tools for building and managing Fedora Haskell packages.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-fedora-haskell-tools

(define-public haskell-9.4-gtk-sni-tray
  (package
    (name "haskell-9.4-gtk-sni-tray")
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
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dbus)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-dbus-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-cairo-connector)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-gi-cairo-render)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-gi-dbusmenugtk3)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-gtk-strut)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-status-notifier-item)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-sni-tray#readme")
    (synopsis "A standalone StatusNotifierItem/AppIndicator tray")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>")
    (license license:bsd-3)))

haskell-9.4-gtk-sni-tray

(define-public haskell-9.4-servant-swagger-ui
  (package
    (name "haskell-9.4-servant-swagger-ui")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-file-embed-lzma)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-servant-swagger-ui-core)))
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

haskell-9.4-servant-swagger-ui

(define-public haskell-9.4-sydtest-yesod
  (package
    (name "haskell-9.4-sydtest-yesod")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-yesod/sydtest-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sfq18n25qczhp24hz95spg4ppigajysg0if5ah0k96k1q3p3f51"))))
    (properties `((upstream-name . "sydtest-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-wai)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A yesod companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-yesod

(define-public haskell-9.4-termonad
  (package
    (name "haskell-9.4-termonad")
    (version "4.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termonad/termonad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xyb0z0k16mpsr5nc7a4k7w04k6skfwja25f5w329w1djrkvqfyx"))))
    (properties `((upstream-name . "termonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-classy-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage001) haskell-9.4-dyre)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-focuslist)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-pango)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-gi-vte)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-inline-c)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-xml-html-qq)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
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

haskell-9.4-termonad

(define-public haskell-9.4-yesod-auth-basic
  (package
    (name "haskell-9.4-yesod-auth-basic")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
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

haskell-9.4-yesod-auth-basic

(define-public haskell-9.4-yesod-auth-hashdb
  (package
    (name "haskell-9.4-yesod-auth-hashdb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-basic-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-auth)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-yesod-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
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

haskell-9.4-yesod-auth-hashdb

(define-public haskell-9.4-yesod-page-cursor
  (package
    (name "haskell-9.4-yesod-page-cursor")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-link-header)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/yesod-page-cursor#readme")
    (synopsis "")
    (description "Cursor based pagination for Yesod")
    (license license:expat)))

haskell-9.4-yesod-page-cursor

(define-public haskell-9.4-yesod-paginator
  (package
    (name "haskell-9.4-yesod-paginator")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-uri-encode)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:expat)))

haskell-9.4-yesod-paginator

(define-public haskell-9.4-yesod-static
  (package
    (name "haskell-9.4-yesod-static")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-css-text)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-hjsmin)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-wai-app-static)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage026)
                     haskell-9.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-9.4-yesod-static

