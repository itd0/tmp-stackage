;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage025)
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
(define-public haskell-9.4-Spock
  (package
    (name "haskell-9.4-Spock")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spock/Spock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19zqang5ixnfhqrdy70myqn8p1ijd24qfhnmj4w1f9hdr38kmz11"))))
    (properties `((upstream-name . "Spock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-Spock-core)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-focus)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hvect)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-list-t)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-reroute)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-stm-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description
     "This toolbox provides everything you need to get a quick start into web hacking with haskell:

* fast routing

* middleware

* json

* sessions

* cookies

* database helper

* csrf-protection

A tutorial is available at <http://www.spock.li/tutorial/ spock.li>")
    (license license:bsd-3)))

haskell-9.4-Spock

(define-public haskell-9.4-Spock-api-server
  (package
    (name "haskell-9.4-Spock-api-server")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-api-server/Spock-api-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ra8y036vilsb75jb0lsfbdraygz6jm7b5l9002n7ixypbp2adya"))))
    (properties `((upstream-name . "Spock-api-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-Spock-api)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-Spock-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hvect)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "Server wiring for Spock-api APIs")
    (license license:bsd-3)))

haskell-9.4-Spock-api-server

(define-public haskell-9.4-bodhi
  (package
    (name "haskell-9.4-bodhi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bodhi/bodhi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jgvfys9wigkhavl17n6pq06nxfnaw0r3bpk93phvhb0vrxdl4wl"))))
    (properties `((upstream-name . "bodhi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/bodhi-hs")
    (synopsis "Fedora Bodhi REST client library")
    (description
     "A REST client library for the Fedora Bodhi updates server.
The binding is currently fairly low-level returning JSON Objects.
So far it covers nearly all of the GET part of the API.")
    (license license:expat)))

haskell-9.4-bodhi

(define-public haskell-9.4-cached-json-file
  (package
    (name "haskell-9.4-cached-json-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cached-json-file/cached-json-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03pxi16byayjzqj1v930939bnbs2ldv4lvn0c0gyq2xfnmalbhw7"))))
    (properties `((upstream-name . "cached-json-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/cached-json-file")
    (synopsis "Locally cache a json file obtained by http")
    (description
     "A small library for caching a slow-changing remote json file in
a specified directory (under \"~\\/.cache\\/\").  When the json is requested
and the cache file is still fresh enough it is read directly from
the local cache, otherwise the cached file is refreshed first.")
    (license license:bsd-3)))

haskell-9.4-cached-json-file

(define-public haskell-9.4-copr-api
  (package
    (name "haskell-9.4-copr-api")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/copr-api/copr-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v28y0xnjk9hl66hsi17g5h6mrsg1a6b9p6r05r41cnd8a093vb0"))))
    (properties `((upstream-name . "copr-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/copr-api-hs")
    (synopsis "Copr API client libary")
    (description "Fedora Copr buildsystem client api library")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-copr-api

(define-public haskell-9.4-dl-fedora
  (package
    (name "haskell-9.4-dl-fedora")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dl-fedora/dl-fedora-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17b9l6xshndy57i55bl6dnljh395mmcwlmjr3nygl30blrlmyz9y"))))
    (properties `((upstream-name . "dl-fedora") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-directory)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-xdg-userdirs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/dl-fedora")
    (synopsis "Fedora image download tool")
    (description "Tool to download Fedora iso and image files")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-dl-fedora

(define-public haskell-9.4-filter-logger
  (package
    (name "haskell-9.4-filter-logger")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filter-logger/filter-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "089gcirir6dwp2p61349dyvgk596cb8vgswkydzpy2lmar01513q"))))
    (properties `((upstream-name . "filter-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/caneroj1/filter-logger#readme")
    (synopsis
     "Filterable request logging wai middleware. Change how data is logged and when.")
    (description
     "Composable filters to transform objects and control when they are written to server logs.")
    (license license:expat)))

haskell-9.4-filter-logger

(define-public haskell-9.4-gi-gdkx11
  (package
    (name "haskell-9.4-gi-gdkx11")
    (version "3.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkx11/gi-gdkx11-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qakqwx59r389nnp2zxcknsri8lm9bzgm9nk7vx4mpsrff65138i"))))
    (properties `((upstream-name . "gi-gdkx11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-xlib)
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
    (synopsis "GdkX11 bindings")
    (description "Bindings for GdkX11, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gdkx11

(define-public haskell-9.4-gi-gtk
  (package
    (name "haskell-9.4-gi-gtk")
    (version "3.0.39")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gtk/gi-gtk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ib53hq6wds44z636frbph2pmzy1bjpkc1kyxx9y09yj5bg3mm6k"))))
    (properties `((upstream-name . "gi-gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-atk)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-pango)
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
    (synopsis "Gtk bindings")
    (description "Bindings for Gtk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gtk

(define-public haskell-9.4-haskoin-store-data
  (package
    (name "haskell-9.4-haskoin-store-data")
    (version "0.65.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-store-data/haskoin-store-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "121vyncj8f2hwxd1j96d134c6fdr4lf3pqdrrj5n3gjb0rj61vn8"))))
    (properties `((upstream-name . "haskoin-store-data") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-haskoin-core)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskoin/haskoin-store#readme")
    (synopsis "Data for Haskoin Store")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-store#readme>")
    (license license:expat)))

haskell-9.4-haskoin-store-data

(define-public haskell-9.4-kansas-comet
  (package
    (name "haskell-9.4-kansas-comet")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kansas-comet/kansas-comet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j54rsqna8xrw1si8i74v0c9k4jjv8a2q001aa8sx4rxb7d1qbzy"))))
    (properties `((upstream-name . "kansas-comet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0csspj6l6wa7kf6npxx5sg6mzhawv9ajd99lnpp71bgxrf9axlsz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ku-fpg/kansas-comet/")
    (synopsis "A JavaScript push mechanism based on the comet idiom")
    (description "A transport-level remote JavaScript RESTful push mechanism.")
    (license license:bsd-3)))

haskell-9.4-kansas-comet

(define-public haskell-9.4-line
  (package
    (name "haskell-9.4-line")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/line/line-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z36847iamf18b38nz6mcps599cnn17046n61y94g1q7rmfsppx1"))))
    (properties `((upstream-name . "line") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/utatti/line")
    (synopsis "Haskell SDK for the LINE API")
    (description
     "This package exports bindings to LINE APIs.

It provides the following features:

* Internal auth signature validator

* Webhook handled with handler function, WAI application, or Scotty action

* Functions and types for <https://developers.line.me/en/docs/messaging-api/reference/>

For example usages, please see the
<https://github.com/utatti/line/tree/master/examples examples> directory.")
    (license license:bsd-3)))

haskell-9.4-line

(define-public haskell-9.4-pagure
  (package
    (name "haskell-9.4-pagure")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pagure/pagure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02212akphmldpnbih2zip750iavappzlqs5hf9mamzjaramx2bsy"))))
    (properties `((upstream-name . "pagure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pagure-hs")
    (synopsis "Pagure REST client library")
    (description "A library for querying Pagure gitforges via REST.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-pagure

(define-public haskell-9.4-pantry
  (package
    (name "haskell-9.4-pantry")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01vd0k21mjaj59sjj4jpada3gd112vsjaba962xrp9v9zw2wmzh8"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-casa-client)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-casa-types)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-digest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-filelock)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hackage-security)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hpack)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-download)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-rio-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-rio-prettyprint)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-tar-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-metrics)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on GitHub at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-9.4-pantry

(define-public haskell-9.4-pdc
  (package
    (name "haskell-9.4-pdc")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdc/pdc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1013nvvsrajjp38kb78gzhkjgav80lrlq966nijxhqd4k6bsm7qc"))))
    (properties `((upstream-name . "pdc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pdc")
    (synopsis "Fedora Product Definition Center service")
    (description "A http query library for Fedora's PDC service.")
    (license license:expat)))

haskell-9.4-pdc

(define-public haskell-9.4-pkgtreediff
  (package
    (name "haskell-9.4-pkgtreediff")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pkgtreediff/pkgtreediff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n7dvv0c2hx90hv7fm1crhl8wn3krryv602msa7klzdl9syd9s1f"))))
    (properties `((upstream-name . "pkgtreediff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-directory)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-koji)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-rpm-nvr)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pkgtreediff")
    (synopsis "RPM package tree diff tool")
    (description "Tool for comparing RPM packages and version-releases
in OS dist trees or instances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-pkgtreediff

(define-public haskell-9.4-servant-blaze
  (package
    (name "haskell-9.4-servant-blaze")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-blaze/servant-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08fvy904mz5xjqda702kq4ch25m3nda1yhpp4g7i62j0jmxs2ji6"))))
    (properties `((upstream-name . "servant-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y38lzmh5jr3bix0cqrcx9zkjdr1598hz7rvpnm827qw0ln3cmra")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-9.4-servant-blaze

(define-public haskell-9.4-servant-cassava
  (package
    (name "haskell-9.4-servant-cassava")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-cassava/servant-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g2d6gvy21mfxl4f0slqxm7jrapqs47m9n615gijmb536i8csfq1"))))
    (properties `((upstream-name . "servant-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant CSV content-type for cassava")
    (description "Servant CSV content-type for cassava.")
    (license license:bsd-3)))

haskell-9.4-servant-cassava

(define-public haskell-9.4-servant-conduit
  (package
    (name "haskell-9.4-servant-conduit")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-conduit/servant-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vy3ihypb0zm2yd16rq120qw3898i3c0mahh2jysssv65g0avdwp"))))
    (properties `((upstream-name . "servant-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1rcxn2m95zvxqvjbagk9gmwcyvx9wanhxmafwar4y4p15mvzd8d1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-servant-client)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-9.4-servant-conduit

(define-public haskell-9.4-servant-exceptions-server
  (package
    (name "haskell-9.4-servant-exceptions-server")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-exceptions-server/servant-exceptions-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cx9d2hx09mx1kypdhwyqhl6s1aipvxi4ak4xy4jrd0fy8r8wy9g"))))
    (properties `((upstream-name . "servant-exceptions-server")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-servant-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant API servers")
    (description
     "`servant-exceptions-server` provides the `servant-server` related
parts for `servant-exceptions`. Namely it catches
declared exceptions and renders responses using the
handler content-type.")
    (license license:bsd-3)))

haskell-9.4-servant-exceptions-server

(define-public haskell-9.4-servant-machines
  (package
    (name "haskell-9.4-servant-machines")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-machines/servant-machines-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k8abcc72s5bzcf2vmjkxxjnhk45rww6hr3l93msm2510hi6gda4"))))
    (properties `((upstream-name . "servant-machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0231278v3vs5ca3cx43711kzfbhqj2s7g67zcwrj39ly8i9kxm2n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-machines)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-servant-client)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-9.4-servant-machines

(define-public haskell-9.4-servant-rate-limit
  (package
    (name "haskell-9.4-servant-rate-limit")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rate-limit/servant-rate-limit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l4kawmb5c6s3hlcfgn14nmcwqncz158njmy1fmdrgar0sd1i92"))))
    (properties `((upstream-name . "servant-rate-limit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fclient" "-fserver")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-servant-client)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-units)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-time-units-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-rate-limit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Rate limiting for Servant")
    (description
     "A Haskell library which implements rate limiting for Servant")
    (license license:expat)))

haskell-9.4-servant-rate-limit

(define-public haskell-9.4-servant-websockets
  (package
    (name "haskell-9.4-servant-websockets")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-websockets/servant-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xs3psnmihxm37lgamn4i8lff75yb9rvsjnav7c959h1b9fjn9n4"))))
    (properties `((upstream-name . "servant-websockets") (hidden? . #f)))
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
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-wai-websockets)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/moesenle/servant-websockets#readme")
    (synopsis "Small library providing WebSocket endpoints for servant.")
    (description "Small library providing WebSocket endpoints for servant.")
    (license license:bsd-3)))

haskell-9.4-servant-websockets

(define-public haskell-9.4-sydtest-servant
  (package
    (name "haskell-9.4-sydtest-servant")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-servant/sydtest-servant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gmaf1p7f588mvcf486wb32qjh74gvqyf965wczh5h0phgyg2f8z"))))
    (properties `((upstream-name . "sydtest-servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-servant-client)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A servant companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-servant

(define-public haskell-9.4-tmp-proc-postgres
  (package
    (name "haskell-9.4-tmp-proc-postgres")
    (version "0.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-postgres/tmp-proc-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8c5rv4i85z173mx2d2bw2ipzwjs04lrlc45249l26f6p4nlr9p"))))
    (properties `((upstream-name . "tmp-proc-postgres") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-postgres")
    (synopsis "Shows how to run a PostgreSQL database as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized PostgreSQL in integration tests.")
    (license license:bsd-3)))

haskell-9.4-tmp-proc-postgres

(define-public haskell-9.4-tmp-proc-rabbitmq
  (package
    (name "haskell-9.4-tmp-proc-rabbitmq")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-rabbitmq/tmp-proc-rabbitmq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kysd1li7qaczdiqxbcmhxjq97h6xkjcyz0qhkwfy424x1dd6m3d"))))
    (properties `((upstream-name . "tmp-proc-rabbitmq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-amqp)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-rabbitmq")
    (synopsis "Shows how to run RabbitMQ as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized RabbitMQ in integration tests.")
    (license license:bsd-3)))

haskell-9.4-tmp-proc-rabbitmq

(define-public haskell-9.4-tmp-proc-redis
  (package
    (name "haskell-9.4-tmp-proc-redis")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-redis/tmp-proc-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1602z1sx9gl0ca3wfq48k1rnxl93fb99zp6m49mbyd8l2gfijf5c"))))
    (properties `((upstream-name . "tmp-proc-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-redis")
    (synopsis "Shows how to run redis as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized redis in integration tests.")
    (license license:bsd-3)))

haskell-9.4-tmp-proc-redis

(define-public haskell-9.4-wai-control
  (package
    (name "haskell-9.4-wai-control")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-control/wai-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "091plz38ixm4h54hycgyz5g24h2w1wg25bqsbsfyjyhjjzh4a150"))))
    (properties `((upstream-name . "wai-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-wai-websockets)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jumper149/wai-control")
    (synopsis "Run wai Applications in IO based monads")
    (description
     "This package allows 'IO' based monads in covariant and contravariant positions
of <https://hackage.haskell.org/package/wai wai> 'Application's.

The monads, which are applicable for this, need to have
'MonadUnliftIO' instances.
This are for most cases 'ReaderT' stacks based on the 'IO' monad.
This package will especially be of interest, if you are sharing access to
'MVar's, 'TVar's or other concurrent data, while controlling that access with
monad transformers.

This package is based on
<https://hackage.haskell.org/package/wai-transformers wai-transformers> by Athan
Clark.")
    (license license:bsd-3)))

haskell-9.4-wai-control

(define-public haskell-9.4-wai-middleware-metrics
  (package
    (name "haskell-9.4-wai-middleware-metrics")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-metrics/wai-middleware-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x7c53lqbf55p3ba6naj9xwjz07k4gf0ql3bjlb6vfph92kqadp7"))))
    (properties `((upstream-name . "wai-middleware-metrics") (hidden? . #f)))
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
                     haskell-9.4-ekg-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Helkafen/wai-middleware-metrics")
    (synopsis "A WAI middleware to collect EKG request metrics")
    (description
     "This WAI middleware counts the number of requests, the number of responses by status code and keeps a latency distribution.

It can be added to any WAI-based webserver, such as Yesod, Scotty, Spock and Servant.

The counters are EKG Counters from ekg-core. <https://ocharles.org.uk/blog/posts/2012-12-11-24-day-of-hackage-ekg.html>")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-metrics

(define-public haskell-9.4-wai-middleware-static
  (package
    (name "haskell-9.4-wai-middleware-static")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ynm0xcr3pj5bbph78p1kpyxvd0n3a0gfdbm6yb7i004ixaqf33c"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zran8wpwizrwdw23a5qckmiplyk6xf2z8x4his0ipfy2zzl5ql6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-expiring-cache-map)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mockery)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-static

(define-public haskell-9.4-webex-teams-conduit
  (package
    (name "haskell-9.4-webex-teams-conduit")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ig4krcvc256lyrqvj6g4kjklln5m7sm44c4bvbgkgr3lmrpfkr7"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
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
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
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
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-9.4-webex-teams-conduit

(define-public haskell-9.4-yesod-bin
  (package
    (name "haskell-9.4-yesod-bin")
    (version "1.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18bnr7wjcb5w8v62gfkrx7ky35agbkwl8f8vn2cdbjksa6wsllvr"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07zc0jf8gpv1zhyglgq2xj89jl6rc22mjv2v2k8lywlm8i5vjvdm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-fsnotify)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-project-template)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-say)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-9.4-yesod-bin

(define-public haskell-9.4-yesod-fb
  (package
    (name "haskell-9.4-yesod-fb")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nyi5jp85ysabljkds6h4w8ndrb12ac76awsih52amf60k4n7afl"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage024) haskell-9.4-fb)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-9.4-yesod-fb

(define-public haskell-9.4-yesod-form
  (package
    (name "haskell-9.4-yesod-form")
    (version "1.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10y3mfh96sicqyzngvl7f4wrjgkvl3znqnh71s8gx1vf7158sjww"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-xss-sanitize)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currently it provides only Summernote support).")
    (license license:expat)))

haskell-9.4-yesod-form

(define-public haskell-9.4-yesod-websockets
  (package
    (name "haskell-9.4-yesod-websockets")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-websockets/yesod-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hm4qzn0kqwl7mfvhgc1h1xbpj80fnkfbh5r3k9c52n5dmcapy6n"))))
    (properties `((upstream-name . "yesod-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-wai-websockets)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-9.4-yesod-websockets

