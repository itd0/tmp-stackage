;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage022)
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
(define-public haskell-9.2-async-refresh
  (package
    (name "haskell-9.2-async-refresh")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh/async-refresh-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9llc84f93srw80pyldcglzmssl0l961bzlwsrvbaa84ldhcs6s"))))
    (properties `((upstream-name . "async-refresh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-criterion)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh")
    (synopsis
     "Package implementing core logic for refreshing of expiring data.")
    (description
     "This package can be used for refreshing of expiring data according
to a user-provided action. Using callbacks, the user can decide
how she or he would like to be informed about data refreshing.")
    (license license:bsd-3)))

haskell-9.2-async-refresh

(define-public haskell-9.2-domain-aeson
  (package
    (name "haskell-9.2-domain-aeson")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-aeson/domain-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08kc4j9bs2nmkd7ddnygw9rjm25z6js1y9fmhisc5kjhf26cbwm2"))))
    (properties `((upstream-name . "domain-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-domain)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-domain-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-th-lego)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-aeson")
    (synopsis "Integration of domain with aeson")
    (description "")
    (license license:expat)))

haskell-9.2-domain-aeson

(define-public haskell-9.2-domain-cereal
  (package
    (name "haskell-9.2-domain-cereal")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-cereal/domain-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ap4rrkhp5ggwy5fjwhg0v4ii1ayxf6w7ary2k8jc82v46bpl5is"))))
    (properties `((upstream-name . "domain-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-text)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-domain)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-domain-core)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-leb128-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-th-lego)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-cereal")
    (synopsis "Integration of domain with cereal")
    (description "")
    (license license:expat)))

haskell-9.2-domain-cereal

(define-public haskell-9.2-eventstore
  (package
    (name "haskell-9.2-eventstore")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventstore/eventstore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g11asiwnqkzfvflcz0va28kj8b89h5890c9zsa2as9kzgb7zdmr"))))
    (properties `((upstream-name . "eventstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage020) haskell-9.2-dns)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-dotnet-timespan)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protobuf)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/EventStore/EventStoreDB-Client-Haskell")
    (synopsis "EventStore TCP Client")
    (description "EventStore TCP Client <https://eventstore.com>")
    (license license:bsd-3)))

haskell-9.2-eventstore

(define-public haskell-9.2-gi-gdkx11
  (package
    (name "haskell-9.2-gi-gdkx11")
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
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-xlib)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkX11 bindings")
    (description "Bindings for GdkX11, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gdkx11

(define-public haskell-9.2-gi-gtk
  (package
    (name "haskell-9.2-gi-gtk")
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
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-atk)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-pango)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gtk bindings")
    (description "Bindings for Gtk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gtk

(define-public haskell-9.2-hasql-implicits
  (package
    (name "haskell-9.2-hasql-implicits")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-implicits/hasql-implicits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10mfl1sa23zv7hgc0k1xykjxgrs4qjlmwdkxw38y0wn9b7zzpnlh"))))
    (properties `((upstream-name . "hasql-implicits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-network-ip)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-implicits")
    (synopsis
     "Implicit definitions for Hasql, such as default codecs for standard types")
    (description "")
    (license license:expat)))

haskell-9.2-hasql-implicits

(define-public haskell-9.2-hasql-pool
  (package
    (name "haskell-9.2-hasql-pool")
    (version "0.8.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0scpgynr20j8qkhi5gjl0mh7iq713vz7r1zr4xa0jv0s2nd14j2v"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-pool")
    (synopsis "Pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-9.2-hasql-pool

(define-public haskell-9.2-hasql-queue
  (package
    (name "haskell-9.2-hasql-queue")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-queue/hasql-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d8ylf92ydhg12v2rjxxnijzjkkpmws0r1nnxm63w5arwz947n5m"))))
    (properties `((upstream-name . "hasql-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-here)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-postgresql-libpq-notify)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/hasql-queue#readme")
    (synopsis "A PostgreSQL backed queue")
    (description "A PostgreSQL backed queue. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hasql-queue

(define-public haskell-9.2-hasql-th
  (package
    (name "haskell-9.2-hasql-th")
    (version "0.4.0.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-th/hasql-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z88skdk0i6rnwdqpy06yrhandaldll468kbkd4ilcf7fbwwk06v"))))
    (properties `((upstream-name . "hasql-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-postgresql-syntax)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-th")
    (synopsis "Template Haskell utilities for Hasql")
    (description
     "Extension-library for Hasql,
bringing compile-time syntax checking,
great simplification of declaration of statements and
other TemplateHaskell-based utilities.

For details please see <https://github.com/nikita-volkov/hasql-th the readme>.")
    (license license:expat)))

haskell-9.2-hasql-th

(define-public haskell-9.2-hasql-transaction
  (package
    (name "haskell-9.2-hasql-transaction")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wqvxjrjgrmnbbassayyixa4sa5qw5iwwcrh5yz65dw20qf7m9rs"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-contravariant-extras)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction")
    (synopsis "Composable abstraction over retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-9.2-hasql-transaction

(define-public haskell-9.2-hw-balancedparens
  (package
    (name "haskell-9.2-hw-balancedparens")
    (version "0.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-balancedparens/hw-balancedparens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cp8nzm99ap0j8qzsn15rxcvxa3k6bywqx0y5ccflpvqysd88wfc"))))
    (properties `((upstream-name . "hw-balancedparens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hw-excess)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-int)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-balancedparens#readme")
    (synopsis "Balanced parentheses")
    (description "Balanced parentheses.")
    (license license:bsd-3)))

haskell-9.2-hw-balancedparens

(define-public haskell-9.2-json-rpc
  (package
    (name "haskell-9.2-json-rpc")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc/json-rpc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "195llnb2gz0hm0pmax3mlkyiy4l3bk9d4jjxl4yrgj5hd0pf4g2s"))))
    (properties `((upstream-name . "json-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-stm-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jprupp/json-rpc.git#readme")
    (synopsis "Fully-featured JSON-RPC 2.0 library")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/json-rpc#readme>")
    (license license:expat)))

haskell-9.2-json-rpc

(define-public haskell-9.2-little-logger
  (package
    (name "haskell-9.2-little-logger")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-logger/little-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "110yk385dss8hyyzkf2hpaxvrd39hgfhyv6sjf0pxqbxa4bqv51f"))))
    (properties `((upstream-name . "little-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ejconlon/little-logger#readme")
    (synopsis "Basic logging based on monad-logger")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-logger#readme>")
    (license license:bsd-3)))

haskell-9.2-little-logger

(define-public haskell-9.2-monad-logger-aeson
  (package
    (name "haskell-9.2-monad-logger-aeson")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-aeson/monad-logger-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z0r0xkd8i9nw9jlzb7m50m2qi48mf6v26h533jn91yw6gi830r0"))))
    (properties `((upstream-name . "monad-logger-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-aeson-diff)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-context)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/monad-logger-aeson#readme")
    (synopsis "JSON logging using monad-logger interface")
    (description
     "@@monad-logger-aeson@@ provides structured JSON logging using @@monad-logger@@'s
interface.

Specifically, it is intended to be a (largely) drop-in replacement for
@@monad-logger@@'s \"Control.Monad.Logger.CallStack\" module.")
    (license license:expat)))

haskell-9.2-monad-logger-aeson

(define-public haskell-9.2-monad-logger-json
  (package
    (name "haskell-9.2-monad-logger-json")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-json/monad-logger-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ap98487lwgvgrrxkjskga86ckbv6rhn2n6pzp403343xx51r1qh"))))
    (properties `((upstream-name . "monad-logger-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/fpco/monad-logger-json")
    (synopsis "JSON-friendly Logging APIs")
    (description "Convienence functions for logging ToJSON with monad-logger")
    (license license:expat)))

haskell-9.2-monad-logger-json

(define-public haskell-9.2-monad-logger-logstash
  (package
    (name "haskell-9.2-monad-logger-logstash")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-logstash/monad-logger-logstash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f0376s3xmrd0gqz0laxbqsh3h4g12bk0v885ik648bxwaliq2zf"))))
    (properties `((upstream-name . "monad-logger-logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-logstash)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash backend for monad-logger.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.2-monad-logger-logstash

(define-public haskell-9.2-monad-logger-prefix
  (package
    (name "haskell-9.2-monad-logger-prefix")
    (version "0.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-prefix/monad-logger-prefix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00gsp7mhvqvfbdh75lgr73j5adw3hd4cp969h241gaw892z3qvws"))))
    (properties `((upstream-name . "monad-logger-prefix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vrksfi4l7djn8z0kbknidp8g1kcahy938f9dmp27fkydwrjv14i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/monad-logger-prefix#readme")
    (synopsis "Add prefixes to your monad-logger output")
    (description
     "Add prefixes to your monad-logger output. See README for more info.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-monad-logger-prefix

(define-public haskell-9.2-morpheus-graphql
  (package
    (name "haskell-9.2-morpheus-graphql")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql/morpheus-graphql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d2wk0zw3qb22skv7g4xagl04las5xnh9f4223c4as9cf39pcrp9"))))
    (properties `((upstream-name . "morpheus-graphql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-morpheus-graphql-app)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-morpheus-graphql-code-gen)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-morpheus-graphql-server)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-morpheus-graphql-subscriptions)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-morpheus-graphql-tests)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql

(define-public haskell-9.2-network-messagepack-rpc-websocket
  (package
    (name "haskell-9.2-network-messagepack-rpc-websocket")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc-websocket/network-messagepack-rpc-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0adkav3nl7ghbx2r7dx83ki6m397clxaw37s54ivnkxydqscjv06"))))
    (properties `((upstream-name . "network-messagepack-rpc-websocket")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-data-msgpack)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-envy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-network-messagepack-rpc)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-skews)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-wss-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc-websocket")
    (synopsis "WebSocket backend for MessagePack RPC")
    (description "WebSocket backend for \"network-messagepack-rpc\"")
    (license license:bsd-3)))

haskell-9.2-network-messagepack-rpc-websocket

(define-public haskell-9.2-persistent
  (package
    (name "haskell-9.2-persistent")
    (version "2.13.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent/persistent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z69yvk0rd29dp5qdhi4p587b891y90azrzzpa3g10cxp3gyywvm"))))
    (properties `((upstream-name . "persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0kyipwaspzah6f88s51d61kr8i9g05grm2g0lnnw28jp06nggg5d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-lift-type)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, multi-backend data serialization.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.2-persistent

(define-public haskell-9.2-pipes-mongodb
  (package
    (name "haskell-9.2-pipes-mongodb")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-mongodb/pipes-mongodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h4334fajrza7r8jrr78nqhs522kxnbzdj0gnbp7ndvzvx5ij888"))))
    (properties `((upstream-name . "pipes-mongodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-mongoDB)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jb55/pipes-mongodb")
    (synopsis "Stream results from MongoDB")
    (description "Stream results from MongoDB")
    (license license:expat)))

haskell-9.2-pipes-mongodb

(define-public haskell-9.2-postgresql-query
  (package
    (name "haskell-9.2-postgresql-query")
    (version "3.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-query/postgresql-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16dkfcv9wcbzqdyka609nav538044bwzvzw79mghrrax0xmzl1xj"))))
    (properties `((upstream-name . "postgresql-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hreader)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-hset)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-inflections)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/s9gf4ult/postgresql-query")
    (synopsis "Sql interpolating quasiquote plus some kind of primitive ORM
using it")
    (description "")
    (license license:bsd-3)))

haskell-9.2-postgresql-query

(define-public haskell-9.2-rel8
  (package
    (name "haskell-9.2-rel8")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rel8/rel8-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i0ah0wqx0z7grm9zbvf6mx6gk7lx1xfa7svbp4dnb4k8p52b63k"))))
    (properties `((upstream-name . "rel8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-hasql)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-opaleye)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-product-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/circuithub/rel8")
    (synopsis "Hey! Hey! Can u rel8?")
    (description "")
    (license license:bsd-3)))

haskell-9.2-rel8

(define-public haskell-9.2-rio-orphans
  (package
    (name "haskell-9.2-rio-orphans")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-orphans/rio-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vwc7ar9kiagvs5bywkh8x17kd02ra3zhd1mmsdwnl1p96bcshrw"))))
    (properties `((upstream-name . "rio-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "Orphan instances for the RIO type in the rio package")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>")
    (license license:expat)))

haskell-9.2-rio-orphans

(define-public haskell-9.2-sandwich
  (package
    (name "haskell-9.2-sandwich")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich/sandwich-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g1qyhp0w8gxyv60phm1apvq1p7cx7z6f9ijjx67gh7pk9mmlbzw"))))
    (properties `((upstream-name . "sandwich") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-brick)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-string-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Yet another test framework for Haskell")
    (description
     "Please see the <https://codedownio.github.io/sandwich documentation>.")
    (license license:bsd-3)))

haskell-9.2-sandwich

(define-public haskell-9.2-slave-thread
  (package
    (name "haskell-9.2-slave-thread")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slave-thread/slave-thread-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pbffrmwd975as495b5b4ad59rajgq1dmbvmp07zfb2rmwhpr5n8"))))
    (properties `((upstream-name . "slave-thread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-focus)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-stm-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/slave-thread")
    (synopsis "A fundamental solution to ghost threads and silent exceptions")
    (description
     "Vanilla thread management in Haskell is low level and
it does not approach the problems related to thread deaths.
When it's used naively the following typical problems arise:

* When a forked thread dies due to an uncaught exception,
the exception does not get raised in the main thread,
which is why the program continues to run as if nothing happened,
i.e., with the presumption that the already dead thread is running normally.
Naturally this may very well bring your program to a chaotic state.

* Another issue is that one thread dying does not
affect any of the threads forked from it.
That's why your program may be accumulating ghost threads.

* Ever dealt with your program ignoring the \\<Ctrl-C\\> strikes?

This library solves all the issues above with a concept of a slave thread.
A slave thread has the following properties:

1. When it dies for whatever reason (exception or finishing normally)
it kills all the slave threads that were forked from it.
This protects you from ghost threads.

2. It waits for all slaves to die and execute their finalizers
before executing its own finalizer and getting released itself.
This gives you hierarchical releasing of resources.

3. When a slave thread dies with an uncaught exception
it reraises it in the master thread.
This protects you from silent exceptions
and lets you be sure of getting informed
if your program gets brought to an erroneous state.")
    (license license:expat)))

haskell-9.2-slave-thread

(define-public haskell-9.2-sqlcli
  (package
    (name "haskell-9.2-sqlcli")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sqlcli/sqlcli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kscw8l14cx7q55vq72vg8ydfz19s41prdlbg9b11fhzv691iwgd"))))
    (properties `((upstream-name . "sqlcli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fodbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-logging)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) unixodbc)))
    (home-page "http://hub.darcs.net/mihaigiurgeanu/sqlcli")
    (synopsis "Bindings for SQL/CLI (ODBC) C API.")
    (description
     "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)
for the ChangeLog.
Provides bindings to all the SQL/CLI C API standard.
SQL/CLI C API is a subset of ODBC. You can use this package to
access databases through ODBC. It is tested on Windows, Linux
and Mac operating Systems whith Postgres, Oracle and SQLite.
This package also contains Haskell wrapers to the foreign C calls and
utilities to make using the SQL/CLI easier for the Haskell
programmer.
You can use this to acces any database through ODBC.")
    (license license:bsd-3)))

haskell-9.2-sqlcli

(define-public haskell-9.2-sydtest-mongo
  (package
    (name "haskell-9.2-sydtest-mongo")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-mongo/sydtest-mongo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jm2c05dxri0w83ii3pyphb2rrla72fih5g26w0indb51i0wlnq1"))))
    (properties `((upstream-name . "sydtest-mongo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008) haskell-9.2-bson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-mongoDB)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-port-utils)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-sydtest-process)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An mongoDB companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-mongo

(define-public haskell-9.2-warp
  (package
    (name "haskell-9.2-warp")
    (version "3.3.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/warp/warp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y1r7czq5zrgklqrx1b9pmxn5lhmf7zpqdjz7hfmnzsmr3vndmms"))))
    (properties `((upstream-name . "warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-network-bytestring" "-fallow-sendfilefd" "-f-warp-debug" "-fx509")
       #:cabal-revision
       ("1" "04akn70kmgmw7scapks11srfy44nqj9cy03qsp6rawlzwbxwk9id")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages curl) curl)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bsb-http-chunked)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-http-date)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-http2)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-recv)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-simple-sendfile)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-time-manager)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "A fast, light-weight web server for WAI applications.")
    (description "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.
For HTTP\\/2,  Warp supports direct and ALPN (in TLS)
but not upgrade.
API docs and the README are available at
<http://www.stackage.org/package/warp>.")
    (license license:expat)))

haskell-9.2-warp

