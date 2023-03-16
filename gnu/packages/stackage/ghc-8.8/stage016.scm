;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage016)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.8))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.8-Chart
  (package
    (name "haskell-8.8-Chart")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Chart/Chart-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0p69kq5kh40gd4y8wqabypmw67pqh42vaaw64zv9sf8j075g85ry"))))
    (properties `((upstream-name . "Chart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0lgfq5cmhx0q9wqnplw1xr5ql88jjffzc0i72v1lfiqsp9w3lppf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-operational)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "A library for generating 2D Charts and Plots")
    (description
     "A library for generating 2D Charts and Plots, with backends provided by
Cairo (<http://hackage.haskell.org/package/Chart-cairo>)
and
Diagrams (<http://hackage.haskell.org/package/Chart-diagrams>).
Documentation: https://github.com/timbod7/haskell-chart/wiki.")
    (license license:bsd-3)))

haskell-8.8-Chart

(define-public haskell-8.8-ForestStructures
  (package
    (name "haskell-8.8-ForestStructures")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ForestStructures/ForestStructures-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhmcc0cpjbixqjgl35gv9dpymamdfb4vhhd5hard0qpg1xllnvw"))))
    (properties `((upstream-name . "ForestStructures") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fgl)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-tasty-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-vector-th-unbox)))
    (home-page "https://github.com/choener/ForestStructures")
    (synopsis "Tree- and forest structures")
    (description
     "This library provides both static and dynamic tree and forest
structures. Once a tree structure is static, it can be mappend
onto a linearized representation, which is beneficial for
algorithms that do not modify the internal tree structure, but
need fast @@O(1)@@ access to individual nodes, children, and
siblings.")
    (license license:bsd-3)))

haskell-8.8-ForestStructures

