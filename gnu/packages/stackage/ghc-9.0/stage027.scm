;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage027)
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
(define-public haskell-9.0-advent-of-code-api
  (package
    (name "haskell-9.0-advent-of-code-api")
    (version "0.2.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/advent-of-code-api/advent-of-code-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17s80883jq75i129b1976qbvr56ml0bsadhfnx2qybbh7b55gxfh"))))
    (properties `((upstream-name . "advent-of-code-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-finite-typelits)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-client-core)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mstksg/advent-of-code-api#readme")
    (synopsis "Advent of Code REST API bindings and servant API")
    (description
     "Haskell bindings for Advent of Code REST API and a servant API.  Please use
responsibly! See README.md or \"Advent\" module for an introduction and
tutorial.")
    (license license:bsd-3)))

haskell-9.0-advent-of-code-api

(define-public haskell-9.0-bodhi
  (package
    (name "haskell-9.0-bodhi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/bodhi-hs")
    (synopsis "Fedora Bodhi REST client library")
    (description
     "A REST client library for the Fedora Bodhi updates server.
The binding is currently fairly low-level returning JSON Objects.
So far it covers nearly all of the GET part of the API.")
    (license license:expat)))

haskell-9.0-bodhi

(define-public haskell-9.0-cached-json-file
  (package
    (name "haskell-9.0-cached-json-file")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/cached-json-file")
    (synopsis "Locally cache a json file obtained by http")
    (description
     "A small library for caching a slow-changing remote json file in
a specified directory (under \"~\\/.cache\\/\").  When the json is requested
and the cache file is still fresh enough it is read directly from
the local cache, otherwise the cached file is refreshed first.")
    (license license:bsd-3)))

haskell-9.0-cached-json-file

(define-public haskell-9.0-copr-api
  (package
    (name "haskell-9.0-copr-api")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/copr-api-hs")
    (synopsis "Copr API client libary")
    (description "Fedora Copr buildsystem client api library")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-copr-api

(define-public haskell-9.0-gi-dbusmenugtk3
  (package
    (name "haskell-9.0-gi-dbusmenugtk3")
    (version "0.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenugtk3/gi-dbusmenugtk3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ky4x665p5f7zlfckz7fykgnl9n839vz5pv4l0lprhp0l04f32hz"))))
    (properties `((upstream-name . "gi-dbusmenugtk3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-atk)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-dbusmenu)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "DbusmenuGtk bindings")
    (description "Bindings for libdbusgtk3, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-dbusmenugtk3

(define-public haskell-9.0-gi-gtk-hs
  (package
    (name "haskell-9.0-gi-gtk-hs")
    (version "0.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtk-hs/gi-gtk-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0w9bjhny6l2ll83ffcdmdzgnza0gfgyqv8v161pj080lsq00fdli"))))
    (properties `((upstream-name . "gi-gtk-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (description
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-gtk-hs

(define-public haskell-9.0-gi-gtksource
  (package
    (name "haskell-9.0-gi-gtksource")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtksource/gi-gtksource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xax0w5zxiqw2nhz3ndl6kyxfa61n1ldwq3r6s1i0khz0xx79k5q"))))
    (properties `((upstream-name . "gi-gtksource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) gtksourceview)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-atk)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-cairo)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
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
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GtkSource bindings")
    (description "Bindings for GtkSource, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-gtksource

(define-public haskell-9.0-gi-vte
  (package
    (name "haskell-9.0-gi-vte")
    (version "2.91.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-vte/gi-vte-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n787xacng9279y7vi2g4lmxvx8xgb967v55fxvmxhjyds35fy4w"))))
    (properties `((upstream-name . "gi-vte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-atk)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-gi-gio)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-gi-glib)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-gi-gobject)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-gi-pango)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-haskell-gi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Vte bindings")
    (description "Bindings for Vte, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-gi-vte

(define-public haskell-9.0-gtk-strut
  (package
    (name "haskell-9.0-gtk-strut")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-strut/gtk-strut-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rymacvllin8ni2fd7yyfq43rbbyb921c4nm4z7aa2z82fsrkw3q"))))
    (properties `((upstream-name . "gtk-strut") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-gi-gdk)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-gi-gtk)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/IvanMalison/gtk-strut#readme")
    (synopsis "Library for creating strut windows with gi-gtk")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-strut#readme>")
    (license license:bsd-3)))

haskell-9.0-gtk-strut

(define-public haskell-9.0-hasql-migration
  (package
    (name "haskell-9.0-hasql-migration")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-hasql)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-hasql-transaction)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/tvh/hasql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.0-hasql-migration

(define-public haskell-9.0-hasql-notifications
  (package
    (name "haskell-9.0-hasql-notifications")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-hasql)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-hasql-pool)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/diogob/hasql-notifications")
    (synopsis "LISTEN/NOTIFY support for Hasql")
    (description
     "Use PostgreSQL Asynchronous notification support with your Hasql Types.")
    (license license:bsd-3)))

haskell-9.0-hasql-notifications

(define-public haskell-9.0-hasql-optparse-applicative
  (package
    (name "haskell-9.0-hasql-optparse-applicative")
    (version "0.3.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-optparse-applicative/hasql-optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4z82l3ip50ly160ccjl46npxp1170knaf5acjdwhirsc6c3qpd"))))
    (properties `((upstream-name . "hasql-optparse-applicative")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-hasql)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-hasql-pool)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-9.0-hasql-optparse-applicative

(define-public haskell-9.0-pagure
  (package
    (name "haskell-9.0-pagure")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pagure-hs")
    (synopsis "Pagure REST client library")
    (description "A library for querying Pagure gitforges via REST.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-pagure

(define-public haskell-9.0-pantry
  (package
    (name "haskell-9.0-pantry")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cck09972pv2kz6kpg631rxfqwy92g4ibngfjy0bkp2xfadcg6ci"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-casa-client)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-casa-types)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-digest)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-filelock)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hackage-security)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-hpack)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-download)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-path-io)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-persistent-template)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-rio-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-rio-prettyprint)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tar-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-metrics)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on GitHub at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-9.0-pantry

(define-public haskell-9.0-pdc
  (package
    (name "haskell-9.0-pdc")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/pdc")
    (synopsis "Fedora Product Definition Center service")
    (description "A http query library for Fedora's PDC service.")
    (license license:expat)))

haskell-9.0-pdc

(define-public haskell-9.0-pkgtreediff
  (package
    (name "haskell-9.0-pkgtreediff")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pkgtreediff/pkgtreediff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlz53adlah00zxbh4kqvpm3vinn0248n8rzdxpdsbrbrlnlj8y9"))))
    (properties `((upstream-name . "pkgtreediff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-directory)
                  (@ (gnu packages stackage ghc-9.0 stage020) haskell-9.0-koji)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-rpm-nvr)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-simple-cmd)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pkgtreediff")
    (synopsis "RPM package tree diff tool")
    (description
     "Tool for comparing RPM packages and versions in OS dist trees or instances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-pkgtreediff

(define-public haskell-9.0-servant-checked-exceptions
  (package
    (name "haskell-9.0-servant-checked-exceptions")
    (version "2.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions/servant-checked-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0md5ck09phkplf0kqzj79sac92s8pw1pmic3bxcwcda80h26ck2j"))))
    (properties `((upstream-name . "servant-checked-exceptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-hspec-wai)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-servant-checked-exceptions-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-client-core)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-world-peace)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-servant-checked-exceptions

(define-public haskell-9.0-servant-conduit
  (package
    (name "haskell-9.0-servant-conduit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-9.0-servant-conduit

(define-public haskell-9.0-servant-machines
  (package
    (name "haskell-9.0-servant-machines")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-machines)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-9.0-servant-machines

(define-public haskell-9.0-servant-multipart-client
  (package
    (name "haskell-9.0-servant-multipart-client")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart-client/servant-multipart-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07haaf9nq96lfv2dhqf4319vl321f53v0mypbbg3swzb6rrfkw9h"))))
    (properties `((upstream-name . "servant-multipart-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1jq89aizhkdivmgj9gispipf2mdyq1fnlq102lr5jm1vgrmfmbpx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-client-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-multipart)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-multipart-api)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package adds client-side support for file upload to the servant ecosystem.")
    (license license:bsd-3)))

haskell-9.0-servant-multipart-client

(define-public haskell-9.0-servant-pipes
  (package
    (name "haskell-9.0-servant-pipes")
    (version "0.15.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-pipes/servant-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sd01f95rkraa0zdqqg2vwx91zsih0i0hqqkz55nnw9bsbsqhq1n"))))
    (properties `((upstream-name . "servant-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1idjvfr8w5hr9dvhj9x08sfpy5xvjf0l7a5jhx9hdlfmrxk1cd8c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-safe)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-client)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for pipes")
    (description
     "Servant Stream support for pipes.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.")
    (license license:bsd-3)))

haskell-9.0-servant-pipes

(define-public haskell-9.0-servant-static-th
  (package
    (name "haskell-9.0-servant-static-th")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iky6bk92vzhsw31hfdhgclr4nq1kmic6w9mwd5fzjhbs5vcmm15"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-blaze)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-servant-static-th

(define-public haskell-9.0-servant-swagger-ui-core
  (package
    (name "haskell-9.0-servant-swagger-ui-core")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-core/servant-swagger-ui-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ckvrwrb3x39hfl2hixcj3fhibh0vqsh6y7n1lsm25yvzfrg02zd"))))
    (properties `((upstream-name . "servant-swagger-ui-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "16183mrmxipa3l3ffpibsrr41mbi2iikw66y80hplmnl6jjhnyzd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-servant-blaze)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-servant-server)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-9.0-servant-swagger-ui-core

(define-public haskell-9.0-webex-teams-conduit
  (package
    (name "haskell-9.0-webex-teams-conduit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
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
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-9.0-webex-teams-conduit

(define-public haskell-9.0-websockets-simple
  (package
    (name "haskell-9.0-websockets-simple")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets-simple/websockets-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xcvrvv79vjhm3k026mszbqmgn65mnrm4aws213bx315pjavldg9"))))
    (properties `((upstream-name . "websockets-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-chan)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extractable-singleton)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control-aligned)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-wai-transformers)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/athanclark/websockets-simple#readme")
    (synopsis "Composable websockets clients")
    (description
     "See README at <https://github.com/athanclark/websockets-simple#readme>")
    (license license:bsd-3)))

haskell-9.0-websockets-simple

(define-public haskell-9.0-yesod
  (package
    (name "haskell-9.0-yesod")
    (version "1.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qglaxqx96c7wi4817ff67c9g2fxlnjzdpgic458i80khpdlmb5c"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-fast-logger)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-monad-logger)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-wai-logger)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-9.0-yesod

(define-public haskell-9.0-yesod-auth
  (package
    (name "haskell-9.0-yesod-auth")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fdahk5mc63g0zsafk8axry01qaxahmclpmmwygp2lhfsjy8mby2"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-authenticate)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-email-validate)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-nonce)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-9.0-yesod-auth

(define-public haskell-9.0-yesod-bin
  (package
    (name "haskell-9.0-yesod-bin")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage021)
                     haskell-9.0-http-client-tls)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-project-template)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-say)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-tar)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage023) haskell-9.0-warp)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-warp-tls)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-9.0-yesod-bin

(define-public haskell-9.0-yesod-form-bootstrap4
  (package
    (name "haskell-9.0-yesod-form-bootstrap4")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yf4b14y8b5066lwdr7r2ayiavsnkar3s8q984yb1nrz5956f7qd"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-9.0-yesod-form-bootstrap4

(define-public haskell-9.0-yesod-markdown
  (package
    (name "haskell-9.0-yesod-markdown")
    (version "0.12.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-markdown/yesod-markdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wk7pmg0rxb28vkplm3npcrr2mkxaailvvf7scgsggczqslfszq9"))))
    (properties `((upstream-name . "yesod-markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage022)
                     haskell-9.0-pandoc)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-persistent)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-xss-sanitize)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/pbrisbin/yesod-markdown")
    (synopsis "Tools for using markdown in a yesod application")
    (description
     "A subset of Pandoc functionality useful for markdown processing in yesod applications")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-yesod-markdown

(define-public haskell-9.0-yesod-recaptcha2
  (package
    (name "haskell-9.0-yesod-recaptcha2")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-recaptcha2/yesod-recaptcha2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ql05yxq3k8sywncaz3cf3xaihf4pd0ijn139ms8snyps36k6l8h"))))
    (properties `((upstream-name . "yesod-recaptcha2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage025)
                     haskell-9.0-http-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-string-transform)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-recaptcha2#readme")
    (synopsis "yesod recaptcha2")
    (description "recaptcha2 for yesod-form")
    (license license:expat)))

haskell-9.0-yesod-recaptcha2

(define-public haskell-9.0-yesod-test
  (package
    (name "haskell-9.0-yesod-test")
    (version "1.6.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q4f1l3m4l8iy5vmaa8c0vm2iiqhpghf3kykymlh41xy96mqpn3"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage020)
                     haskell-9.0-html-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)
                  (@ (gnu packages stackage ghc-9.0 stage023)
                     haskell-9.0-wai-extra)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)
                  (@ (gnu packages stackage ghc-9.0 stage024)
                     haskell-9.0-yesod-core)
                  (@ (gnu packages stackage ghc-9.0 stage026)
                     haskell-9.0-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-9.0-yesod-test

