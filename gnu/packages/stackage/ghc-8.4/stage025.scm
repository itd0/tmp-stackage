;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage025)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.4-cachix
  (package
    (name "haskell-8.4-cachix")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cachix/cachix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vhgkdrrj8wmnzqsjwyrhflwprnizjibgjwcwn5771mjv38amyx0"))))
    (properties `((upstream-name . "cachix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-cachix-api)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dhall)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ed25519)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-here)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-servant-auth)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-servant-auth-client)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-servant-streaming-client)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-versions)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cachix/cachix#readme")
    (synopsis
     "Command line client for Nix binary cache hosting https://cachix.org")
    (description "")
    (license license:asl2.0)))

haskell-8.4-cachix

(define-public haskell-8.4-gi-gdk
  (package
    (name "haskell-8.4-gi-gdk")
    (version "3.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jp3d3zfm20b4ax1g5k1wzh8fxxzsw4ssw7zqx0d13167m4smc3y"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-gio)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-pango)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-gdk

(define-public haskell-8.4-haskell-tools-debug
  (package
    (name "haskell-8.4-haskell-tools-debug")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-debug/haskell-tools-debug-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lnv9j4h45g0z1s9pf86py39p2bs8dbz3xybg0bwz89yix8h7nhl"))))
    (properties `((upstream-name . "haskell-tools-debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-classyplate)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-criterion)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-backend-ghc)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-haskell-tools-builtin-refactorings)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-prettyprint)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-haskell-tools-refactor)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "Debugging Tools for Haskell-tools")
    (description "Debugging Tools for Haskell-tools")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-debug

(define-public haskell-8.4-haskell-tools-demo
  (package
    (name "haskell-8.4-haskell-tools-demo")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-demo/haskell-tools-demo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c2m6xqcl22x9ay3n9j64lphmsvxsgcwymvbxscwpki9mv7wbvkx"))))
    (properties `((upstream-name . "haskell-tools-demo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-backend-ghc)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-haskell-tools-builtin-refactorings)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-prettyprint)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-haskell-tools-refactor)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "A web-based demo for Haskell-tools Refactor.")
    (description
     "Allows websocket clients to connect and performs refactorings on demand. The clients maintain a continous connection with the server, sending changes in the source files. When a refactor request is received, it performs the changes and sends the modified source files to the client.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-demo

(define-public haskell-8.4-serverless-haskell
  (package
    (name "haskell-8.4-serverless-haskell")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serverless-haskell/serverless-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p34wd3g1gg7c6yp018164ky1rqz67wq5fcax6fis0hn3g8qgjm9"))))
    (properties `((upstream-name . "serverless-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-casing)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-aeson-extra)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-amazonka-kinesis)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-amazonka-s3)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/seek-oss/serverless-haskell#readme")
    (synopsis "Deploying Haskell code onto AWS Lambda using Serverless")
    (description
     "Utilities to help process the events from AWS Lambda when deployed with the serverless-haskell plugin.")
    (license license:expat)))

haskell-8.4-serverless-haskell

(define-public haskell-8.4-yesod
  (package
    (name "haskell-8.4-yesod")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wx77nbpzdh40p1bm527kimfj48vs9d2avpvvz2w42zi3pz2y94a"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-8.4-yesod

(define-public haskell-8.4-yesod-auth
  (package
    (name "haskell-8.4-yesod-auth")
    (version "1.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1crpqcx8zynwmas4ja5yv1jg4xvcv0hw7h11d5m8vld4fcs9dpdr"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-authenticate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-email-validate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-nonce)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-8.4-yesod-auth

(define-public haskell-8.4-yesod-form-bootstrap4
  (package
    (name "haskell-8.4-yesod-form-bootstrap4")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y68k6xnb8i7wa2c1c0msc3p69azs4z0iwjdgkr0kaqzahw56scq"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-8.4-yesod-form-bootstrap4

(define-public haskell-8.4-yesod-text-markdown
  (package
    (name "haskell-8.4-yesod-text-markdown")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-text-markdown/yesod-text-markdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p3xcghlazxdqwgs4d1gsbmpjpmhmx8dcxjhha5hxww4ilyqpviw"))))
    (properties `((upstream-name . "yesod-text-markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-markdown)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/yesod-text-markdown")
    (synopsis "Yesod support for Text.Markdown.")
    (description "Use Text.Markdown in a typical yesod project.
This module contains instances related to persistence,
even though it isn't tightly coupled to yesod.

This package is different from the yesod-markdown package
which uses the pandoc renderer for markdown. The main
advantages of having Text.Markdown as underlying renderer
is the much smaller dependencies and the permissiver
license.  See
<https://github.com/pbrisbin/yesod-markdown> and
<https://github.com/snoyberg/markdown>.

This package intentionally tries to be like
yesod-markdown, so switching between the markdown backends
should be easy.

If you wonder why the haddocks only show a few exports,
it's because it doesn't show exporting of instances which
is most of what this package is about.")
    (license license:bsd-3)))

haskell-8.4-yesod-text-markdown