(define-public haskell-8.8-accuerr
  (package
    (name "haskell-8.8-accuerr")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/accuerr/accuerr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dlszai5bz05algxm98kjhnjwa7mwj620d52vrsc4fxds8q84sjg"))))
    (properties `((upstream-name . "accuerr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "http://www.github.com/massysett/accuerr")
    (synopsis "Data type like Either but with accumulating error type")
    (description
     "Please see the \"Accuerr\" Haddock documentation for more information.")
    (license license:bsd-3)))

haskell-8.8-accuerr

(define-public haskell-8.8-aeson-lens
  (package
    (name "haskell-8.8-aeson-lens")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-lens/aeson-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pr8cxkx41wi7095cp1gpqrwadwx6azcrdi1kr1ik0fs6606dkks"))))
    (properties `((upstream-name . "aeson-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/aeson-lens")
    (synopsis "Lens of Aeson")
    (description "Lens of Aeson")
    (license license:bsd-3)))

haskell-8.8-aeson-lens

(define-public haskell-8.8-amqp-utils
  (package
    (name "haskell-8.8-amqp-utils")
    (version "0.4.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amqp-utils/amqp-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vs0p7pc6z9mfjd2vns66wnhl8v1n9rbgabyjw0v832m2pwizzmj"))))
    (properties `((upstream-name . "amqp-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-amqp)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hinotify)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-magic)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-x509-system)))
    (propagated-inputs (list (@ (gnu packages imagemagick) imagemagick)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/amqp-utils")
    (synopsis "AMQP toolset for the command line")
    (description "AMQP tools consisting of:
AMQP consumer which can
create a temporary queue and attach it to an exchange, or
attach to an existing queue;
display header and body info;
save message bodies to files;
call a callback script.
AMQP publisher with file, line-by-line and
hotfolder capabilities.
AMQP rpc client and server.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-amqp-utils

(define-public haskell-8.8-api-field-json-th
  (package
    (name "haskell-8.8-api-field-json-th")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-field-json-th/api-field-json-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "097pn19247g73rw0si33m5l1w797s9759ma3ki9h90dwd4w9rm5q"))))
    (properties `((upstream-name . "api-field-json-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-8.8-api-field-json-th

(define-public haskell-8.8-aur
  (package
    (name "haskell-8.8-aur")
    (version "7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aur/aur-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16c4q0w6qpn4gg6xlggkcs92fcvm58a3qmykfm1dgcfsjhwwhxkx"))))
    (properties `((upstream-name . "aur") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10p4qyfv2ha3s8dli6v9yzzx4pj5r1cfxcy0gcf0rgbxsszi2315")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "Access metadata from the Arch Linux User Repository.")
    (description
     "Access package information from Arch Linux's AUR via its RPC interface. The
main exposed functions reflect those of the RPC. `info` gets metadata for one
package. `search` gets limited metadata for packages that match a given regex.
By default this library supports version 5 of the RPC, and hence version 4.2+
of the AUR.")
    (license license:gpl3)))

haskell-8.8-aur

(define-public haskell-8.8-authenticate-oauth
  (package
    (name "haskell-8.8-authenticate-oauth")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hry1zbi7gbyfi94w9cyg6m7ii7xm68jnsph63zxdj2s4ns0ylp0"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "08i6mmk2jqlrd1aksjx02arly7dfpkwc0dwxpr7hs4rbxajbckyr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-RSA)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-SHA)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-8.8-authenticate-oauth

(define-public haskell-8.8-base16-lens
  (package
    (name "haskell-8.8-base16-lens")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base16-lens/base16-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mgy1adhlw2sra8lfc2cklfn9w7jj2f9pilifnnfk2jq6hwalpn8"))))
    (properties `((upstream-name . "base16-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ann8lmr7w1p11c0yxb1q1j776hi1dj8xm6xg8c2nq3x396gcnlp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-base16)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/emilypi/base16-lens")
    (synopsis "Optics for the Base16 library")
    (description "Prisms and pattern synonyms for the Base16 library")
    (license license:bsd-3)))

haskell-8.8-base16-lens

(define-public haskell-8.8-base64-bytestring-type
  (package
    (name "haskell-8.8-base64-bytestring-type")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring-type/base64-bytestring-type-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kq4rjj6by02rf3hg815jfdqpdk0xygm5f46r2pn8mb99yd01zn"))))
    (properties `((upstream-name . "base64-bytestring-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcereal" "-fserialise" "-fhttp-api-data")
       #:cabal-revision
       ("15" "0yka3aazfd5jj0dqh89cpjc8sgx3yhiiqfhrpb9z5p4zvbyvym6g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-serialise)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-8.8-base64-bytestring-type

(define-public haskell-8.8-base64-lens
  (package
    (name "haskell-8.8-base64-lens")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-lens/base64-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gs3cxmglz0hshi4m94zrlc6fix90cvbdmcv2v4j01zwsdg8gv81"))))
    (properties `((upstream-name . "base64-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-base64)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/emilypi/base64-lens")
    (synopsis "Optics for the Base64 library")
    (description "Prisms and pattern synonyms for the Base64 library")
    (license license:bsd-3)))

haskell-8.8-base64-lens

(define-public haskell-8.8-bech32-th
  (package
    (name "haskell-8.8-bech32-th")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bech32-th/bech32-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ypn8y4b0iw7jb167biy0zjs4hp9k9nlf8y4nsczfv5n4p4cadnq"))))
    (properties `((upstream-name . "bech32-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "1b614lymjd3idcbzrkha7labfskv1m0kbljrnhwcz7sbymfcbdbk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-bech32)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis "Template Haskell extensions to the Bech32 library.")
    (description "Template Haskell extensions to the Bech32 library, including
quasi-quoters for compile-time checking of Bech32 string
literals.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-bech32-th

(define-public haskell-8.8-boundingboxes
  (package
    (name "haskell-8.8-boundingboxes")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boundingboxes/boundingboxes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r3mffqxqadn8qklq3kr0ggirkficfj8ic1fxgki2zrc5jm4f2g8"))))
    (properties `((upstream-name . "boundingboxes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qz1bnci5bhb8zqc2dw19sa0k9i57fyhhdh78s3yllp3aijdc3n6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-8.8-boundingboxes

(define-public haskell-8.8-bugsnag-hs
  (package
    (name "haskell-8.8-bugsnag-hs")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-hs/bugsnag-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xm7qf4kzbgk3qnchns7bb2578x4ivmym5a93272849klybjjqk9"))))
    (properties `((upstream-name . "bugsnag-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-auto-update)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/bugsnag-hs#readme")
    (synopsis "A Bugsnag client for Haskell.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/bugsnag-hs>.")
    (license license:bsd-3)))

haskell-8.8-bugsnag-hs

(define-public haskell-8.8-cacophony
  (package
    (name "haskell-8.8-cacophony")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cacophony/cacophony-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w9v04mdyzvwndqfb8my9a82b51avgwfnl6g7w89xj37ax9ariaj"))))
    (properties `((upstream-name . "cacophony") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage012) haskell-8.8-free)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-coroutine)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-cacophony

(define-public haskell-8.8-clash-prelude
  (package
    (name "haskell-8.8-clash-prelude")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-prelude/clash-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q97ap4a6cbf6s06934639pws9z1yyzmmaw6gj05p8jv7r4is239"))))
    (properties `((upstream-name . "clash-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-flarge-tuples" "-f-super-strict" "-f-strict-mapsignal" "-f-multiple-hidden" "-fdoctests" "-funittests" "-fbenchmarks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-half)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-hint)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-interpolate)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-singletons)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-text-show)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-th-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-type-errors)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://clash-lang.org/")
    (synopsis "CAES Language for Synchronous Hardware - Prelude library")
    (description
     "Clash is a functional hardware description language that borrows both its
syntax and semantics from the functional programming language Haskell. The
Clash compiler transforms these high-level descriptions to low-level
synthesizable VHDL, Verilog, or SystemVerilog.

Features of Clash:

* Strongly typed, but with a very high degree of type inference, enabling both
safe and fast prototyping using concise descriptions.

* Interactive REPL: load your designs in an interpreter and easily test all
your component without needing to setup a test bench.

* Higher-order functions, with type inference, result in designs that are
fully parametric by default.

* Synchronous sequential circuit design based on streams of values, called
@@Signal@@s, lead to natural descriptions of feedback loops.

* Support for multiple clock domains, with type safe clock domain crossing.


This package provides:

* Prelude library containing datatypes and functions for circuit design

To use the library:

* Import \"Clash.Prelude\"

* Alternatively, if you want to explicitly route clock and reset ports,
for more straightforward multi-clock designs, you can import the
\"Clash.Explicit.Prelude\" module. Note that you should not import
\"Clash.Prelude\" and \"Clash.Explicit.Prelude\" at the same time as they
have overlapping definitions.

A preliminary version of a tutorial can be found in \"Clash.Tutorial\", for a
general overview of the library you should however check out \"Clash.Prelude\".
Some circuit examples can be found in \"Clash.Examples\".")
    (license license:bsd-2)))

haskell-8.8-clash-prelude

(define-public haskell-8.8-composable-associations
  (package
    (name "haskell-8.8-composable-associations")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composable-associations/composable-associations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03l056yb6k8x5xrfdszsn4w2739zyiqzrl6q3ci19dg1gsy106lx"))))
    (properties `((upstream-name . "composable-associations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-8.8-composable-associations

(define-public haskell-8.8-concise
  (package
    (name "haskell-8.8-concise")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/concise/concise-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09crgc6gjfidlad6263253xx1di6wfhc9awhira21s0z7rddy9sw"))))
    (properties `((upstream-name . "concise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-8.8-concise

(define-public haskell-8.8-cpio-conduit
  (package
    (name "haskell-8.8-cpio-conduit")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cpio-conduit/cpio-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04zma03ivg9x5f1xkdpc828fk2lh6qrn7cig7gprci13id9yf2wg"))))
    (properties `((upstream-name . "cpio-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/da-x/cpio-conduit")
    (synopsis "Conduit-based CPIO")
    (description
     "This is a native Haskell implementation of the CPIO protocol over the Conduit library. See <http://www.gnu.org/software/cpio/>.
Only the commonly used CPIO formats are supported (crc and newc).")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-cpio-conduit

(define-public haskell-8.8-cryptonite-conduit
  (package
    (name "haskell-8.8-cryptonite-conduit")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-conduit/cryptonite-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bldcmda4xh52mw1wfrjljv8crhw3al7v7kv1j0vidvr7ymnjpbh"))))
    (properties `((upstream-name . "cryptonite-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hh2nzfz4qpxgivfilgk4ll416lph8b2fdkzpzrmqfjglivydfmz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-8.8-cryptonite-conduit

(define-public haskell-8.8-csv-conduit
  (package
    (name "haskell-8.8-csv-conduit")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/csv-conduit/csv-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bclavsan00mv0n0dy0ap6byk4w5fwnhpvxhdhx94r7bxfqi2r0q"))))
    (properties `((upstream-name . "csv-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "0xs6y42adg0jkpbgyhc8d60h3s02nw0rwgxcf3xrsz23r1h2r1cr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ozataman/csv-conduit")
    (synopsis
     "A flexible, fast, conduit-based CSV parser library for Haskell.")
    (description
     "CSV files are the de-facto standard in many situations involving data transfer,
particularly when dealing with enterprise application or disparate database
systems.

While there are a number of CSV libraries in Haskell, at the time of this
project's start in 2010, there wasn't one that provided all of the following:

* Full flexibility in quote characters, separators, input/output

* Constant space operation

* Robust parsing, correctness and error resiliency

* Convenient interface that supports a variety of use cases

* Fast operation

This library is an attempt to close these gaps. Please note that
this library started its life based on the enumerator package and
has recently been ported to work with conduits instead. In the
process, it has been greatly simplified thanks to the modular nature
of the conduits library.

Following the port to conduits, the library has also gained the
ability to parameterize on the stream type and work both with
ByteString and Text.

For more documentation and examples, check out the README at:

<http://github.com/ozataman/csv-conduit>
")
    (license license:bsd-3)))

haskell-8.8-csv-conduit

(define-public haskell-8.8-debian
  (package
    (name "haskell-8.8-debian")
    (version "4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debian/debian-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sp8vkg65fllvxk85sp34isc0zvmj0s72i138wz5vhj9hfmn2c71"))))
    (properties `((upstream-name . "debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-ListLike)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-SHA)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-bz2)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hostname)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-process-extras)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pureMD5)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-th-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/clinty/debian-haskell")
    (synopsis "Modules for working with the Debian package system")
    (description
     "This library includes modules covering some basic data types defined by
the Debian policy manual - version numbers, control file syntax, etc.")
    (license license:bsd-3)))

haskell-8.8-debian

(define-public haskell-8.8-deque
  (package
    (name "haskell-8.8-deque")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/deque/deque-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19apwmcykprz3a91wszmc1w3qcz4x3rq79gmik514fszi9yhwsmp"))))
    (properties `((upstream-name . "deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-rerebase)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-strict-list)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-8.8-deque

(define-public haskell-8.8-editor-open
  (package
    (name "haskell-8.8-editor-open")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/editor-open/editor-open-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0raj0s8v72kz63hqpqhf58sx0a8mcwi4ania40spjirdrsdx3i9g"))))
    (properties `((upstream-name . "editor-open") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/editor-open")
    (synopsis "Open the user's $VISUAL or $EDITOR for text input.")
    (description
     "You know when you run @@git commit@@, and an editor pops open so you can enter a
commit message? This is a Haskell library that does that.

This library isn't very portable. It relies on the @@$EDITOR@@ environment
variable. The concept only exists on *nix systems.

CHANGES

[0.6.0.0] Support less common @@$VISUAL@@. @@vi@@ is the fallback editor now
instead of @@nano@@.

[0.5.0.0] Now use conduits on the backend. Support @@base\\<4.8@@")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-editor-open

(define-public haskell-8.8-eliminators
  (package
    (name "haskell-8.8-eliminators")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mxjp2ygf72k3yaiqpfi4lrmhwhx69zkm5kznrb6wainw5r6h0if"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03gq3c04arywpp60n5cb6prvwn0yk7ccc5gfpbxl9vdjp5dbikkd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-singleton-nats)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-singletons)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-th-desugar)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-8.8-eliminators

(define-public haskell-8.8-envelope
  (package
    (name "haskell-8.8-envelope")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envelope/envelope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ybyhq3yfcyaj1q1pwm41xzyfjdkmy6lls0n7kn5ks06z7inykfg"))))
    (properties `((upstream-name . "envelope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-envelope

(define-public haskell-8.8-errors-ext
  (package
    (name "haskell-8.8-errors-ext")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/errors-ext/errors-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "064nvpc8yy3n6nvc7cmxmgblmarg4wlvawj0k7bc3mj6h0rnavj0"))))
    (properties `((upstream-name . "errors-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-ext)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)))
    (home-page "https://github.com/A1-Triard/errors-ext#readme")
    (synopsis "`bracket`-like functions for `ExceptT` over `IO` monad.")
    (description
     "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-errors-ext

(define-public haskell-8.8-ersatz
  (package
    (name "haskell-8.8-ersatz")
    (version "0.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ersatz/ersatz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gddf8zhavxri80f3nnd29ff6k7n03ggcah4qglknci7h94z7v8c"))))
    (properties `((upstream-name . "ersatz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexamples")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages maths) minisat)))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/ekmett/ersatz")
    (synopsis
     "A monad for expressing SAT or QSAT problems using observable sharing.")
    (description
     "A monad for expressing SAT or QSAT problems using observable sharing.

For example, we can express a full-adder with:

> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)
> full_adder a b cin = (s2, c1 || c2)
>   where (s1,c1) = half_adder a b
>         (s2,c2) = half_adder s1 cin

> half_adder :: Bit -> Bit -> (Bit, Bit)
> half_adder a b = (a `xor` b, a && b)

/Longer Examples/

Included are a couple of examples included with the distribution.
Neither are as fast as a dedicated solver for their respective
domains, but they showcase how you can solve real world problems
involving 10s or 100s of thousands of variables and constraints
with `ersatz`.

@@ersatz-sudoku@@

> % time ersatz-sudoku
> Problem:
> ┌───────┬───────┬───────┐
> │ 5 3   │   7   │       │
> │ 6     │ 1 9 5 │       │
> │   9 8 │       │   6   │
> ├───────┼───────┼───────┤
> │ 8     │   6   │     3 │
> │ 4     │ 8   3 │     1 │
> │ 7     │   2   │     6 │
> ├───────┼───────┼───────┤
> │   6   │       │ 2 8   │
> │       │ 4 1 9 │     5 │
> │       │   8   │   7 9 │
> └───────┴───────┴───────┘
> Solution:
> ┌───────┬───────┬───────┐
> │ 5 3 4 │ 6 7 8 │ 9 1 2 │
> │ 6 7 2 │ 1 9 5 │ 3 4 8 │
> │ 1 9 8 │ 3 4 2 │ 5 6 7 │
> ├───────┼───────┼───────┤
> │ 8 5 9 │ 7 6 1 │ 4 2 3 │
> │ 4 2 6 │ 8 5 3 │ 7 9 1 │
> │ 7 1 3 │ 9 2 4 │ 8 5 6 │
> ├───────┼───────┼───────┤
> │ 9 6 1 │ 5 3 7 │ 2 8 4 │
> │ 2 8 7 │ 4 1 9 │ 6 3 5 │
> │ 3 4 5 │ 2 8 6 │ 1 7 9 │
> └───────┴───────┴───────┘
> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total

@@ersatz-regexp-grid@@

This solves the \\\"regular crossword puzzle\\\" (<https://github.com/ekmett/ersatz/raw/master/notes/grid.pdf grid.pdf>) from the 2013 MIT mystery hunt.

> % time ersatz-regexp-grid

\"SPOILER\"

> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total")
    (license license:bsd-3)))

haskell-8.8-ersatz

(define-public haskell-8.8-essence-of-live-coding-gloss
  (package
    (name "haskell-8.8-essence-of-live-coding-gloss")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-gloss/essence-of-live-coding-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ggwh1d57isda9k5l4g7g92l77m1b9hj2vva3r0fvmnidsny41n0"))))
    (properties `((upstream-name . "essence-of-live-coding-gloss")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-foreign-store)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-gloss)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - Gloss backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains a backend for Gloss (http://gloss.ouroborus.net/).")
    (license license:bsd-3)))

haskell-8.8-essence-of-live-coding-gloss

(define-public haskell-8.8-essence-of-live-coding-pulse
  (package
    (name "haskell-8.8-essence-of-live-coding-pulse")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-pulse/essence-of-live-coding-pulse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "044vjp637gaq2q2c8d83c9ixp6zg5x752ifw4nmnwigi1w53y1wq"))))
    (properties `((upstream-name . "essence-of-live-coding-pulse")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-foreign-store)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-pulse-simple)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) pulseaudio)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - pulse backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains the backend for PulseAudio.")
    (license license:bsd-3)))

haskell-8.8-essence-of-live-coding-pulse

(define-public haskell-8.8-essence-of-live-coding-quickcheck
  (package
    (name "haskell-8.8-essence-of-live-coding-quickcheck")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-quickcheck/essence-of-live-coding-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sp4s69jlc679yhix5smwx1n0gk8msrjmrsyca2lf59l71l3gadc"))))
    (properties `((upstream-name . "essence-of-live-coding-quickcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-boltzmann-samplers)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - QuickCheck integration")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.

This package contains useful utilities for quickchecking.")
    (license license:bsd-3)))

haskell-8.8-essence-of-live-coding-quickcheck

(define-public haskell-8.8-eventful-core
  (package
    (name "haskell-8.8-eventful-core")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-core/eventful-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06chbjrxfxk0fr9lgdic6bmylnv3kz398l9drqr85r6qk1s5xxg0"))))
    (properties `((upstream-name . "eventful-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-sum-type-boilerplate)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Core module for eventful")
    (description "Core module for eventful")
    (license license:expat)))

haskell-8.8-eventful-core

(define-public haskell-8.8-fedora-haskell-tools
  (package
    (name "haskell-8.8-fedora-haskell-tools")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-haskell-tools/fedora-haskell-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zqglc16jawgdx382wg7dx467v7ngnf1njvf1clcdyqwp54q6imn"))))
    (properties `((upstream-name . "fedora-haskell-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-csv)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fedora-dists)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-simple-cmd)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/fedora-haskell/fedora-haskell-tools")
    (synopsis "Building and maintenance tools for Fedora Haskell")
    (description "Tools for building and managing Fedora Haskell packages.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-fedora-haskell-tools

(define-public haskell-8.8-focuslist
  (package
    (name "haskell-8.8-focuslist")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/focuslist/focuslist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06s8655l7nzpmwf6z8p11g9mngb9a0kw10riii67sq8jcanpllkq"))))
    (properties `((upstream-name . "focuslist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-focuslist

(define-public haskell-8.8-folds
  (package
    (name "haskell-8.8-folds")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/folds/folds-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17a8xggx17m59hiwd2lxd2379sw4xblgyv1pk9g5h93w3m8wgq1r"))))
    (properties `((upstream-name . "folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-foptimize")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-adjunctions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-data-reify)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-pointed)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.fpcomplete.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-8.8-folds

(define-public haskell-8.8-ftp-client-conduit
  (package
    (name "haskell-8.8-ftp-client-conduit")
    (version "0.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ftp-client-conduit/ftp-client-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f5168z4k4j267whr0r5xlaqi8zzg1ihqfls6fjqicyqv37k8sj2"))))
    (properties `((upstream-name . "ftp-client-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-ftp-client)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/mr/ftp-client")
    (synopsis "Transfer file with FTP and FTPS with Conduit")
    (description
     "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS. ftp-client-conduit uses conduit to stream files and data in constant space.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-ftp-client-conduit

(define-public haskell-8.8-fuzzy-dates
  (package
    (name "haskell-8.8-fuzzy-dates")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-dates/fuzzy-dates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12ga6d4kp6mk6cg781ibaxxmpq7kfh8i4yg8r4awiwp1ic8lrcd9"))))
    (properties `((upstream-name . "fuzzy-dates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-8.8-fuzzy-dates

(define-public haskell-8.8-generics-sop-lens
  (package
    (name "haskell-8.8-generics-sop-lens")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop-lens/generics-sop-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yl74pz6r2zf9sspzbqg6xvr6k9b5irq3c3pjrf5ih6hfrz4k1ks"))))
    (properties `((upstream-name . "generics-sop-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p9h7xbd0jcf85r480gbnyyh822r3wziv1rg2qwgq0ll5apqvzmn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generics-sop)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-8.8-generics-sop-lens

(define-public haskell-8.8-haskell-lsp-types
  (package
    (name "haskell-8.8-haskell-lsp-types")
    (version "0.22.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp-types/haskell-lsp-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05475d5rwkmsh50q18lans7zzd34jhfdpg80m7aijg829dkphskm"))))
    (properties `((upstream-name . "haskell-lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-8.8-haskell-lsp-types

(define-public haskell-8.8-haskoin-core
  (package
    (name "haskell-8.8-haskoin-core")
    (version "0.13.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-core/haskoin-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bxn1jfb2s308gpdiwwnvar606qc3fqnvf6k0hdz2x43pqkc15lb"))))
    (properties `((upstream-name . "haskoin-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-murmur3)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-secp256k1-haskell)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Bitcoin & Bitcoin Cash library for Haskell")
    (description
     "Haskoin Core is a complete Bitcoin and Bitcoin Cash library of functions and data types for Haskell developers.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-haskoin-core

(define-public haskell-8.8-hasty-hamiltonian
  (package
    (name "haskell-8.8-hasty-hamiltonian")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasty-hamiltonian/hasty-hamiltonian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11x0daijylcxg0zf55bcwac6dy6lmmz9f4zf7a44qp9dsgfv753a"))))
    (properties `((upstream-name . "hasty-hamiltonian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-ad)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-kan-extensions)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-mcmc-types)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-mwc-probability)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.com/jtobin/hasty-hamiltonian")
    (synopsis "Speedy traversal through parameter space.")
    (description
     "Gradient-based traversal through parameter space.

This implementation of HMC algorithm uses 'lens' as a means to operate over
generic indexed traversable functors, so you can expect it to work if your
target function takes a list, vector, map, sequence, etc. as its argument.

If you don't want to calculate your gradients by hand you can use the
handy <https://hackage.haskell.org/package/ad ad> library for automatic
differentiation.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'hamiltonian' transition operator
that can be used more generally.

> import Numeric.AD (grad)
> import Numeric.MCMC.Hamiltonian
>
> target :: RealFloat a => [a] -> a
> target [x0, x1] = negate ((x0 + 2 * x1 - 7) ^ 2 + (2 * x0 + x1 - 5) ^ 2)
>
> gTarget :: [Double] -> [Double]
> gTarget = grad target
>
> booth :: Target [Double]
> booth = Target target (Just gTarget)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 0.05 20 [0, 0] booth")
    (license license:expat)))

haskell-8.8-hasty-hamiltonian

(define-public haskell-8.8-hexml-lens
  (package
    (name "haskell-8.8-hexml-lens")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexml-lens/hexml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ss9riq7ppmqav4p38ckk479ggq7iy7xm0wsanr29ybg43vlx8xs"))))
    (properties `((upstream-name . "hexml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-foundation)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hexml)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-8.8-hexml-lens

(define-public haskell-8.8-hkgr
  (package
    (name "haskell-8.8-hkgr")
    (version "0.2.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hkgr/hkgr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hq059l3byw3vcxw56z341q56xnb86kdqj5vnn16v29ql677xm26"))))
    (properties `((upstream-name . "hkgr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-cabal)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-simple-cmd)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xdg-basedir)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (pronounced \"Hackager\") is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.
There is also a command for creating a new local project.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hkgr

(define-public haskell-8.8-hledger
  (package
    (name "haskell-8.8-hledger")
    (version "1.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yl6akcbmz5qy559m0k0cndwb6wdzvq2jqn7ahc46v3ai6hwk20c"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")
       #:cabal-revision
       ("1" "1fz1wwpxf6scr8nnrd2n1g92vya9bd0l54fcx3sqhyk5kaf8kp2z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-Decimal)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hledger-lib)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-math-functions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-tabular)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-timeit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-wizards)))
    (home-page "http://hledger.org")
    (synopsis "Command-line interface for the hledger accounting system")
    (description
     "The command-line interface for the hledger accounting system.
Its basic function is to read a plain text file describing
financial transactions and produce useful reports.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hledger

(define-public haskell-8.8-hledger-iadd
  (package
    (name "haskell-8.8-hledger-iadd")
    (version "1.3.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-iadd/hledger-iadd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klrqss2ch4yi50m1rybznzsjg4ahbx7rg9n8w5svpf34fdlp048"))))
    (properties `((upstream-name . "hledger-iadd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1n43j7fh3d9f8jn1y40vhkfh7yfwb4sixm3wyrfj20mkr7yyr732")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-brick)
                  (@ (gnu packages stackage ghc-8.8 stage012) haskell-8.8-free)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hledger-lib)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-zipper)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-vty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xdg-basedir)))
    (home-page "https://github.com/hpdeifel/hledger-iadd#readme")
    (synopsis "A terminal UI as drop-in replacement for hledger add")
    (description
     "This is a terminal UI as drop-in replacement for hledger add.

It improves in the following ways on hledger's add command:

* Interactive as-you-type completion for
account names and descriptions with optional
fuzzy matching.

* Integrated calculator: Amounts can be written
as simple sums with real-time feedback on the
result.

* All actions while entering a transaction can
be undone

* Configurable format for date input. Instead
of @@y\\/m\\/d@@ it is also possible to use other
formats like the german @@d.m.y@@.")
    (license license:bsd-3)))

haskell-8.8-hledger-iadd

(define-public haskell-8.8-hslua-module-doclayout
  (package
    (name "haskell-8.8-hslua-module-doclayout")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-doclayout/hslua-module-doclayout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hkzddgz427fh69bdyiyx5vyngslw3ab9xjg7i5rfjhzzmsn0hha"))))
    (properties `((upstream-name . "hslua-module-doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-doclayout)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-hslua)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-tasty-lua)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/hslua/hslua-module-doclayout")
    (synopsis "Lua module wrapping Text.DocLayout.")
    (description "Lua module wrapping @@Text.DocLayout@@.")
    (license license:expat)))

haskell-8.8-hslua-module-doclayout

(define-public haskell-8.8-hslua-module-system
  (package
    (name "haskell-8.8-hslua-module-system")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-system/hslua-module-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hk2splyasbplnggknjhlb423axc5b32xq8aq8zal4vvwlqhzvf1"))))
    (properties `((upstream-name . "hslua-module-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-hslua)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-tasty-lua)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (home-page "https://github.com/hslua/hslua-module-system")
    (synopsis "Lua module wrapper around Haskell's System module.")
    (description "Provides access to system information and functionality
to Lua scripts via Haskell's `System` module.

Intended usage for this package is to preload it by adding
the loader function to `package.preload`. Note that the
Lua `package` library must have already been loaded before
the loader can be added.")
    (license license:expat)))

haskell-8.8-hslua-module-system

(define-public haskell-8.8-http-client-openssl
  (package
    (name "haskell-8.8-http-client-openssl")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-openssl/http-client-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114aci8nvbzvhscla6172y7s47yp689rslhg8h7y3hmkh2zq7r65"))))
    (properties `((upstream-name . "http-client-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-proxy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.8-http-client-openssl

(define-public haskell-8.8-http-client-tls
  (package
    (name "haskell-8.8-http-client-tls")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-tls/http-client-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qj3pcpgbsfsc4m52dz35khhl4hf1i0nmcpa445z82d9567vy6j7"))))
    (properties `((upstream-name . "http-client-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0llb5k8mz1h6zyv1nd433wwgyjsw7n8x0b1fwib312iiws43sz69")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis
     "http-client backend using the connection package and tls library")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.")
    (license license:expat)))

haskell-8.8-http-client-tls

(define-public haskell-8.8-http-link-header
  (package
    (name "haskell-8.8-http-link-header")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-link-header/http-link-header-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b9a3kax6zvn8aaflys63lanqan65hsv0dr8vwhbpbhyvxrxn9ns"))))
    (properties `((upstream-name . "http-link-header") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0swjwxzghl1vl1j6hfk6lzwz9fcrsvbazinpjf8by6cjn2ylbyyl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis
     "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\".")
    (description "https://codeberg.org/valpackett/http-link-header")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-http-link-header

(define-public haskell-8.8-hw-conduit-merges
  (package
    (name "haskell-8.8-hw-conduit-merges")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit-merges/hw-conduit-merges-"
                    version ".tar.gz"))
              (sha256
               (base32
                "042i1cs7qpjs8q8birr6xjzyxp28y7l6isv2fwkisv4agx8kfgm0"))))
    (properties `((upstream-name . "hw-conduit-merges") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r9vq3ibdbkwxg26ds9dllhkgpbhlrv0i02babjpmd3g1nznp0ms")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description
     "Additional merges and joins for Conduit. Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-conduit-merges

(define-public haskell-8.8-hw-excess
  (package
    (name "haskell-8.8-hw-excess")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-excess/hw-excess-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xiyf3xyg6f4kgkils9ycx6q0qcsbd6rw4m9lizw9295mnp05s3g"))))
    (properties `((upstream-name . "hw-excess") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "09c7x1qkmjs8bl9gzcb6ykls3jjj75i8hvwdfcx1zgiwg79w1g1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-hw-bits)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hw-prim)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-excess

(define-public haskell-8.8-hw-json-simd
  (package
    (name "haskell-8.8-hw-json-simd")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bpfyx2bd7pcr8y8bfahcdm30bznqixfawraq3xzy476vy9ppa9n"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("4" "0ragyq509nxy5ax58h84b6984lwnhklkk8nfafmxh5fxq66214cy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hw-prim)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-8.8-hw-json-simd

(define-public haskell-8.8-hw-mquery
  (package
    (name "haskell-8.8-hw-mquery")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-mquery/hw-mquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qhd8jcwffr57mjraw0g3xj9kb0jd75ybqaj1sbxw31lc2hr9w9j"))))
    (properties `((upstream-name . "hw-mquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mnra701p169xzibag8mvb2mrk5gdp42dwlhqr07b6dz2cly88sn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Monadic query DSL")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-mquery

(define-public haskell-8.8-imagesize-conduit
  (package
    (name "haskell-8.8-imagesize-conduit")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/imagesize-conduit/imagesize-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dc0453l7n3g05pg118y4smlzkl6p56zazpi4dr41dkg12pii9i"))))
    (properties `((upstream-name . "imagesize-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p4zmizr01pg3d7gb0q88j1alvvlzbdvzyf1wbgajng68a4g0li9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-8.8-imagesize-conduit

(define-public haskell-8.8-influxdb
  (package
    (name "haskell-8.8-influxdb")
    (version "1.7.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/influxdb/influxdb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1psx9v95fhlapizhh7jdz4cvynwv9jiqn09z0843lhc74jqf65in"))))
    (properties `((upstream-name . "influxdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-optional-args)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "Haskell client library for InfluxDB")
    (description "@@influxdb@@ is an InfluxDB client library for Haskell.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.8-influxdb

(define-public haskell-8.8-inline-c-cpp
  (package
    (name "haskell-8.8-inline-c-cpp")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c-cpp/inline-c-cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nb7n2q47jbny7rj9y1hn6lnailnmpy4y7j6jaalny123kxsdipp"))))
    (properties `((upstream-name . "inline-c-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-inline-c)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c-cpp")
    (synopsis "Lets you embed C++ code into Haskell.")
    (description
     "Utilities to inline C++ code into Haskell using inline-c.  See
tests for example on how to build.")
    (license license:expat)))

haskell-8.8-inline-c-cpp

(define-public haskell-8.8-insert-ordered-containers
  (package
    (name "haskell-8.8-insert-ordered-containers")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/insert-ordered-containers/insert-ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "020a56280mxjk9k97q2m1424m73m1sf1ccl0wm0ci9msyw2g51za"))))
    (properties `((upstream-name . "insert-ordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1s90flzj3039s50r6hx7mqihf8lvarcqb6zps7m12x543gahfcq0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-optics-extra)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-8.8-insert-ordered-containers

(define-public haskell-8.8-intro
  (package
    (name "haskell-8.8-intro")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intro/intro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18ddkcm77jxqpqjaaqs1qmzvn8zgincrybb3d4zcsggrp6llghc3"))))
    (properties `((upstream-name . "intro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-optics)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-writer-cps-mtl)))
    (home-page "https://github.com/minad/intro#readme")
    (synopsis "Safe and minimal prelude")
    (description
     "Intro is a modern Prelude which provides safe alternatives
for most of the partial functions and follows other
best practices, e.g., Text is preferred over String.
For String overloading the extension 'OverloadedStrings' should be used.
Container types and Monad transformers are provided.

Most important - this Prelude tries to keep things simple.
This means it just reexports from base and commonly used libraries
and adds only very few additional functions.
Everything is exported explicitly to provide a stable interface
and to improve the quality of the documentation.")
    (license license:expat)))

haskell-8.8-intro

(define-public haskell-8.8-invertible
  (package
    (name "haskell-8.8-invertible")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible/invertible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ngcmy59cyrg5idcn8a4gxg6ipq88rhhwhdb09gra8jcraq9n7ii"))))
    (properties `((upstream-name . "invertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-arrows" "-finvariant" "-flens" "-fpartial-isomorphisms" "-f-piso" "-fsemigroupoids" "-f-typecompose")
       #:cabal-revision
       ("1" "19xcczz26ji5xaws4ikvacqz991qgislj32hs8rlks07qw3qmnbn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-invariant)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-partial-isomorphisms)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "https://hackage.haskell.org/package/invertible")
    (synopsis
     "bidirectional arrows, bijective functions, and invariant functors")
    (description
     "Representations and operations for bidirectional arrows (total isomorphisms: an
arrow paired with its inverse).  Classes for invariant functors and monoidal
functors.  Includes a number of useful bijections and operations, as well as
interoperability with related packages.

Most users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.")
    (license license:bsd-3)))

haskell-8.8-invertible

(define-public haskell-8.8-language-nix
  (package
    (name "haskell-8.8-language-nix")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-nix/language-nix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lq07311dg4a32zdp5bc20bw94g0c7pdzxdiwi2y4zbhd1944rzx"))))
    (properties `((upstream-name . "language-nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g4hq729bz128sf3ifd8rbfamwa8mqqcnhbc3qxnpz1myzvxhnjk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parsec-class)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/language-nix#readme")
    (synopsis "Data types and functions to represent the Nix language")
    (description
     "Data types and useful functions to represent and manipulate the Nix
language.")
    (license license:bsd-3)))

haskell-8.8-language-nix

(define-public haskell-8.8-lens-action
  (package
    (name "haskell-8.8-lens-action")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-action/lens-action-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06yg4ds0d4cfs3zl1fhc8865i5w6pwqhx9bxngfa8f9974mdiid3"))))
    (properties `((upstream-name . "lens-action") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-8.8-lens-action

(define-public haskell-8.8-lens-aeson
  (package
    (name "haskell-8.8-lens-aeson")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03n9dkdyqkkf15h8k4c4bjwgjcbbs2an2cf6z8x54nvkjmprrg7p"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("4" "1wgk0nd0fxgdbqb6mkslj3gyrs9vdxpb83hvj2n2dcswg3ahwdsy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson.")
    (license license:expat)))

haskell-8.8-lens-aeson

(define-public haskell-8.8-lens-datetime
  (package
    (name "haskell-8.8-lens-datetime")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-datetime/lens-datetime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6cns38xggw8kcc9h0mf4q024cvc8njm7n33f8gi7hwyxxqs7xv"))))
    (properties `((upstream-name . "lens-datetime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/nilcons/lens-datetime")
    (synopsis "Lenses for Data.Time.* types")
    (description
     "The @@lens-datetime@@ library provides a unified lens based accessors
to the various types in @@Data.Time.Clock@@, @@Data.Time.Calendar@@ and
@@Data.Time.LocalTime@@. This library only tries to make some of the
common use-cases convenient, it doesn't aim for completeness. If you
want completeness and/or efficiency try the @@thyme@@ package instead
(<http://hackage.haskell.org/package/thyme>).

Demonstration of basic uses.

>import Control.Lens
>import Data.Time
>import Data.Time.Lens
>
>aDay :: Day
>aDay = fromGregorian 2013 08 22
>
>aLocal :: LocalTime
>aLocal = LocalTime aDay (TimeOfDay 13 45 28)
>
>aUTC :: UTCTime
>aUTC = UTCTime aDay 7458.9

You can then do the following:

>> aLocal ^. years
>2013
>> aUTC ^. months
>8
>> aLocal & time .~ midnight
>2013-08-22 00:00:00
>> aUTC & days .~ 1 & months .~ 1
>2013-01-01 02:04:18.9 UTC

You can manipulate the date-time values with proper roll-over
behavior via the @@FlexibleDateTime@@ mechanism:

>> aLocal & flexDT.months +~ 12
>2014-08-22 13:45:28
>> aUTC & flexDT.days +~ 100
>2013-11-30 02:04:18.9 UTC
>> aLocal & flexDT.minutes +~ 120
>2013-08-22 15:45:28
>> aLocal & flexDT %~ ((days +~ 7) . (hours +~ 2))
>2013-08-22 13:45:28")
    (license license:bsd-3)))

haskell-8.8-lens-datetime

(define-public haskell-8.8-lens-misc
  (package
    (name "haskell-8.8-lens-misc")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-misc/lens-misc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jyqxi83imkyd318m17p2z84zqaxyb08mk5gy7q7saay2blmz4jr"))))
    (properties `((upstream-name . "lens-misc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-8.8-lens-misc

(define-public haskell-8.8-lens-properties
  (package
    (name "haskell-8.8-lens-properties")
    (version "4.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-properties/lens-properties-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1caciyn75na3f25q9qxjl7ibjam22xlhl5k2pqfiak10lxsmnz2g"))))
    (properties `((upstream-name . "lens-properties") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "10c8phmf4znr6a9gkzvi2b9q9b9qc8cmslaxlx2hv59j62216h0f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-8.8-lens-properties

(define-public haskell-8.8-lens-regex
  (package
    (name "haskell-8.8-lens-regex")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex/lens-regex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c673v6k6y7dng6qmi4jbh3jlx803mg5g1911bz54r785fm6p50d"))))
    (properties `((upstream-name . "lens-regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-samples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-8.8-lens-regex

(define-public haskell-8.8-linear
  (package
    (name "haskell-8.8-linear")
    (version "1.21.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12gn571cfchrj9zir30c86vib3ppjia5908di21pnsfy6dmw6994"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")
       #:cabal-revision
       ("2" "1n9sdbfd496c6nd3lybsgmg8nhsy7nml7933j1xss5hvka4s4y45")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-adjunctions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-8.8-linear

(define-public haskell-8.8-machines
  (package
    (name "haskell-8.8-machines")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ayajyzaczdazfsmamlm5vap43x2mdm4w8v5970y1xlxh4rb3bs1"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cp850vwzn213n0k9s5i62889a1wvmyi05jw6kmazaczcbcs7jsq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-adjunctions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-pointed)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description
     "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-8.8-machines

(define-public haskell-8.8-metrics
  (package
    (name "haskell-8.8-metrics")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/metrics/metrics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2vqwldp457956bx839r9v3xpmp95q42insn2xcdw669rq6wpym"))))
    (properties `((upstream-name . "metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-algorithms)))
    (home-page "https://hackage.haskell.org/package/metrics")
    (synopsis "High-performance application metric tracking")
    (description
     "A port of Coda Hale's excellent metrics library for the JVM

<https://github.com/codahale/metrics>

For motivation about why you might want to track application metrics, check Coda\\'s talk:

<http://www.youtube.com/watch?v=czes-oa0yik>

Interesting portions of this package's documentation were also appropriated from the metrics library's documentation:

<http://metrics.codahale.com>")
    (license license:expat)))

haskell-8.8-metrics

(define-public haskell-8.8-mini-egison
  (package
    (name "haskell-8.8-mini-egison")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mini-egison/mini-egison-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x78p2s706kb6w4ci6w0av19zhw4i64bbl6xmvwrjs66xjgxrai6"))))
    (properties `((upstream-name . "mini-egison") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-egison-pattern-src)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-egison-pattern-src-th-mode)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primes)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-sort)))
    (home-page "https://github.com/egison/egison-haskell#readme")
    (synopsis "Template Haskell Implementation of Egison Pattern Matching")
    (description
     "This package provides the pattern-matching facility that fulfills the following three criteria for practical pattern matching for non-free data types\\: (i) non-linear pattern matching with backtracking; (ii) extensibility of pattern-matching algorithms; (iii) ad-hoc polymorphism of patterns.
Non-free data types are data types whose data have no standard forms.
For example, multisets are non-free data types because the multiset '[a,b,b]' has two other equivalent but literally different forms '[b,a,b]' and '[b,b,a]'.

The design of the pattern-matching facility is originally proposed in <https://arxiv.org/abs/1808.10603 this paper> and implemented in <http://github.com/egison/egison/ the Egison programming language>.")
    (license license:expat)))

haskell-8.8-mini-egison

(define-public haskell-8.8-monad-logger
  (package
    (name "haskell-8.8-monad-logger")
    (version "0.3.36")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12rw0k01gkhiqjm2fhxgkmribksmizhj14xphfn8fkd86wzl0vbh"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("2" "14p5wkww771x0apby0bdgzdzwy9kjsm4zbbhi24xazlncy31cqqq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-8.8-monad-logger

(define-public haskell-8.8-mongoDB
  (package
    (name "haskell-8.8-mongoDB")
    (version "2.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gj97hfznhmfdvwdgf6fkizla2d9cy31933qw5i8p7fmh7igzgvk"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005) haskell-8.8-bson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cryptohash)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-dns)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hashtables)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-network-bsd)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-nonce)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pureMD5)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-random-shuffle)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-mongoDB

(define-public haskell-8.8-network-conduit-tls
  (package
    (name "haskell-8.8-network-conduit-tls")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-conduit-tls/network-conduit-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxdsf7isv3l2g58vsvi8iwlrgf85v7ksa8636kr6ffycbhn1zgc"))))
    (properties `((upstream-name . "network-conduit-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis "Create TLS-aware network code with conduits")
    (description "Uses the tls package for a pure-Haskell implementation.")
    (license license:expat)))

haskell-8.8-network-conduit-tls

(define-public haskell-8.8-network-ip
  (package
    (name "haskell-8.8-network-ip")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p4mn7vz74kxmsc8xvg7gx5rs38knnv518bc0qv0b07ki51wq7g0"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-data-dword)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-endian)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-data-serializer)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-data-textual)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-parsers)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-text-printer)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-type-hint)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-8.8-network-ip

(define-public haskell-8.8-oauthenticated
  (package
    (name "haskell-8.8-oauthenticated")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oauthenticated/oauthenticated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08njax7jchkmha1angh98v0p3haxn8zj12lajl5npcmzlihd0k6l"))))
    (properties `((upstream-name . "oauthenticated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tel/oauthenticated.git#readme")
    (synopsis "Simple OAuth for http-client")
    (description
     "/Warning/: This software is pre 1.0 and thus its API may change very
dynamically while updating only minor versions. This package will follow the
PVP once it reaches version 1.0.

OAuth is a popular protocol allowing servers to offer resources owned by some
user to a series of authorized clients securely. For instance, OAuth lets
Twitter provide access to a user's private tweets to the Twitter client
registered on their phone.

@@oauthenticated@@ is a Haskell library implementing OAuth protocols atop the
minimalistic @@http-client@@ HTTP client library extracted from @@http-conduit@@.
\"Network.OAuth\" offers simple functions for signing
'Network.HTTP.Client.Request's along with tools for 'Network.OAuth.Cred'ential
management and 'Network.OAuth.Server' configuration. \"Network.OAuth.Simple\"
provides a slightly more heavy-weight interface which manages the necessary state
and configuration using a monad transformer stack.

There's also an implementation of OAuth's three-legged credential acquisition
protocol built atop the \"Network.OAuth\" API. This can be handled in both
conformant and old-style modes: conformant will reject server responses which
are not conformant with RFC 5849 (which builds atop community version OAuth
1.0a) while old-style better allows for less-than-compliant servers. See
'Network.OAuth.Types.Params.Version' for more details.

Currently @@oauthenticated@@ only supports OAuth 1.0 and is in alpha. OAuth 2.0
support is a potential goal, but it's unclear if it can be transparently
supported at a similar level of abstraction.")
    (license license:expat)))

haskell-8.8-oauthenticated

(define-public haskell-8.8-opentelemetry-wai
  (package
    (name "haskell-8.8-opentelemetry-wai")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-wai/opentelemetry-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01jim0634pzf49l18s7512y7a3dkjpif492k6a5j81jg1nylkm1a"))))
    (properties `((upstream-name . "opentelemetry-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-opentelemetry)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-wai")
    (synopsis "")
    (description "OpenTelemetry middleware for wai")
    (license license:asl2.0)))

haskell-8.8-opentelemetry-wai

(define-public haskell-8.8-pager
  (package
    (name "haskell-8.8-pager")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pager/pager-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wzfsindjxx61nca36hhldy0y33pgagg506ls9ldvrkvl4n4y7iy"))))
    (properties `((upstream-name . "pager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-8.8-pager

(define-public haskell-8.8-pipes-extras
  (package
    (name "haskell-8.8-pipes-extras")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-extras/pipes-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cyb05bv5xkarab3090ikpjiqm79lr46n3nalplliz8jr4x67a82"))))
    (properties `((upstream-name . "pipes-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0gqqhvq5h6kkz6k4dpvlky7lbrfbgqp30whn7cglaplrqzlfwbvd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-8.8-pipes-extras

(define-public haskell-8.8-pipes-network-tls
  (package
    (name "haskell-8.8-pipes-network-tls")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network-tls/pipes-network-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "161nqwgv0r5vlnpa1bq0y2wyh2yp8b583dxbwpbgxfjrnsy5f5vm"))))
    (properties `((upstream-name . "pipes-network-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-network-simple)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-network-simple-tls)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pipes-network)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-pipes-safe)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/k0001/pipes-network-tls")
    (synopsis "TLS-secured network connections support for pipes.")
    (description
     "Use TLS-secured network connections together with the @@pipes@@ ecosystem.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP.TLS\" exports pipes and utilities for using
TLS-secured TCP connections in a streaming fashion.

* \"Pipes.Network.TCP.TLS.Safe\" subsumes \"Pipes.Network.TCP.TLS\",
exporting pipes and functions that allow you to safely establish new
TCP connections within a pipeline using the @@pipes-safe@@ facilities.
You only need to use this module if you want to acquire and release
operating system resources within a pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.8-pipes-network-tls

(define-public haskell-8.8-pipes-wai
  (package
    (name "haskell-8.8-pipes-wai")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-wai/pipes-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0akd0n2qgv32pcq717j2xr2g29qmaz2v610ddx7vc4hc2kgp19h4"))))
    (properties `((upstream-name . "pipes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-8.8-pipes-wai

(define-public haskell-8.8-project-template
  (package
    (name "haskell-8.8-project-template")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ac43x36i6b595jhflif1qqhri1rrqw90ama5n7rsh0ffnzyb69d"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-8.8-project-template

(define-public haskell-8.8-proto-lens-protobuf-types
  (package
    (name "haskell-8.8-proto-lens-protobuf-types")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protobuf-types/proto-lens-protobuf-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1db0z3394g1fzw80ilxldbvy7m3a4piks0fk2wmlaw5k6bza82c7"))))
    (properties `((upstream-name . "proto-lens-protobuf-types")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-lens-family)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-proto-lens)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-proto-lens-runtime)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-proto-lens-setup)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Basic protocol buffer message types.")
    (description
     "This package provides bindings standard protocol message types, for use with the proto-lens library.")
    (license license:bsd-3)))

haskell-8.8-proto-lens-protobuf-types

(define-public haskell-8.8-purescript-bridge
  (package
    (name "haskell-8.8-purescript-bridge")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/purescript-bridge/purescript-bridge-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gplvmkx2c8ksk25wdinhwwbmqa5czbd4nwdgn4sa9ci10f2i4a3"))))
    (properties `((upstream-name . "purescript-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-8.8-purescript-bridge

(define-public haskell-8.8-pushbullet-types
  (package
    (name "haskell-8.8-pushbullet-types")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pushbullet-types/pushbullet-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ny8nlk50cn6zgikg7xwylkrablj05vcm5gjm9y4zdzhbz7s4qb4"))))
    (properties `((upstream-name . "pushbullet-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/pushbullet-types")
    (synopsis "Datatypes used by the Pushbullet APIs")
    (description "")
    (license license:expat)))

haskell-8.8-pushbullet-types

(define-public haskell-8.8-pusher-http-haskell
  (package
    (name "haskell-8.8-pusher-http-haskell")
    (version "1.5.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pusher-http-haskell/pusher-http-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gfn5rfyyhbrl6sq7b6qyg86afww60c9g8y65m0qci6c91jbrv3a"))))
    (properties `((upstream-name . "pusher-http-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/WillSewell/pusher-http-haskell")
    (synopsis "Haskell client library for the Pusher Channels HTTP API")
    (description
     "Functions that correspond to endpoints of the Pusher Channels
HTTP API. Messages can be triggered, and information about the
channel can be queried. Additionally there are functions
for authenticating users of private and presence channels.")
    (license license:expat)))

haskell-8.8-pusher-http-haskell

(define-public haskell-8.8-quickcheck-arbitrary-adt
  (package
    (name "haskell-8.8-quickcheck-arbitrary-adt")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-arbitrary-adt/quickcheck-arbitrary-adt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fa5gb111m740q399l7wbr9n03ws9rasq48jhnx7dvvd6qh2wjjw"))))
    (properties `((upstream-name . "quickcheck-arbitrary-adt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-8.8-quickcheck-arbitrary-adt

(define-public haskell-8.8-rainbow
  (package
    (name "haskell-8.8-rainbow")
    (version "0.34.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbow/rainbow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rx5kci69m7fdi94x35a2wg88fprlix61mvzsqq3waqb7ahc2mlf"))))
    (properties `((upstream-name . "rainbow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-rainbow

(define-public haskell-8.8-random-tree
  (package
    (name "haskell-8.8-random-tree")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-tree/random-tree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhwb4kah1j1hjsqwys24g0csq1hvz0vlgf6z9vwiql4w5y4wq1b"))))
    (properties `((upstream-name . "random-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-random-shuffle)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tree-fun)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-random-tree

(define-public haskell-8.8-rhine-gloss
  (package
    (name "haskell-8.8-rhine-gloss")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhine-gloss/rhine-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j3sbdlfn6hkksfxa5nw874pm9yxmc8hy14msjfsl3g3y0d501bh"))))
    (properties `((upstream-name . "rhine-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-dunai)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-gloss)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-rhine)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/rhine-gloss")
    (synopsis "Gloss backend for Rhine")
    (description
     "This package provides a simple wrapper for the `gloss` library,
or rather the function `Graphics.Gloss.play`,
enabling you to write `gloss` applications as signal functions.")
    (license license:bsd-3)))

haskell-8.8-rhine-gloss

(define-public haskell-8.8-salak-yaml
  (package
    (name "haskell-8.8-salak-yaml")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/salak-yaml/salak-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07wcwld58bdr8n5fdfq98x6c1xdr8rrx919y4f9y7abdnc4aj000"))))
    (properties `((upstream-name . "salak-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x1wkd2yqmgd0lxy45d3w8p53ms942am14flc0m2jz6dk9vi3k7a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-libyaml)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-salak)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration Loader for yaml")
    (description
     "Yaml support for [salak](https://hackage.haskell.org/package/salak).")
    (license license:expat)))

haskell-8.8-salak-yaml

(define-public haskell-8.8-semialign-indexed
  (package
    (name "haskell-8.8-semialign-indexed")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-indexed/semialign-indexed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b6amfhwk968ah56w8vala3hbpzf9mfza2ajhdnvzcdiyqyxvwb0"))))
    (properties `((upstream-name . "semialign-indexed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0vmvmnmb79cc11rbl136z74yyb16klswpx38ayxal8m52lyggqpv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-semialign)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-these)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package provides @@SemialignWithIndex@@ with two members

@@
class (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where
\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c
@@

@@
class (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where
\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c
@@

Superclass @@FunctorWithIndex@@ is from @@lens@@ package.
See https://hackage.haskell.org/package/semialign-optics for @@optics@@ variant.")
    (license license:bsd-3)))

haskell-8.8-semialign-indexed

(define-public haskell-8.8-sequenceTools
  (package
    (name "haskell-8.8-sequenceTools")
    (version "1.4.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequenceTools/sequenceTools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06wi43di0bja83iympx8pvka4zfwc4yyaw7chrddvxasnxqi369q"))))
    (properties `((upstream-name . "sequenceTools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-lens-family)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-pipes-group)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-pipes-ordered-zip)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-pipes-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-sequence-formats)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/sequenceTools")
    (synopsis "A package with tools for processing DNA sequencing data")
    (description
     "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-sequenceTools

(define-public haskell-8.8-serf
  (package
    (name "haskell-8.8-serf")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/serf/serf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ry0shqmazxcsjxsh6amvz2fky2fy3wwlck7d331j8csz7fwdjfn"))))
    (properties `((upstream-name . "serf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-operational)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-8.8-serf

(define-public haskell-8.8-servant
  (package
    (name "haskell-8.8-servant")
    (version "0.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servant/servant-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yzl1yklbbymlh8jdc4ncrdxkalx2z349v4msbd6wxxrxfkxbz6n"))))
    (properties `((upstream-name . "servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v913vjklgwyfbn7k2v70943gy4i8ja3y6crpyrg5llxkb81jpbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-singleton-bool)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vault)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.8-servant

(define-public haskell-8.8-shake
  (package
    (name "haskell-8.8-shake")
    (version "0.19.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shake/shake-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vkkgncar07na4kn3i02b2zdyjdjxl10hrcz2l23c498yrrqibjv"))))
    (properties `((upstream-name . "shake") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-cloud" "-f-embed-files")
       #:cabal-revision
       ("1" "1qmkfrm8mbw2qrs1805bxcjznd35pm8l5qnilgslfgiic0wfvggl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-filepattern)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-heaps)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-js-dgtable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-js-flot)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-js-jquery)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://shakebuild.com")
    (synopsis
     "Build system library, like Make, but more accurate dependencies.")
    (description
     "Shake is a Haskell library for writing build systems - designed as a
replacement for @@make@@. See \"Development.Shake\" for an introduction,
including an example. The homepage contains links to a user
manual, an academic paper and further information:
<https://shakebuild.com>

To use Shake the user writes a Haskell program
that imports \"Development.Shake\", defines some build rules, and calls
the 'Development.Shake.shakeArgs' function. Thanks to do notation and infix
operators, a simple Shake build system
is not too dissimilar from a simple Makefile. However, as build systems
get more complex, Shake is able to take advantage of the excellent
abstraction facilities offered by Haskell and easily support much larger
projects. The Shake library provides all the standard features available in other
build systems, including automatic parallelism and minimal rebuilds.
Shake also provides more accurate dependency tracking, including seamless
support for generated files, and dependencies on system information
(e.g. compiler version).")
    (license license:bsd-3)))

haskell-8.8-shake

(define-public haskell-8.8-shell-conduit
  (package
    (name "haskell-8.8-shell-conduit")
    (version "4.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-conduit/shell-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5yvm08l37qblqks1r23znixxas39gl1d3mlm6rq8a6zfvcacbg"))))
    (properties `((upstream-name . "shell-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monads-tf)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-8.8-shell-conduit

(define-public haskell-8.8-simple-sendfile
  (package
    (name "haskell-8.8-simple-sendfile")
    (version "0.2.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-sendfile/simple-sendfile-"
                    version ".tar.gz"))
              (sha256
               (base32
                "112j0qfsjazf9wg1zywf7hjybgsiywk9wkm27yi8xzv27hmlv1mn"))))
    (properties `((upstream-name . "simple-sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fallow-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-8.8-simple-sendfile

(define-public haskell-8.8-smash-lens
  (package
    (name "haskell-8.8-smash-lens")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-lens/smash-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j7v3713aahp3vh7dswrkdfrnksi1zlw9iv9zanhb714s6anyq66"))))
    (properties `((upstream-name . "smash-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-smash)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Optics for the `smash` library")
    (description
     "Prisms, Traversals, and combinators for the `smash` library.")
    (license license:bsd-3)))

haskell-8.8-smash-lens

(define-public haskell-8.8-speedy-slice
  (package
    (name "haskell-8.8-speedy-slice")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speedy-slice/speedy-slice-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i139wp2c75q8a5q018z7ps1ghbqjkkd8nh6z6xfp0rqywq2bsnr"))))
    (properties `((upstream-name . "speedy-slice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-kan-extensions)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-mcmc-types)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-mwc-probability)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.com/jtobin/speedy-slice")
    (synopsis "Speedy slice sampling.")
    (description
     "Speedy slice sampling.

This implementation of the slice sampling algorithm uses 'lens' as a means to
operate over generic indexed traversable functors, so you can expect it to
work if your target function takes a list, vector, map, sequence, etc. as its
argument.

Additionally you can sample over anything that's an instance of both 'Num' and
'Variate', which is useful in the case of discrete parameters.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'slice' transition operator that can
be used more generally.

> import Numeric.MCMC.Slice
> import Data.Sequence (Seq, index, fromList)
>
> bnn :: Seq Double -> Double
> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where
>   x0 = index xs 0
>   x1 = index xs 1
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 (fromList [0, 0]) bnn")
    (license license:expat)))

haskell-8.8-speedy-slice

(define-public haskell-8.8-sqlcli-odbc
  (package
    (name "haskell-8.8-sqlcli-odbc")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlcli-odbc/sqlcli-odbc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rfhdaa0wmvc78nbjhi93p9sv66xa6rjr79yyhlkqi1d335b8vb5"))))
    (properties `((upstream-name . "sqlcli-odbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-logging)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-sqlcli)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc")
    (synopsis "ODBC specific definitions to be used by SQL CLI clients.")
    (description
     "Access databases through ODBC using SQLCLI compatible functions.
The package adds ODBC specific definition to the sqlcli package.")
    (license license:bsd-3)))

haskell-8.8-sqlcli-odbc

(define-public haskell-8.8-stm-conduit
  (package
    (name "haskell-8.8-stm-conduit")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-conduit/stm-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhlxvpp7mah8dcvkknh6skx44jfk3092zz2w52zlr255bkmn3p8"))))
    (properties `((upstream-name . "stm-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-8.8-stm-conduit

(define-public haskell-8.8-stratosphere
  (package
    (name "haskell-8.8-stratosphere")
    (version "0.53.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0842sfn7vspbq5kc6rx7i2mvmk6zap87233khybbmvrzzyrp0sp2"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/frontrowed/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-8.8-stratosphere

(define-public haskell-8.8-strict-base-types
  (package
    (name "haskell-8.8-strict-base-types")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-base-types/strict-base-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yihvjijag9g55ihrgqj0vwn6ksvscj3r0n2zzxz2qbxrhx6m1pq"))))
    (properties `((upstream-name . "strict-base-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-strict)))
    (home-page "https://github.com/meiersi/strict-base-types")
    (synopsis "Strict variants of the types provided in base.")
    (description
     "It is common knowledge that lazy datastructures can lead to space-leaks.
This problem is particularly prominent, when using lazy datastructures to
store the state of a long-running application in memory. The easiest
solution to this problem is to use fully strict types to store such state
values. By \\\"fully strict types\\\" we mean types for whose values it holds
that, if they are in weak-head normal form, then they are also in normal
form. Intuitively, this means that values of fully strict types cannot
contain unevaluated thunks.

To define a fully strict datatype, one typically uses the following recipe.

1. Make all fields of every constructor strict; i.e., add a bang to
all fields.

2. Use only strict types for the fields of the constructors.

The second requirement is problematic as it rules out the use of
the standard Haskell 'Maybe', 'Either', and pair types. This library
solves this problem by providing strict variants of these types and their
corresponding standard support functions and type-class instances.

Note that this library does currently not provide fully strict lists.
They can be added if they are really required. However, in many cases one
probably wants to use unboxed or strict boxed vectors from the 'vector'
library (<http://hackage.haskell.org/package/vector>) instead of strict
lists.  Moreover, instead of @@String@@s one probably wants to use strict
@@Text@@ values from the @@text@@ library
(<http://hackage.haskell.org/package/text>).

This library comes with batteries included; i.e., missing instances
for type-classes from the @@deepseq@@, @@binary@@, @@aeson@@, @@QuickCheck@@, and
@@lens@@ packages are included. Of particluar interest is the @@Strict@@
type-class provided by the lens library
(<http://hackage.haskell.org/packages/archive/lens/3.9.0.2/doc/html/Control-Lens-Iso.html#t:Strict>).
It is used in the following example to simplify the modification of
strict fields.

> (-# LANGUAGE TemplateHaskell #-)   -- replace with curly braces,
> (-# LANGUAGE OverloadedStrings #-) -- the Haddock prologues are a P.I.T.A!
>
> import           Control.Lens ( (.=), Strict(strict), from, Iso', makeLenses)
> import           Control.Monad.State.Strict (State)
> import qualified Data.Map                   as M
> import qualified Data.Maybe.Strict          as S
> import qualified Data.Text                  as T
>
> -- | An example of a state record as it could be used in a (very minimal)
> -- role-playing game.
> data GameState = GameState
>     ( _gsCooldown :: !(S.Maybe Int)
>     , _gsHealth   :: !Int
>     )  -- replace with curly braces, *grmbl*
>
> makeLenses ''GameState
>
> -- The isomorphism, which converts a strict field to its lazy variant
> lazy :: Strict lazy strict => Iso' strict lazy
> lazy = from strict
>
> type Game = State GameState
>
> cast :: T.Text -> Game ()
> cast spell =
>     gsCooldown.lazy .= M.lookup spell spellDuration
>     -- ... implement remainder of spell-casting ...
>   where
>     spellDuration = M.fromList [(\"fireball\", 5)]

See
<http://www.haskellforall.com/2013/05/program-imperatively-using-haskell.html>
for a gentle introduction to lenses and state manipulation.

Note that this package uses the types provided by the 'strict' package
(<http://hackage.haskell.org/package/strict>), but organizes them a bit
differently. More precisely, the @@strict-base-types@@ package

- only provides the fully strict variants of types from 'base',

- is in-sync with the current base library (base-4.6),

- provides the missing instances for (future) Haskell platform packages, and

- conforms to the standard policy that strictness variants of an existing
datatype are identified by suffixing \\'Strict\\' or \\'Lazy\\' in the
module hierarchy.")
    (license license:bsd-3)))

haskell-8.8-strict-base-types

(define-public haskell-8.8-strict-tuple-lens
  (package
    (name "haskell-8.8-strict-tuple-lens")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple-lens/strict-tuple-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vvhbzbyfvkx76scygg8gwfp01cw6ks38hk0gb70xdl2lyzi80wg"))))
    (properties `((upstream-name . "strict-tuple-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0875r7kva6ym17fdklh18vm4s04sd9pj0w55km8jv2kmbkmfja8k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-strict-tuple)))
    (home-page "https://github.com/emilypi/strict-tuple-lens")
    (synopsis "Optics for the `strict-tuple` library")
    (description
     "This package provides optics for the `strict-tuple` library, using the `lens` library")
    (license license:bsd-3)))

haskell-8.8-strict-tuple-lens

(define-public haskell-8.8-summoner
  (package
    (name "haskell-8.8-summoner")
    (version "2.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/summoner/summoner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15n4dwhy4ri1vi446fa2k9i6cxvfrl79hjjgsdjhpyz290lfwvjv"))))
    (properties `((upstream-name . "summoner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-colourista)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-generic-data)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-relude)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shellmet)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-tomland)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-tree-diff)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-validation-selective)))
    (home-page "https://github.com/kowainik/summoner")
    (synopsis
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects.")
    (description
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects.
See [README.md](https://github.com/kowainik/summoner#-summoner) for details.")
    (license license:mpl2.0)))

haskell-8.8-summoner

(define-public haskell-8.8-text-builder
  (package
    (name "haskell-8.8-text-builder")
    (version "0.6.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder/text-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03fjmxnz2nbfr63ff8nms58vjd8czz6pqq4ng5rbmiivlfj55ymm"))))
    (properties `((upstream-name . "text-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-deferred-folds)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-8.8-text-builder

(define-public haskell-8.8-text-region
  (package
    (name "haskell-8.8-text-region")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-region/text-region-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zy5zb7xg1343hlkwawnbca7f6gal9028ps1kp83fg2vmq1aqk57"))))
    (properties `((upstream-name . "text-region") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z5l1hv8sc4ida5s4r03ihak612lrq0rf7sdfkw7gf05f67c622p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-groups)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "https://github.com/mvoidex/text-region")
    (synopsis "Marking text regions")
    (description
     "Provides functions to update text region positions according to text edit actions")
    (license license:bsd-3)))

haskell-8.8-text-region

(define-public haskell-8.8-these-lens
  (package
    (name "haskell-8.8-these-lens")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-lens/these-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nwknm17x7vkx9936z7xa6hqw69pgig185if1dninrvyxvv59kps"))))
    (properties `((upstream-name . "these-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-these)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "Lenses for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-8.8-these-lens

(define-public haskell-8.8-timelens
  (package
    (name "haskell-8.8-timelens")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timelens/timelens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r57fib5nzvrk8gsn26364l1a14zj9sg3kv2db4pjzy3dq0zmrpl"))))
    (properties `((upstream-name . "timelens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-8.8-timelens

(define-public haskell-8.8-tracing
  (package
    (name "haskell-8.8-tracing")
    (version "0.0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tracing/tracing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h0ga56pikym7igqzbb4lm1qnjnfzn533z0mx7jz3hjpgflk8xxs"))))
    (properties `((upstream-name . "tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtth/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.")
    (license license:bsd-3)))

haskell-8.8-tracing

(define-public haskell-8.8-trifecta
  (package
    (name "haskell-8.8-trifecta")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trifecta/trifecta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fr326lzf38m20h2g4189nsyml9w3128924zbd3cd93cgfqcc9bs"))))
    (properties `((upstream-name . "trifecta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0frzfh7xmaypbxcmszjvzbakz52p0fx79jg6ng0ygaaj62inv4ss")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-charset)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-parsers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-reducers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics

For example:

<<https://i.imgur.com/ZyzUSSn.png>>

<images/example.png (Local Copy)>")
    (license license:bsd-3)))

haskell-8.8-trifecta

(define-public haskell-8.8-type-natural
  (package
    (name "haskell-8.8-type-natural")
    (version "0.8.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-natural/type-natural-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq54098jyrx6zz8vn0pw3kg9b6bwpxhnhxk3f5m18rpjjjjw4xs"))))
    (properties `((upstream-name . "type-natural") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nhv7wh3cgy5hhkgs3bgg3659qf3lpy8rm89ikbb0p69bbxdpmfa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-singletons)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-singletons-presburger)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/konn/type-natural")
    (synopsis "Type-level natural and proofs of their properties.")
    (description "Type-level natural numbers and proofs of their properties.

Version 0.6+ supports __GHC 8+ only__.

__Use 0.5.* with ~ GHC 7.10.3__.")
    (license license:bsd-3)))

haskell-8.8-type-natural

(define-public haskell-8.8-typed-uuid
  (package
    (name "haskell-8.8-typed-uuid")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-uuid/typed-uuid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01gh95cxymimjyvhpba0w5bzw6vnx9jzgc6a5jj7vqxi421cc7ss"))))
    (properties `((upstream-name . "typed-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-uuid)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-8.8-typed-uuid

(define-public haskell-8.8-validation
  (package
    (name "haskell-8.8-validation")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation/validation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1acj7mh3581ks405xswxw6667z7y1y0slisg6jvp6chc191ji9l5"))))
    (properties `((upstream-name . "validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rrjg9z399k6pb55nv85mlr5bkmdqbjwkvl1cy7ydccdx6ks4syp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/qfpl/validation")
    (synopsis "A data-type like Either but with an accumulating Applicative")
    (description
     "<<http://i.imgur.com/uZnp9ke.png>>

A data-type like Either but with differing properties and type-class
instances.

Library support is provided for this different representation, include
`lens`-related functions for converting between each and abstracting over their
similarities.

* `Validation`

The `Validation` data type is isomorphic to `Either`, but has an instance
of `Applicative` that accumulates on the error side. That is to say, if two
(or more) errors are encountered, they are appended using a `Semigroup`
operation.

As a consequence of this `Applicative` instance, there is no corresponding
`Bind` or `Monad` instance. `Validation` is an example of, \"An applicative
functor that is not a monad.\"")
    (license license:bsd-3)))

haskell-8.8-validation

(define-public haskell-8.8-vector-instances
  (package
    (name "haskell-8.8-vector-instances")
    (version "3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-instances/vector-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10akvpa5w9bp0d8hflab63r9laa9gy2hv167smhjsdzq1kplc0hv"))))
    (properties `((upstream-name . "vector-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fhashable")
       #:cabal-revision
       ("1" "177jllmcv0517vppc4lx0l0kvicgaf1h060lkcnv7fl0hnp16zf5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-keys)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-pointed)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-8.8-vector-instances

(define-public haskell-8.8-wai-conduit
  (package
    (name "haskell-8.8-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-8.8-wai-conduit

(define-public haskell-8.8-wai-cors
  (package
    (name "haskell-8.8-wai-cors")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-cors/wai-cors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10gv3jjlkcb13031frr818p56v2s0qf6dqjsfpwlhwdxdssvx5r5"))))
    (properties `((upstream-name . "wai-cors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-8.8-wai-cors

(define-public haskell-8.8-wai-eventsource
  (package
    (name "haskell-8.8-wai-eventsource")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-eventsource/wai-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5zlqky7ldqbmiaixizhk1s8ghf5i3ha1xfz8flxgzr7gr0al3q"))))
    (properties `((upstream-name . "wai-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-8.8-wai-eventsource

(define-public haskell-8.8-wai-logger
  (package
    (name "haskell-8.8-wai-logger")
    (version "2.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hbm7if28p6qa36cgpyq6i569275si53z9gsl2g1z8x09z3xiyz2"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteorder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-8.8-wai-logger

(define-public haskell-8.8-wai-middleware-caching
  (package
    (name "haskell-8.8-wai-middleware-caching")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching/wai-middleware-caching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fp08ba46wn7gianfbirag8yj14s2x41fkhdb5mx7arjafgpd8m"))))
    (properties `((upstream-name . "wai-middleware-caching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-wai-middleware-caching

(define-public haskell-8.8-wai-middleware-static
  (package
    (name "haskell-8.8-wai-middleware-static")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l6az106r970v3jwx3z7fg7x8ja8x5hla0m5lwg7sjfs9vdh0bnl"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jinswa97ll70xxj6hm4mxw7i1cfnm8jn87aczzccn9xscdpll4c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-expiring-cache-map)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mime-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-8.8-wai-middleware-static

(define-public haskell-8.8-wai-session
  (package
    (name "haskell-8.8-wai-session")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session/wai-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lq0gqndb9simd1zkz355m604dwrpcdwxcl3bgagi6kb8h12fffj"))))
    (properties `((upstream-name . "wai-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vault)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (home-page "https://github.com/singpolyma/wai-session")
    (synopsis "Flexible session middleware for WAI")
    (description
     "Provides a generic, cookie-based middleware for sessions that is
parameterised over the session store, the cookie name, and the
cookie parameters (such as path, expiry, etc).  Passes a pair of
functions (lookup key, set key) for the current session through the
'Vault' in the 'Request'.

Also provides a simple example session store based on threadsafe
'IORef's and 'Data.Map'.

See example/Main.hs in git for example usage.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-wai-session

(define-public haskell-8.8-wai-slack-middleware
  (package
    (name "haskell-8.8-wai-slack-middleware")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-slack-middleware/wai-slack-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pd61vxnfjdjzkvmwqfgf07a3nir3mnbr8qw2nzqa767s84i6i"))))
    (properties `((upstream-name . "wai-slack-middleware") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-8.8-wai-slack-middleware

(define-public haskell-8.8-webdriver
  (package
    (name "haskell-8.8-webdriver")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w6z95swrz5ijmcxh0x3i521kpxqfp6pxgqfqwix7fc4jy450n8k"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-developer")
       #:cabal-revision
       ("1" "04bl53yr1144a3nv9avqjvhl20q0qc5gik6p7cd2naz3i5hfvid1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-directory-tree)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kallisti-dev/hs-webdriver")
    (synopsis "a Haskell client for the Selenium WebDriver protocol")
    (description
     "A Selenium WebDriver client for Haskell.
You can use it to automate browser sessions
for testing, system administration, etc.

For more information about Selenium itself, see
<http://seleniumhq.org/>

To find out what's been changed in this version and others,
see the change log at
<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>")
    (license license:bsd-3)))

haskell-8.8-webdriver

(define-public haskell-8.8-xeno
  (package
    (name "haskell-8.8-xeno")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dvjzh7yyijwy2d6215wlxlln9h0ng6bnqasfh38prp6sllxk25j"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libxml2")
       #:cabal-revision
       ("1" "14y84dszn6dnh7b209791ksx632jfy20byvdf8sn4garvsn9hldw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hexml)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-mutable-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-8.8-xeno

(define-public haskell-8.8-xml-conduit
  (package
    (name "haskell-8.8-xml-conduit")
    (version "1.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p57v127882rxvvmwjmvnqdmk3x2wg1z4d8y03849h0xaz1vid0w"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-8.8-xml-conduit

(define-public haskell-8.8-yaml
  (package
    (name "haskell-8.8-yaml")
    (version "0.11.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bfdsqckzql50j6ni4fa1470cvkmfiy4skb98cdwnj4rss5p93mj"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe")
       #:cabal-revision
       ("1" "0slfkp7r4hkc4krdsb8p21x5zwqlmaw4svjzvjpirz1k1i3z3dr4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-libyaml)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-mockery)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-8.8-yaml

(define-public haskell-8.8-zim-parser
  (package
    (name "haskell-8.8-zim-parser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zim-parser/zim-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12apl53kj1lzfkw566z3j5fir8iab25s2pkajb3dmq2lbhwnlzxj"))))
    (properties `((upstream-name . "zim-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-zim-parser

(define-public haskell-8.8-zip
  (package
    (name "haskell-8.8-zip")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00lqf0bw6abxdj9rs658blbhabzr1fd1w9dh0qflyxqkd8fqj7h5"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-disable-bzip2")
       #:cabal-revision
       ("1" "08r12h84zp55lfqh53srmivf4xzyq2yyyiw12ja73ipnb0y2ag7i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-digest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-8.8-zip

(define-public haskell-8.8-zip-stream
  (package
    (name "haskell-8.8-zip-stream")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11x58s5w1lr8hw86grxijd94sw5r8k376b8n4dlm8lqz5xhmri5p"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-digest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-8.8-zip-stream

(define-public haskell-8.8-zippers
  (package
    (name "haskell-8.8-zippers")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zippers/zippers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hrsgk8sh9g3438kl79131s6vjydhivgya04yxv3h70m7pky1dpm"))))
    (properties `((upstream-name . "zippers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "131rmvifqf3dcvh9lnpjnm28ss7nzra1n2qnxa1fypnx1zmmljva")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-8.8-zippers

