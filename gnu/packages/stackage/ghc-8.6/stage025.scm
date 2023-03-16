;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage025)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.6))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.6-bugsnag-haskell
  (package
    (name "haskell-8.6-bugsnag-haskell")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-haskell/bugsnag-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ka4sj415pn2r2f037hyxw3fwsjzad9g67llm4yx1d3b15zzdxx9"))))
    (properties `((upstream-name . "bugsnag-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-aeson-qq)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-ua-parser)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Bugsnag error reporter for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-bugsnag-haskell

(define-public haskell-8.6-configuration-tools
  (package
    (name "haskell-8.6-configuration-tools")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configuration-tools/configuration-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08wzgd38adlrgp9s8330hsp3h1jmhnlaj3fyvkxgljlmyyzlw70q"))))
    (properties `((upstream-name . "configuration-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fremote-configs")
       #:cabal-revision
       ("1" "1x30k0jbx62689rnjwg74v9mwcf81rpjvbkm0gj94slzsx66adpp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-system)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alephcloud/hs-configuration-tools")
    (synopsis "Tools for specifying and parsing configurations")
    (description
     "Tools for specifying and parsing configurations

This package provides a collection of utils on top of the packages
<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,
<http://hackage.haskell.org/package/aeson aeson>, and
<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and
applications in a convenient and composable way.

The main features are

1. configuration management through integration of command line option
parsing and configuration files and

2. a @@Setup.hs@@ file that generates a @@PkgInfo@@ module for each component
of a package that provides information about the package and the build.

Documentation on how to use this package can be found in the
<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>
and in the API documentation of the modules \"Configuration.Utils\" and
\"Configuration.Utils.Setup\".")
    (license license:expat)))

haskell-8.6-configuration-tools

(define-public haskell-8.6-eventful-sql-common
  (package
    (name "haskell-8.6-eventful-sql-common")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-sql-common/eventful-sql-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g5f6rvb14hi81dby2hdcq444zhv2vl76ql4lsrh9gdmpf6a2vm4"))))
    (properties `((upstream-name . "eventful-sql-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w2qq0p4304zsjkwmqx79azpq5v0ajz5grg740vwkca8qvdvdq91")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-eventful-core)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Common library for SQL event stores")
    (description "Common library for SQL event stores")
    (license license:expat)))

haskell-8.6-eventful-sql-common

(define-public haskell-8.6-gi-gtk-hs
  (package
    (name "haskell-8.6-gi-gtk-hs")
    (version "0.3.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtk-hs/gi-gtk-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05j26w01izxwjq2jg2nds20p6vgd5b974b07cr0m7w6hhm4v51hk"))))
    (properties `((upstream-name . "gi-gtk-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-gi-gdk)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-gi-gtk)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/gi-gtk-hs")
    (synopsis
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (description
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-gtk-hs

(define-public haskell-8.6-gi-gtksource
  (package
    (name "haskell-8.6-gi-gtksource")
    (version "3.0.22")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtksource/gi-gtksource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08b3ffjdgyr5xapx37kkwx3z8fsd42ydvdwk3nvh2ysfq9q86cjh"))))
    (properties `((upstream-name . "gi-gtksource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtksourceview)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-atk)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-cairo)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-gi-gdk)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-gio)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-gi-gtk)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-pango)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GtkSource bindings")
    (description "Bindings for GtkSource, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-gtksource

(define-public haskell-8.6-gi-vte
  (package
    (name "haskell-8.6-gi-vte")
    (version "2.91.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-vte/gi-vte-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h6kqbbdr7zgpq6sfqs2pfx99c7wj1aabpzna9fryn6zhaha8j3c"))))
    (properties `((upstream-name . "gi-vte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-atk)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-gi-gdk)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-gio)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-gi-gtk)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-pango)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Vte bindings")
    (description "Bindings for Vte, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-vte

(define-public haskell-8.6-hoogle
  (package
    (name "haskell-8.6-hoogle")
    (version "5.0.17.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoogle/hoogle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1svp8z9pad8z2j386pr0dda0ds8ddxab0salnz4gm51q877w93p1"))))
    (properties `((upstream-name . "hoogle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14xa7h225hq7ird3fhcp89gbj9cpxnncwna2v3h662fp8c6irvl9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-foundation)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-js-flot)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-js-jquery)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mmap)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-process-extras)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-tuple)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-wai-logger)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hoogle.haskell.org/")
    (synopsis "Haskell API Search")
    (description
     "Hoogle is a Haskell API search engine, which allows you to
search many standard Haskell libraries by either function name,
or by approximate type signature.")
    (license license:bsd-3)))

haskell-8.6-hoogle

(define-public haskell-8.6-hspec-wai-json
  (package
    (name "haskell-8.6-hspec-wai-json")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai-json/hspec-wai-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p6adknahl357cjkfg32aha6v79mwwr55isgl4hj2rh45r429qw2"))))
    (properties `((upstream-name . "hspec-wai-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-aeson-qq)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Testing JSON APIs with hspec-wai")
    (description "Testing JSON APIs with hspec-wai")
    (license license:expat)))

haskell-8.6-hspec-wai-json

(define-public haskell-8.6-hw-eliasfano
  (package
    (name "haskell-8.6-hw-eliasfano")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-eliasfano/hw-eliasfano-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q3lrpw72krsbfbykjkkm55aca43ravyl4b1d3k0wgh5wv340a3v"))))
    (properties `((upstream-name . "hw-eliasfano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "100fwgcby3nfmx2ailf8zggq0sbh5fm65x4dxyaayfzs8ngfi5is")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hw-int)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-packed-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-eliasfano#readme")
    (synopsis "Elias-Fano")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-eliasfano

(define-public haskell-8.6-hw-simd
  (package
    (name "haskell-8.6-hw-simd")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-simd/hw-simd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nhy3hi7gxbbjwh6rj4459nzbmlij2cjdg2zvdjgx3z3j5algqyb"))))
    (properties `((upstream-name . "hw-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-bits-extra)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "https://github.com/haskell-works/hw-simd#readme")
    (synopsis "SIMD library")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>")
    (license license:bsd-3)))

haskell-8.6-hw-simd

(define-public haskell-8.6-hw-succinct
  (package
    (name "haskell-8.6-hw-succinct")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mmap)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-succinct#readme")
    (synopsis "Succint datastructures")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-hw-succinct

(define-public haskell-8.6-persistent-mysql-haskell
  (package
    (name "haskell-8.6-persistent-mysql-haskell")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mysql-haskell/persistent-mysql-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kc2q9cbgij5b5kz70jcy694v2frgzzb7mvld8dypsz11dlpmhjn"))))
    (properties `((upstream-name . "persistent-mysql-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-mysql-haskell)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis
     "A pure haskell backend for the persistent library using MySQL database server.")
    (description
     "This package contains a backend for persistent using the
MySQL database server.  Internally it uses the @@mysql-haskell@@
package in order to access the database. See README.md for more.

This package supports only MySQL 5.1 and above.  However, it
has been tested only on MySQL 5.5.
Only the InnoDB storage engine is officially supported.

Known problems:

* This package does not support statements inside other
statements.")
    (license license:expat)))

haskell-8.6-persistent-mysql-haskell

(define-public haskell-8.6-persistent-sqlite
  (package
    (name "haskell-8.6-persistent-sqlite")
    (version "2.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-sqlite/persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wbn88ixv4d4dfjl1gabm1q60fbcnygbmixz57pi3z84drrynwq"))))
    (properties `((upstream-name . "persistent-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-f-use-pkgconfig" "-f-build-sanity-exe" "-ffull-text-search" "-furi-filenames" "-fhave-usleep" "-fjson1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-8.6-persistent-sqlite

(define-public haskell-8.6-persistent-typed-db
  (package
    (name "haskell-8.6-persistent-typed-db")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-typed-db/persistent-typed-db-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cn9dyv5gzkjn9jbv2srw94akz1rpgxsvn1hv1ik90a8sl3drh9n"))))
    (properties `((upstream-name . "persistent-typed-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "106dkixvzg2zia8hzxsw5fb458v7bka69szlnfxnffa5sdbm8him")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-esqueleto)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-path-pieces)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-typed-db#readme")
    (synopsis "Type safe access to multiple database schemata.")
    (description "See README.md for more details, examples, and fun.")
    (license license:bsd-3)))

haskell-8.6-persistent-typed-db

(define-public haskell-8.6-scotty
  (package
    (name "haskell-8.6-scotty")
    (version "0.11.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scotty/scotty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pyj7j3zk80lv1c62ccna7nrsql5wf7pi5jscmypr2zd5xgfffvg"))))
    (properties `((upstream-name . "scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-nats)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-regex-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-scotty

(define-public haskell-8.6-servant-server
  (package
    (name "haskell-8.6-servant-server")
    (version "0.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4kgjg5z775bi76hy7cb70qwvmkai4rxqkgp0ildsjgsvf8qb80"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "017aw6wyhi5g7zkk59yj44r1n02zzin2w9wdskwqys7iqkvnvczn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
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

haskell-8.6-servant-server

(define-public haskell-8.6-servius
  (package
    (name "haskell-8.6-servius")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-cmark-gfm)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/servius#readme")
    (synopsis "Warp web server with template rendering")
    (description
     "Please see README.md at https://www.stackage.org/package/servius")
    (license license:expat)))

haskell-8.6-servius

(define-public haskell-8.6-simple-session
  (package
    (name "haskell-8.6-simple-session")
    (version "0.10.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-session/simple-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hg7925p14hk1p8v65n5ysd41qyfsccrjm40192bd000m2vrr74a"))))
    (properties `((upstream-name . "simple-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-simple)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://simple.cx")
    (synopsis "Cookie-based session management for the Simple web framework")
    (description
     "Adds cookie-based session management to simple 'Controller's. To add to an
application, declare the Controller setting\\'s type an instance of
'HasSession', and wrap routes with 'withSession'. For example:

> data AppSettings = ...
>
> instance HasSession AppSettings where
>   ...

> controllerApp settings $ withSessions $ do
>   routeName \\\"posts\\\" $ ...

Then, in your controllers you can seemlessly get and set keys from the
session:

> get \"/profile\" $ do
>   muserId <- sessionLookup \"current_user_id\"
>   case muserIf of
>     Nothing -> respond $ redirectTo \"/login\"
>     Just userId -> [handle request]")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-simple-session

(define-public haskell-8.6-tonatona-persistent-postgresql
  (package
    (name "haskell-8.6-tonatona-persistent-postgresql")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonatona-persistent-postgresql/tonatona-persistent-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fxf3h024bl02aldcwc9mhjish9l2y57ir9shra6liddk6065g5n"))))
    (properties `((upstream-name . "tonatona-persistent-postgresql")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-postgresql)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tonaparser-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tonatona)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "tonatona plugin for accessing PostgreSQL database.")
    (description
     "Tonatona plugin for accessing PostgreSQL database. This package provides a tonatona plugin for accessing PostgreSQL database. This plugin uses persistent to actually accessing PostgreSQL.")
    (license license:expat)))

haskell-8.6-tonatona-persistent-postgresql

(define-public haskell-8.6-wai-cli
  (package
    (name "haskell-8.6-wai-cli")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai-cli/wai-cli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r4lxbjzb5qzn7y0kanlgm8s9a3j1j93cvs74s2bmcc82ysc3x9f"))))
    (properties `((upstream-name . "wai-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftls" "-f-fastcgi" "-funixsockets")
       #:cabal-revision
       ("2" "1s78na4wzwhgjahk764yipgk8jxbqydrhwly8063wbmvw1hgyglf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-monads-tf)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-options)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-socket-activation)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
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

haskell-8.6-wai-cli

(define-public haskell-8.6-wai-enforce-https
  (package
    (name "haskell-8.6-wai-enforce-https")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-enforce-https/wai-enforce-https-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gm4n57abmbawpij3hsn6ia283b75sn40387dimpp573q5nnnwmv"))))
    (properties `((upstream-name . "wai-enforce-https") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-8.6-wai-enforce-https

(define-public haskell-8.6-wai-middleware-crowd
  (package
    (name "haskell-8.6-wai-middleware-crowd")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-crowd/wai-middleware-crowd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n5h4s3b2fdn2j0pl32bsdbf6wyyf2ms8qsbcs9r0wp7dhdbcdhi"))))
    (properties `((upstream-name . "wai-middleware-crowd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qvh92p9s80kmzg5w7rga54kfqbwcrkkv5p03pd92px04j2h5lbm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-authenticate)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-clientsession)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wai-middleware-crowd")
    (synopsis
     "Middleware and utilities for using Atlassian Crowd authentication")
    (description "See README")
    (license license:expat)))

haskell-8.6-wai-middleware-crowd

(define-public haskell-8.6-wai-websockets
  (package
    (name "haskell-8.6-wai-websockets")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-8.6-wai-websockets

(define-public haskell-8.6-warp-tls-uid
  (package
    (name "haskell-8.6-warp-tls-uid")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-8.6-warp-tls-uid

(define-public haskell-8.6-webex-teams-conduit
  (package
    (name "haskell-8.6-webex-teams-conduit")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p9ffj3qm84c7m4w5bfpn53vcs96p7gdlyk87mjmc9h9i6v7sz0d"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.6-webex-teams-conduit

(define-public haskell-8.6-webex-teams-pipes
  (package
    (name "haskell-8.6-webex-teams-pipes")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-pipes/webex-teams-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "001ilf2yj6q8rqcagjlh28rad191jyjjr1cpk6cf84v66isdbykp"))))
    (properties `((upstream-name . "webex-teams-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Pipes wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.6-webex-teams-pipes

(define-public haskell-8.6-yesod-alerts
  (package
    (name "haskell-8.6-yesod-alerts")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-alerts)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alx741/yesod-alerts#readme")
    (synopsis "Alert messages for the Yesod framework")
    (description "Use the \"alerts\" package with the Yesod framework")
    (license license:bsd-3)))

haskell-8.6-yesod-alerts

(define-public haskell-8.6-yesod-bin
  (package
    (name "haskell-8.6-yesod-bin")
    (version "1.6.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wz44w4c86513ss81a18rknkrkalxyj2g4rlq324ykqwwkihlr1a"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-project-template)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-warp-tls)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-8.6-yesod-bin

(define-public haskell-8.6-yesod-eventsource
  (package
    (name "haskell-8.6-yesod-eventsource")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-eventsource/yesod-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12s11q6zga37xyynll7b30gpv02k7jmmzfassshci02y9niyrkkg"))))
    (properties `((upstream-name . "yesod-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-wai-eventsource)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Server-sent events support for Yesod apps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-eventsource>")
    (license license:expat)))

haskell-8.6-yesod-eventsource

(define-public haskell-8.6-yesod-fb
  (package
    (name "haskell-8.6-yesod-fb")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ns113f2ylim1b3r2dgwgc65yfy6qxjh9miqfz2fx29fq4250dyy"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-fb)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-8.6-yesod-fb

(define-public haskell-8.6-yesod-gitrepo
  (package
    (name "haskell-8.6-yesod-gitrepo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/yesod-gitrepo#readme")
    (synopsis "Host content provided by a Git repo")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>")
    (license license:expat)))

haskell-8.6-yesod-gitrepo

(define-public haskell-8.6-yesod-gitrev
  (package
    (name "haskell-8.6-yesod-gitrev")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wd6xvq9aa11n8y4hna0a5ivqfxnbg8w2bq5lramm895xs7c8d7w"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-githash)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description
     "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme")
    (license license:bsd-3)))

haskell-8.6-yesod-gitrev

(define-public haskell-8.6-yesod-newsfeed
  (package
    (name "haskell-8.6-yesod-newsfeed")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05cnyz9g76hnfmhqfav16mghr0x42fqnz1zi0ki4bjkl5mcrf2vd"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-8.6-yesod-newsfeed

(define-public haskell-8.6-yesod-sitemap
  (package
    (name "haskell-8.6-yesod-sitemap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-8.6-yesod-sitemap

(define-public haskell-8.6-yesod-test
  (package
    (name "haskell-8.6-yesod-test")
    (version "1.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v25lqq7hgd5lggnyfd9kamkzd4126rd7vlhc131n253n4by4yak"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-html-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-8.6-yesod-test

