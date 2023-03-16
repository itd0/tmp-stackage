;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage024)
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
(define-public haskell-9.4-MusicBrainz
  (package
    (name "haskell-9.4-MusicBrainz")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MusicBrainz/MusicBrainz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mydq3bjf15ksfrh4lf947ka43i3978q58y2aij3aqd763v2jb16"))))
    (properties `((upstream-name . "MusicBrainz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hMusicBrainz")
    (synopsis "interface to MusicBrainz XML2 and JSON web services")
    (description "interface to MusicBrainz XML2 and JSON web services")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-MusicBrainz

(define-public haskell-9.4-Spock-core
  (package
    (name "haskell-9.4-Spock-core")
    (version "0.14.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-core/Spock-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0a93v9pxbvd9qqpx9rnv6gqpc5y8xh5dkfi0lkc566pj9cv8bpad"))))
    (properties `((upstream-name . "Spock-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kxi4bigll1gn9rcp8x3h4waycihycvh6bhvfjzxdyzhm3ifq48a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hvect)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-reroute)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-superbuffer)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "Barebones high performance type safe web framework")
    (license license:bsd-3)))

haskell-9.4-Spock-core

(define-public haskell-9.4-authenticate
  (package
    (name "haskell-9.4-authenticate")
    (version "1.3.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate/authenticate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rhbvdgwdr68gp13p5piddfdqf3l9lmx4w7k249lc98y23780c3x"))))
    (properties `((upstream-name . "authenticate") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-html-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis "Authentication methods for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate>.")
    (license license:expat)))

haskell-9.4-authenticate

(define-public haskell-9.4-aws
  (package
    (name "haskell-9.4-aws")
    (version "0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aws/aws-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0kfdj9hxjvziq1y74xj9mm17zcgwywpvp9c0i6gfd5malf4qxgg0"))))
    (properties `((upstream-name . "aws") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-fnetworkbsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/aristidb/aws")
    (synopsis "Amazon Web Services (AWS) for Haskell")
    (description
     "Bindings for Amazon Web Services (AWS), with the aim of supporting all AWS services. To see a high level overview of the library, see the README at <https://github.com/aristidb/aws/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-9.4-aws

(define-public haskell-9.4-aws-sns-verify
  (package
    (name "haskell-9.4-aws-sns-verify")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-sns-verify/aws-sns-verify-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v05hca43v12g4x2ffwqla9pmf9gx8l85vv88cljn808qbsj5h4v"))))
    (properties `((upstream-name . "aws-sns-verify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdevelopment")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/aws-sns-verify#readme")
    (synopsis "Parse and verify AWS SNS messages")
    (description
     "Please see the README on GitHub at <https://github.com/freckle/aws-sns-verify#readme>")
    (license license:expat)))

haskell-9.4-aws-sns-verify

(define-public haskell-9.4-bugsnag-haskell
  (package
    (name "haskell-9.4-bugsnag-haskell")
    (version "0.0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-haskell/bugsnag-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pf9gi2rr1dv56b0x4sj1wyxvw2ak9n2nzkz21mmzi4l68f4dvs9"))))
    (properties `((upstream-name . "bugsnag-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-ua-parser)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Bugsnag error reporter for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-bugsnag-haskell

(define-public haskell-9.4-bugsnag-yesod
  (package
    (name "haskell-9.4-bugsnag-yesod")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-yesod/bugsnag-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06w2ndxk8czwdfwyy3ylkhzagbaxx6gkix8lwybks0vsxwjr6w83"))))
    (properties `((upstream-name . "bugsnag-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-bugsnag)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-bugsnag-wai)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Yesod integration for Bugsnag error reporting for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-bugsnag-yesod

(define-public haskell-9.4-bugzilla-redhat
  (package
    (name "haskell-9.4-bugzilla-redhat")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugzilla-redhat/bugzilla-redhat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19dir39yxqd5psf3gj4f3vhcbdad1np7374nkxfk0gg4xxvywcvi"))))
    (properties `((upstream-name . "bugzilla-redhat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-builddemo")
       #:cabal-revision
       ("1" "1yai855w6s9xjyswpx206hnryi1y6kda1310vcfff0ghl4gdxpxw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-iso8601-time)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/hsbugzilla")
    (synopsis "A Haskell interface to the Bugzilla native REST API")
    (description "This package is designed to provide an easy-to-use,
type-safe interface to querying Bugzilla from Haskell.

This is a friendly fork of Seth Fowler's library,
with updates and API tweaks needed for
bugzilla.redhat.com.")
    (license license:bsd-3)))

haskell-9.4-bugzilla-redhat

(define-public haskell-9.4-cabal-rpm
  (package
    (name "haskell-9.4-cabal-rpm")
    (version "2.0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-rpm/cabal-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07a2jnzldyva1smbxxdknimzydj2rhr7whhgh5q4nwkifkiliadv"))))
    (properties `((upstream-name . "cabal-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-f-curl")
       #:cabal-revision
       ("1" "1dq6c9f0nm7a8nknc2haq79zkpkh1dgrkn2bixzsd16kmjjsl83m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-cabal)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/cabal-rpm")
    (synopsis "RPM packaging tool for Haskell Cabal-based packages")
    (description
     "This package provides a RPM packaging tool for Haskell Cabal-based packages.

cabal-rpm has commands to generate a RPM spec file and srpm for a package.
It can rpmbuild packages, yum/dnf install their dependencies, prep packages,
and install them. There are commands to list package dependencies and
missing dependencies. The diff command compares the current spec file with
a freshly generated one, the update command updates the spec file to latest
version from Stackage or Hackage, and the refresh command updates the spec
file to the current cabal-rpm packaging. It also handles Hackage revisions of
packages. Standalone packages can also be made, built with cabal-install.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-cabal-rpm

(define-public haskell-9.4-casa-client
  (package
    (name "haskell-9.4-casa-client")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/casa-client/casa-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l8lhk7bbrpjip693a3p6kp92aryajb6aw1w4ycak7nrb947dvjw"))))
    (properties `((upstream-name . "casa-client") (hidden? . #f)))
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
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-casa-types)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/casa-client")
    (synopsis "Client for Casa")
    (description "Client for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-9.4-casa-client

(define-public haskell-9.4-cryptocompare
  (package
    (name "haskell-9.4-cryptocompare")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptocompare/cryptocompare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19p923d8hvhlf16gnpxp8fq5y9kmg4kqnq04w48hc1pkba7v9g2q"))))
    (properties `((upstream-name . "cryptocompare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-MissingH)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aviaviavi/cryptocompare")
    (synopsis "Haskell wrapper for the cryptocompare API")
    (description
     "Haskell wrapper for the cryptocompare API, a source of information and pricing of different crypto-currencies.")
    (license license:expat)))

haskell-9.4-cryptocompare

(define-public haskell-9.4-curl-runnings
  (package
    (name "haskell-9.4-curl-runnings")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/curl-runnings/curl-runnings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bpyx4n9s416dbz3k216vn64qm04x1kh60ypn4fswhcampwfq4n2"))))
    (properties `((upstream-name . "curl-runnings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-dhall-json)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aviaviavi/curl-runnings#readme")
    (synopsis "A framework for declaratively writing curl based API tests")
    (description
     "Please see the README on Github at <https://github.com/aviaviavi/curl-runnings#readme>")
    (license license:expat)))

haskell-9.4-curl-runnings

(define-public haskell-9.4-fb
  (package
    (name "haskell-9.4-fb")
    (version "2.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fb/fb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "18hqmhfzniydmxwi8b21iz04pc6x8hdy8pj6960ihrk20ddkih3d"))))
    (properties `((upstream-name . "fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/fb")
    (synopsis "Bindings to Facebook's API.")
    (description
     "This package exports bindings to Facebook's APIs (see
<http://developers.facebook.com/>).  Does not have any external
dependencies and tries to use as little resources (such as
memory, sockets and CPU) as possible by using packages such as
@@aeson@@, @@attoparsec@@, @@bytestring@@, @@conduit@@, @@http-conduit@@,
@@text@@ and others.

While we would like to have a complete binding to Facebook's
API, this package is being developed on demand.  If you need
something that has not been implemented yet, please send a pull
request or file an issue on GitHub
(<https://github.com/psibi/fb/issues>).")
    (license license:bsd-3)))

haskell-9.4-fb

(define-public haskell-9.4-gi-gdk
  (package
    (name "haskell-9.4-gi-gdk")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14271bbi1dy0r1krxg0ry3hqmqv10v55ja55a912qknsq1ya8nka"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
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
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gdk

(define-public haskell-9.4-gitlab-haskell
  (package
    (name "haskell-9.4-gitlab-haskell")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gitlab-haskell/gitlab-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1spd989dpqjx7m39fdzdkirp3pgh5cf57dqv756x51r4qkcs4hh1"))))
    (properties `((upstream-name . "gitlab-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://gitlab.com/robstewart57/gitlab-haskell")
    (synopsis "A Haskell library for the GitLab web API")
    (description
     "This library lifts the GitLab REST API into Haskell: <https://docs.gitlab.com/ee/api/>

The library also features a reactive event driven API for writing Gitlab file hook applications.")
    (license license:bsd-3)))

haskell-9.4-gitlab-haskell

(define-public haskell-9.4-gmail-simple
  (package
    (name "haskell-9.4-gmail-simple")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gmail-simple/gmail-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xjgww7hn27x4vmj23ji3i2r2552kkinbc0170k6sc5f2bxdda6f"))))
    (properties `((upstream-name . "gmail-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base64)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-jwt)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/Daniel-Diaz/gmail-simple/blob/main/README.md")
    (synopsis "Simple library for Google Mail (GMail).")
    (description "Easy-to-use library to interact with the Google Mail API.

Currently only supporting sending mails.")
    (license license:bsd-3)))

haskell-9.4-gmail-simple

(define-public haskell-9.4-google-isbn
  (package
    (name "haskell-9.4-google-isbn")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/google-isbn/google-isbn-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0brjq8l4kmlkl5kr69sin3zxbydhafjl9jzkry0x6ijwg0sgfk9s"))))
    (properties `((upstream-name . "google-isbn") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/google-isbn#readme")
    (synopsis "")
    (description
     "Basic utility to search an ISBN using the Google Books webservice")
    (license license:bsd-3)))

haskell-9.4-google-isbn

(define-public haskell-9.4-hoogle
  (package
    (name "haskell-9.4-hoogle")
    (version "5.0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoogle/hoogle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v6k75w0an9pqgb7a6cicnpf9rz77xd2lmxfbafc5l4f99jg83bn"))))
    (properties `((upstream-name . "hoogle") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-foundation)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-flot)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-jquery)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-mmap)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-process-extras)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-storable-tuple)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hoogle.haskell.org/")
    (synopsis "Haskell API Search")
    (description
     "Hoogle is a Haskell API search engine, which allows you to
search many standard Haskell libraries by either function name,
or by approximate type signature.")
    (license license:bsd-3)))

haskell-9.4-hoogle

(define-public haskell-9.4-hspec-tmp-proc
  (package
    (name "haskell-9.4-hspec-tmp-proc")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-tmp-proc/hspec-tmp-proc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d3igvda8a0lhqzvvzrf1ck8nmif4w447gkjyq6g87am883a078v"))))
    (properties `((upstream-name . "hspec-tmp-proc") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/adetokunbo/tmp-proc/tree/master/tmp-proc#tmp-proc")
    (synopsis "Simplify use of tmp-proc from hspec tests")
    (description "Reduces boilerplate when using tmp-proc with hspec")
    (license license:bsd-3)))

haskell-9.4-hspec-tmp-proc

(define-public haskell-9.4-hspec-wai-json
  (package
    (name "haskell-9.4-hspec-wai-json")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai-json/hspec-wai-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cra0jfb8j9g5447lij0d8nnbqv06f5i4j51h14vjw0n7zb4i8y4"))))
    (properties `((upstream-name . "hspec-wai-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "186l9mp921vspzrmz52xii0iiiskj6psiizdja09l4b8ficfd4m9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Testing JSON APIs with hspec-wai")
    (description "Testing JSON APIs with hspec-wai")
    (license license:expat)))

haskell-9.4-hspec-wai-json

(define-public haskell-9.4-http-directory
  (package
    (name "haskell-9.4-http-directory")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-directory/http-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dgmd24n0r6r0yjndk62rxvs8nrbzqgdszjg5ad2wm26abynzdgy"))))
    (properties `((upstream-name . "http-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-html-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-date)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/http-directory")
    (synopsis "http directory listing library")
    (description "Library for listing the files (href's) in an http directory.
It can also check the size, existence, modtime of files,
and url redirects.")
    (license license:expat)))

haskell-9.4-http-directory

(define-public haskell-9.4-http-download
  (package
    (name "haskell-9.4-http-download")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-download/http-download-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wg5jck0h52dysdn0q5xs7gh8cjyq2qr9vaj7qa4fr3am1753n8v"))))
    (properties `((upstream-name . "http-download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-rio-prettyprint)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/http-download#readme")
    (synopsis "Verified downloads with retries")
    (description
     "Higher level HTTP download APIs include verification of content and retries")
    (license license:bsd-3)))

haskell-9.4-http-download

(define-public haskell-9.4-http-query
  (package
    (name "haskell-9.4-http-query")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-query/http-query-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z0mj12yxbflh0f523liqdbi0i6xz8zraz3lzlpfyl5kfp96jrfk"))))
    (properties `((upstream-name . "http-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/http-query")
    (synopsis "Simple http queries")
    (description "Simple web API queries returning JSON.")
    (license license:bsd-3)))

haskell-9.4-http-query

(define-public haskell-9.4-http-reverse-proxy
  (package
    (name "haskell-9.4-http-reverse-proxy")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-reverse-proxy/http-reverse-proxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a0fc9rqr1crbb1sbq3gzbkwjcfff662d4bgmy3vzspk7ky697ld"))))
    (properties `((upstream-name . "http-reverse-proxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
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
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/http-reverse-proxy")
    (synopsis
     "Reverse proxy HTTP requests, either over raw sockets or with WAI")
    (description
     "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.")
    (license license:bsd-3)))

haskell-9.4-http-reverse-proxy

(define-public haskell-9.4-mime-mail-ses
  (package
    (name "haskell-9.4-mime-mail-ses")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-mail-ses/mime-mail-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v4b0y28kf7mx80z16j82wmaccpggkc262f7cn9g9j2nfayy2xhj"))))
    (properties `((upstream-name . "mime-mail-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-mime-mail)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Send mime-mail messages via Amazon SES")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail-ses>.")
    (license license:expat)))

haskell-9.4-mime-mail-ses

(define-public haskell-9.4-nuxeo
  (package
    (name "haskell-9.4-nuxeo")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nuxeo/nuxeo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0m0rnrcay92vi47dd6cbba5vdjzdrmwb9s7wic95cbsb7wmajc72"))))
    (properties `((upstream-name . "nuxeo") (hidden? . #f)))
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
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-url)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/nuxeo#readme")
    (synopsis "")
    (description "Nuxeo tools")
    (license license:bsd-3)))

haskell-9.4-nuxeo

(define-public haskell-9.4-plaid
  (package
    (name "haskell-9.4-plaid")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/plaid/plaid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mwwd3mnj45l1487hfhb8lhgcvik88qch7vzgk17zv77ginnifni"))))
    (properties `((upstream-name . "plaid") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-casing)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/v0d1ch/plaid#readme")
    (synopsis "Plaid.com api integration library")
    (description
     "@@Plaid@@ is a library for interacting with https://plaid.com

Plaid.com connects the users to their bank accounts via the app and this library provides programmatic
access to all these features.

Please take a look at examples folder to easily get started.

Haskell examples in the plaid [documentation] (https://plaid.com/docs) come from this library.
")
    (license license:bsd-3)))

haskell-9.4-plaid

(define-public haskell-9.4-rollbar
  (package
    (name "haskell-9.4-rollbar")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rollbar/rollbar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mj8s2kfv8fw8mpb3xz8fvlyvdx46nsh1waw7jvw4cxphywfq9b8"))))
    (properties `((upstream-name . "rollbar") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/azara/rollbar-haskell")
    (synopsis "error tracking through rollbar.com")
    (description "")
    (license license:expat)))

haskell-9.4-rollbar

(define-public haskell-9.4-sandwich-webdriver
  (package
    (name "haskell-9.4-sandwich-webdriver")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-webdriver/sandwich-webdriver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146pck1kj5p8h6x8bv6iriicrjxsi0jbpirmscjhc4gg8nd0fmxm"))))
    (properties `((upstream-name . "sandwich-webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-microlens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sandwich)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-string-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-webdriver)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Selenium WebDriver")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-webdriver documentation>.")
    (license license:bsd-3)))

haskell-9.4-sandwich-webdriver

(define-public haskell-9.4-scotty
  (package
    (name "haskell-9.4-scotty")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scotty/scotty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jnv2k37yv7hbm21w356ml4b14avlwh8yyzwwwfrwpbn6zzk6ahy"))))
    (properties `((upstream-name . "scotty") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.4-scotty

(define-public haskell-9.4-servant-server
  (package
    (name "haskell-9.4-servant-server")
    (version "0.19.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a7msh8p59v5mgsnj5li9s3jg0jwq2zjsznr0cg7g0fncn7r1axy"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qlc6bg31abfhdgwalmb89bkrdsxv21rcb2gdli85xy1jvcs4z7v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-wai-app-static)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.4-servant-server

(define-public haskell-9.4-serversession-backend-redis
  (package
    (name "haskell-9.4-serversession-backend-redis")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-backend-redis/serversession-backend-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kwarhb9xgffw4jdmvz8zc6k67swz1v6dphb8xx9kngbxq9z44in"))))
    (properties `((upstream-name . "serversession-backend-redis")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-serversession)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Storage backend for serversession using Redis.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-redis>")
    (license license:expat)))

haskell-9.4-serversession-backend-redis

(define-public haskell-9.4-serversession-frontend-wai
  (package
    (name "haskell-9.4-serversession-frontend-wai")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-frontend-wai/serversession-frontend-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n6id58ppf8lmjndkgji0qbkw8427zg89sgv1vgnhh4z9ydfh0zm"))))
    (properties `((upstream-name . "serversession-frontend-wai")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-serversession)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-session)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "wai-session bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>")
    (license license:expat)))

haskell-9.4-serversession-frontend-wai

(define-public haskell-9.4-serversession-frontend-yesod
  (package
    (name "haskell-9.4-serversession-frontend-yesod")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-frontend-yesod/serversession-frontend-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wq33480mv4sjbmf7rh1yzz65apy29ap8rypwhif1f2fd6byi5m9"))))
    (properties `((upstream-name . "serversession-frontend-yesod")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-serversession)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Yesod bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-yesod>")
    (license license:expat)))

haskell-9.4-serversession-frontend-yesod

(define-public haskell-9.4-servius
  (package
    (name "haskell-9.4-servius")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-cmark-gfm)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/servius#readme")
    (synopsis "Warp web server with template rendering")
    (description
     "Please see README.md at https://www.stackage.org/package/servius")
    (license license:expat)))

haskell-9.4-servius

(define-public haskell-9.4-sydtest-webdriver-screenshot
  (package
    (name "haskell-9.4-sydtest-webdriver-screenshot")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-webdriver-screenshot/sydtest-webdriver-screenshot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00w3ijgwwplgg0310qnc56c5a50i1vnzn94np4jscjv4aw849s1b"))))
    (properties `((upstream-name . "sydtest-webdriver-screenshot")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-sydtest-webdriver)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-webdriver)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://hackage.haskell.org/package/sydtest-webdriver-screenshot")
    (synopsis "A webdriver screenshot companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-webdriver-screenshot

(define-public haskell-9.4-textlocal
  (package
    (name "haskell-9.4-textlocal")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/textlocal/textlocal-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11rhrylv8pzsz35i3908d3fhdskmi4wrysxyj31hz4n9f1igym49"))))
    (properties `((upstream-name . "textlocal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/just-chow/textlocal")
    (synopsis "Haskell wrapper for textlocal SMS gateway")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-textlocal

(define-public haskell-9.4-twitter-conduit
  (package
    (name "haskell-9.4-twitter-conduit")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/twitter-conduit/twitter-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fbcbx4cyi1m4qvxc16qfn66fnv5lp3naawqf6xw6yj3lczzh6w"))))
    (properties `((upstream-name . "twitter-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-run-integrated-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-authenticate-oauth)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
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
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-twitter-types)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-twitter-types-lens)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/himura/twitter-conduit")
    (synopsis
     "Twitter API package with conduit interface and Streaming API support.")
    (description
     "This package provides bindings to Twitter's APIs (see <https://dev.twitter.com/>).

This package uses the http-conduit package for accessing the Twitter API (see <http://hackage.haskell.org/package/http-conduit>).
This package also depends on the twitter-types package (see <http://hackage.haskell.org/package/twitter-types>).

You can find basic examples in the <https://github.com/himura/twitter-conduit/tree/master/sample> directory.

This package is under development. If you find something that has not been implemented yet, please send a pull request or open an issue on GitHub.")
    (license license:bsd-3)))

haskell-9.4-twitter-conduit

(define-public haskell-9.4-wai-middleware-bearer
  (package
    (name "haskell-9.4-wai-middleware-bearer")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-bearer/wai-middleware-bearer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17vqvr9f8n4zgxhhanndkpywjmzffm06f2nbsq1wxq79qpghc44j"))))
    (properties `((upstream-name . "wai-middleware-bearer") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-hspec-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/martin-bednar/wai-middleware-bearer#readme")
    (synopsis "WAI Middleware for Bearer Token Authentication")
    (description
     "Please see the README on GitHub at <https://github.com/martin-bednar/wai-middleware-bearer#readme>")
    (license license:expat)))

haskell-9.4-wai-middleware-bearer

(define-public haskell-9.4-wai-middleware-delegate
  (package
    (name "haskell-9.4-wai-middleware-delegate")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-delegate/wai-middleware-delegate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05lrkcg1xkf0ci9nvzdvnrjmqnygqxs3yrvrjfwbml9p003cp33p"))))
    (properties `((upstream-name . "wai-middleware-delegate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-wai-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/adetokunbo/wai-middleware-delegate#readme")
    (synopsis "WAI middleware that delegates handling of requests.")
    (description
     "[WAI](http://hackage.haskell.org/package/wai) middleware that intercepts requests
that match a predicate and responds to them using alternate @@WAI@@ Applications or
proxied hosts.

Read this [short example](https://github.com/adetokunbo/wai-middleware-delegate#readme)
for an introduction to its usage.")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-delegate

(define-public haskell-9.4-wai-websockets
  (package
    (name "haskell-9.4-wai-websockets")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-wai-app-static)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-9.4-wai-websockets

(define-public haskell-9.4-webex-teams-api
  (package
    (name "haskell-9.4-webex-teams-api")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-api/webex-teams-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11qivxmp0cx3jsrpbp2zdfjhjrcd960ycbr08li3d327ff2qhdsh"))))
    (properties `((upstream-name . "webex-teams-api") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-bitset-word8)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
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
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "A Haskell bindings for Webex Teams API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-9.4-webex-teams-api

(define-public haskell-9.4-yesod-eventsource
  (package
    (name "haskell-9.4-yesod-eventsource")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-eventsource/yesod-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h8gyvlqvp6zm6kfmiwa0z7ic2377f0vi43fgcn5mlssv890z8gh"))))
    (properties `((upstream-name . "yesod-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Server-sent events support for Yesod apps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-eventsource>")
    (license license:expat)))

haskell-9.4-yesod-eventsource

(define-public haskell-9.4-yesod-gitrepo
  (package
    (name "haskell-9.4-yesod-gitrepo")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/yesod-gitrepo#readme")
    (synopsis "Host content provided by a Git repo")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>")
    (license license:expat)))

haskell-9.4-yesod-gitrepo

(define-public haskell-9.4-yesod-gitrev
  (package
    (name "haskell-9.4-yesod-gitrev")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "048g2pp2pgdhhv9g9wazwh4mjavdvrmrs2z5lks42bccsfgg00h8"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-githash)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description
     "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme")
    (license license:bsd-3)))

haskell-9.4-yesod-gitrev

(define-public haskell-9.4-yesod-newsfeed
  (package
    (name "haskell-9.4-yesod-newsfeed")
    (version "1.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7n99zsrfinal2kcmrfyj3gcxrd390az93yz3c1kxzd5w1ffb4g"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-9.4-yesod-newsfeed

(define-public haskell-9.4-yesod-persistent
  (package
    (name "haskell-9.4-yesod-persistent")
    (version "1.6.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vm0qm0yxqn6x61iir81wf6ibwnf8gkia8lw71fgpxgav154ig6"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-9.4-yesod-persistent

(define-public haskell-9.4-yesod-routes-flow
  (package
    (name "haskell-9.4-yesod-routes-flow")
    (version "3.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-routes-flow/yesod-routes-flow-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gw6a5089j0a1c0aivlznsqld1r8wc6babjcc7c7vzy7wpnc87c9"))))
    (properties `((upstream-name . "yesod-routes-flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-classy-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-system-fileio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/yesod-routes-flow")
    (synopsis "Generate Flow routes for Yesod")
    (description
     "Parse the Yesod routes data structure and generate routes that can be used with Flow.")
    (license license:expat)))

haskell-9.4-yesod-routes-flow

(define-public haskell-9.4-yesod-sitemap
  (package
    (name "haskell-9.4-yesod-sitemap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-9.4-yesod-sitemap

