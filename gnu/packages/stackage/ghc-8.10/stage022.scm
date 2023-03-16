;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage022)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.10))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.10-Allure
  (package
    (name "haskell-8.10-Allure")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p2g87rhqwm2hji32cp3swk9p0kl703nhaswv5z69wmzz2yzzqqa"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-frelease" "-fsupportnodejs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-LambdaHack)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-enummapset)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hsini)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage. You can also try the game out
in the browser at <http://allureofthestars.com/play>.

Not a single image in this game. You have to imagine everything
yourself, like with a book (a grown-up book, without pictures).
Once you learn to imagine things, though, you can keep exploring
and mastering the world and making up stories for a long time.

The game is written in Haskell using the LambdaHack roguelike
game engine <http://hackage.haskell.org/package/LambdaHack>.
Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
are high replayability and auto-balancing through procedural
content generation and persistent content modification
based on player behaviour. Contributions are welcome.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is stored in the github repo.")
    (license license:agpl3+)))

haskell-8.10-Allure

(define-public haskell-8.10-MusicBrainz
  (package
    (name "haskell-8.10-MusicBrainz")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-HTTP)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hMusicBrainz")
    (synopsis "interface to MusicBrainz XML2 and JSON web services")
    (description "interface to MusicBrainz XML2 and JSON web services")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-MusicBrainz

(define-public haskell-8.10-amazonka-core
  (package
    (name "haskell-8.10-amazonka-core")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-core/amazonka-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hx250dja1l4n4y5115w0qngzlqj8f6p861sdaykh0yjm4nzb621"))))
    (properties `((upstream-name . "amazonka-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("2" "15mwn2cv4f99rb53wzk7hplb6ncpcl7crsvj8dx71ymm60cf2kxr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Core data types and functionality for Amazonka libraries.")
    (description
     "Core data types, functionality and serialisation primitives for
Amazonka related Amazon Web Services SDKs.

The external interface of this library is stable with respect to the
downstream Amazonka libraries, only, and as such is not suitable
for use in non-Amazonka projects.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-core

(define-public haskell-8.10-api-maker
  (package
    (name "haskell-8.10-api-maker")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-maker/api-maker-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02rkmyq1zrjklklfqpj1413j3fb0c61y28pwj06z24i71d5nmy6r"))))
    (properties `((upstream-name . "api-maker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/api-maker#readme")
    (synopsis "Package to make APIs")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/api-maker#readme>")
    (license license:bsd-3)))

haskell-8.10-api-maker

(define-public haskell-8.10-authenticate
  (package
    (name "haskell-8.10-authenticate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-html-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis "Authentication methods for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate>.")
    (license license:expat)))

haskell-8.10-authenticate

(define-public haskell-8.10-bugsnag-haskell
  (package
    (name "haskell-8.10-bugsnag-haskell")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-ua-parser)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Bugsnag error reporter for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-bugsnag-haskell

(define-public haskell-8.10-bugzilla-redhat
  (package
    (name "haskell-8.10-bugzilla-redhat")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugzilla-redhat/bugzilla-redhat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nslky0rc868hyx11s0bvlz6r4mvagknhwmnlqvgcnlfbg6xni4d"))))
    (properties `((upstream-name . "bugzilla-redhat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-builddemo")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iso8601-time)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/hsbugzilla")
    (synopsis "A Haskell interface to the Bugzilla native REST API")
    (description "This package is designed to provide an easy-to-use,
type-safe interface to querying Bugzilla from Haskell.

This is a friendly fork of Seth Fowler's library,
with minor updates and API tweaks needed for
bugzilla.redhat.com.")
    (license license:bsd-3)))

haskell-8.10-bugzilla-redhat

(define-public haskell-8.10-cabal-rpm
  (package
    (name "haskell-8.10-cabal-rpm")
    (version "2.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-rpm/cabal-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "028kvvdm8dqjmk16ag8p1mb4d3nfyz1i6x8ijfcr45hrb93hdd77"))))
    (properties `((upstream-name . "cabal-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-f-curl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-cabal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-simple-cmd)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
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

haskell-8.10-cabal-rpm

(define-public haskell-8.10-cabal2nix
  (package
    (name "haskell-8.10-cabal2nix")
    (version "2.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y91agkhgpzzaf9l7l1h7x516iryj8z2vk1in1h7pyjlxaiak6lm"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05lb28s4l4c1s6jv1zaqpm9mwx5r4gm113akzq9xr1w5447vw2c3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hackage-db)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hopenssl)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-hpack)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-language-nix)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-monad-par)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the latest
version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-8.10-cabal2nix

(define-public haskell-8.10-captcha-core
  (package
    (name "haskell-8.10-captcha-core")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/captcha-core/captcha-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qalmxbmpyr28v9683q7yqk8xky34ksgqxr6qgn7v8y1c0a4jlqd"))))
    (properties `((upstream-name . "captcha-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vzk01va3h5vmshqicb7ngqky6759lzvfcx740qifi38rnvwmmdq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-data-default-extra)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-o-clock)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/qwbarch/captcha-haskell#readme")
    (synopsis
     "A package for integrating a variety of captcha solving services.")
    (description
     "A package for integrating a variety of captcha solving services.

Feature list:

* Makes use of the [lens](https://hackage.haskell.org/package/lens) package
* Mtl-style typeclass, allowing you to use your own monad transformer stack
* No exceptions are thrown. Errors are shown explicitly through its type signature
* Minimal test suite provided for each captcha type
* Captcha services are separated into different packages. Use what you need!")
    (license license:expat)))

haskell-8.10-captcha-core

(define-public haskell-8.10-casa-client
  (package
    (name "haskell-8.10-casa-client")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-casa-types)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/casa-client")
    (synopsis "Client for Casa")
    (description "Client for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-8.10-casa-client

(define-public haskell-8.10-cayley-client
  (package
    (name "haskell-8.10-cayley-client")
    (version "0.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cayley-client/cayley-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mc4r45vlwbrcjz33akqs5kh27wc97b8dg1byanvyjyvsvabg5bb"))))
    (properties `((upstream-name . "cayley-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/MichelBoucey/cayley-client")
    (synopsis "A Haskell client for the Cayley graph database")
    (description
     "cayley-client implements the RESTful API of the Cayley graph database.")
    (license license:bsd-3)))

haskell-8.10-cayley-client

(define-public haskell-8.10-deque
  (package
    (name "haskell-8.10-deque")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/deque/deque-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x0rjdqgf4kwgpyisx618waz6r9gki3ivav9m4biysyc04hdhinn"))))
    (properties `((upstream-name . "deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-strict-list)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-8.10-deque

(define-public haskell-8.10-dhall-bash
  (package
    (name "haskell-8.10-dhall-bash")
    (version "1.0.37")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gm6zamh8kgrc2d00cjf2ijb49ic3z6rlk0ngmig8hckmsy63w1d"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-optparse-generic)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-bash")
    (synopsis "Compile Dhall to Bash")
    (description
     "Use this package if you want to compile Dhall expressions to Bash.
You can use this package as a library or an executable:

* See the \"Dhall.Bash\" module if you want to use this package as a library

* Use the @@dhall-to-bash@@ if you want an executable

The \"Dhall.Bash\" module also contains instructions for how to use this
package")
    (license license:bsd-3)))

haskell-8.10-dhall-bash

(define-public haskell-8.10-dhall-json
  (package
    (name "haskell-8.10-dhall-json")
    (version "1.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "163600cr04a5c9gjqg0846wwjp4wl61yhfg80zvsadkaq5zfzlll"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-aeson-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lens-family-core)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-json")
    (synopsis "Convert between Dhall and JSON or YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and JSON
or YAML. You can use this package as a library or an executable:

* See the \"Dhall.JSON\" or \"Dhall.JSONToDhall\" modules if you want to use
this package as a library

* Use the @@dhall-to-json@@, @@dhall-to-yaml@@, or @@json-to-dhall@@ programs from
this package if you want an executable

The \"Dhall.JSON\" and \"Dhall.JSONToDhall\" modules also contains instructions
for how to use this package")
    (license license:bsd-3)))

haskell-8.10-dhall-json

(define-public haskell-8.10-elm2nix
  (package
    (name "haskell-8.10-elm2nix")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elm2nix/elm2nix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lgqbmd5419apak7hy22p0fpjzcki74snpgqsq2qmhpvyi5qbf3r"))))
    (properties `((upstream-name . "elm2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-here)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/domenkozar/elm2nix#readme")
    (synopsis "Turn your Elm project into buildable Nix project")
    (description
     "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>")
    (license license:bsd-3)))

haskell-8.10-elm2nix

(define-public haskell-8.10-fb
  (package
    (name "haskell-8.10-fb")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fb/fb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0j2rckrv1aksfp2wyiyffqg40jl927vs97fk2lyzkscz673jd9s9"))))
    (properties `((upstream-name . "fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
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

haskell-8.10-fb

(define-public haskell-8.10-genvalidity-sydtest-aeson
  (package
    (name "haskell-8.10-genvalidity-sydtest-aeson")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-aeson/genvalidity-sydtest-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lpiinb06hl8y91nxp4n4id2vyxs3yww5wb5jczpr9fk1fbb6qbz"))))
    (properties `((upstream-name . "genvalidity-sydtest-aeson")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances in sydtest")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-sydtest-aeson

(define-public haskell-8.10-genvalidity-sydtest-hashable
  (package
    (name "haskell-8.10-genvalidity-sydtest-hashable")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-hashable/genvalidity-sydtest-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ii3s69alncyrjz410d1cvx5rgdff1cyc9ddin0xrsrz23sxi06m"))))
    (properties `((upstream-name . "genvalidity-sydtest-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances for sydtest")
    (description "Standard spec's for Hashable instances for sydtest")
    (license license:expat)))

haskell-8.10-genvalidity-sydtest-hashable

(define-public haskell-8.10-genvalidity-sydtest-lens
  (package
    (name "haskell-8.10-genvalidity-sydtest-lens")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-lens/genvalidity-sydtest-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f8wb0pa703r6hgdbhi343rfjcf2q78qfn6x3dmc94d3vd17wyvj"))))
    (properties `((upstream-name . "genvalidity-sydtest-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens for sydtest")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-8.10-genvalidity-sydtest-lens

(define-public haskell-8.10-genvalidity-sydtest-persistent
  (package
    (name "haskell-8.10-genvalidity-sydtest-persistent")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-persistent/genvalidity-sydtest-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07y7478lcmpb44bwj7pppv4pfb44wh9hynwawx1czkjf6jnggwcm"))))
    (properties `((upstream-name . "genvalidity-sydtest-persistent")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances for sydtest")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-sydtest-persistent

(define-public haskell-8.10-gi-atk
  (package
    (name "haskell-8.10-gi-atk")
    (version "2.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05zwlcqx334is27h1v9x89a05srb6zp7mx0viccmij1cqhyfvsmf"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-atk

(define-public haskell-8.10-gi-dbusmenu
  (package
    (name "haskell-8.10-gi-dbusmenu")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenu/gi-dbusmenu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n2bxi7cwj32ncalqwid3igk0ssh4pc81z132255216apryszq13"))))
    (properties `((upstream-name . "gi-dbusmenu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Dbusmenu bindings")
    (description "Bindings for libdbusmenu, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-dbusmenu

(define-public haskell-8.10-gi-gio
  (package
    (name "haskell-8.10-gi-gio")
    (version "2.0.28")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bb6ciikk9mf64azbcgnybcjidxwdpjzanarf5ganbb4bb3l5d2h"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-gio

(define-public haskell-8.10-gi-graphene
  (package
    (name "haskell-8.10-gi-graphene")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-graphene/gi-graphene-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06sh52338kqqbj6251xdz4yn0601nmxzl4z95w6a70dxs66js03c"))))
    (properties `((upstream-name . "gi-graphene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) graphene)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Graphene bindings")
    (description "Bindings for Graphene, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-graphene

(define-public haskell-8.10-gi-harfbuzz
  (package
    (name "haskell-8.10-gi-harfbuzz")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-harfbuzz/gi-harfbuzz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h3dgz914n55x7rhwayxscfkhhhj7qgw5a7fh0j2fn18c201klwm"))))
    (properties `((upstream-name . "gi-harfbuzz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) harfbuzz-5)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "HarfBuzz bindings")
    (description "Bindings for HarfBuzz, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-harfbuzz

(define-public haskell-8.10-gitlab-haskell
  (package
    (name "haskell-8.10-gitlab-haskell")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gitlab-haskell/gitlab-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13dlbl2hlvmplxjypg14llpbxf0a9x2f4lk0kkn46f63mn0fy83x"))))
    (properties `((upstream-name . "gitlab-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://gitlab.com/robstewart57/gitlab-haskell")
    (synopsis "A Haskell library for the GitLab web API")
    (description
     "This Haskell library queries and updates the database of a GitLab instance using the GitLab web API: <https://docs.gitlab.com/ee/api/>

It also features an API for writing Gitlab file hook applications

Run all GitLab actions with `runGitLab`:

> runGitLab ::
>  => GitLabServerConfig -- ^ the GitLab server details
>  -> GitLab a           -- ^ the GitLab action
>  -> IO a

For example:

> myProjects <- runGitLab
>      (defaultGitLabServer
>          @{ url = \"https://gitlab.example.com\"
>          , token=\"my_token\"@} )
>      (searchUser \"joe\" >>= userProjects . fromJust)

Which uses the functions:

> searchUser   :: Text -> GitLab (Maybe User)
> userProjects :: User -> GitLab (Maybe [Project])
> projectCommits :: Project -> GitLab [Commit]

This library can also be used to develop rule based GitLab file hooks that react in real time to GitLab events with:

> receive :: [Rule] -> GitLab ()

> class (FromJSON a) => SystemHook a where
>   match   :: String -> (a -> GitLab ()) -> Rule
>   matchIf :: String -> (a -> GitLab Bool) -> (a -> GitLab ()) -> Rule

For more details about the file hooks support: <https://www.macs.hw.ac.uk/~rs46/posts/2020-06-06-gitlab-system-hooks.html>

Unsurprisingly, this library is maintained on GitLab: <https://gitlab.com/robstewart57/gitlab-haskell>")
    (license license:bsd-3)))

haskell-8.10-gitlab-haskell

(define-public haskell-8.10-google-isbn
  (package
    (name "haskell-8.10-google-isbn")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/google-isbn#readme")
    (synopsis "")
    (description
     "Basic utility to search an ISBN using the Google Books webservice")
    (license license:bsd-3)))

haskell-8.10-google-isbn

(define-public haskell-8.10-gothic
  (package
    (name "haskell-8.10-gothic")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gothic/gothic-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gicw2g86xz68a8qvj0p2nxw42rwibr0qqi53nily5yvlc40v4qd"))))
    (properties `((upstream-name . "gothic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/MichelBoucey/gothic")
    (synopsis "A Haskell Vault KVv2 secret engine client")
    (description "A Haskell HashiCorp Vault KVv2 secret engine client library")
    (license license:bsd-3)))

haskell-8.10-gothic

(define-public haskell-8.10-headroom
  (package
    (name "haskell-8.10-headroom")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/headroom/headroom-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17y1v6kfh1zbyqww5a4v54xqn06ix4ba8rr5dk8nfh5qsgf211d7"))))
    (properties `((upstream-name . "headroom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-generic-data)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-modern-uri)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-mustache)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pcre-light)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-vcs-ignore)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/vaclavsvejcar/headroom")
    (synopsis "License Header Manager")
    (description
     "Would you like to have nice, up-to-date license/copyright headers in your source code files but hate to manage them by hand? Then Headroom is the right tool for you! Now you can define your license header as Mustache template, put all the variables (such as author's name, year, etc.) into the YAML config file and Headroom will take care to add such license headers to all your source code files.")
    (license license:bsd-3)))

haskell-8.10-headroom

(define-public haskell-8.10-hledger-stockquotes
  (package
    (name "haskell-8.10-hledger-stockquotes")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-stockquotes/hledger-stockquotes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "064q6qz6rrahk9ri5hr1y6n17nmd4l124xb3l8q5rvm81x3hzp3x"))))
    (properties `((upstream-name . "hledger-stockquotes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1dbcvypi8kcrcy38wbvhaadhs2fwjw1kh3xzzq07ss30a7gg3k8y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/hledger-stockquotes#readme")
    (synopsis "Generate HLedger Price Directives From Daily Stock Quotes.")
    (description
     "@@hledger-stockquotes@@ is an addon for <https://hledger.org/ hledger> that
reads your journal file, pulls the historical stock prices for commodities,
and writes out a new journal file containing the respective price
directives.

The <https://www.alphavantage.co/ AlphaVantage API> is used to fetch the
stock quotes and you will need a
<https://www.alphavantage.co/support/#api-key free API key> to use this
program.

You can install @@hledger-stockquotes@@ with Stack: @@stack install --resolver
nightly hledger-stockquotes@@. Then run @@hledger-stockquotes --help@@ to see
the usage instructions & all available options.")
    (license license:bsd-3)))

haskell-8.10-hledger-stockquotes

(define-public haskell-8.10-hoauth2
  (package
    (name "haskell-8.10-hoauth2")
    (version "1.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoauth2/hoauth2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yw9fnpac1ryk0pn0ikf4g1p687mvschrnpj7szlcj6am78ldqzx"))))
    (properties `((upstream-name . "hoauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-mustache)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-scotty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-uri-bytestring-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wai-middleware-static)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freizl/hoauth2")
    (synopsis "Haskell OAuth2 authentication client")
    (description
     "Haskell OAuth2 authentication client. Tested with the following services:

* AzureAD: <https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code>

* Google: <https://developers.google.com/accounts/docs/OAuth2WebServer>

* Github: <http://developer.github.com/v3/oauth/>

* Facebook: <http://developers.facebook.com/docs/facebook-login/>

* Fitbit: <http://dev.fitbit.com/docs/oauth2/>

* StackExchange: <https://api.stackexchange.com/docs/authentication>

* DropBox: <https://www.dropbox.com/developers/reference/oauth-guide>

* Weibo: <http://open.weibo.com/wiki/Oauth2>

* Douban: <http://developers.douban.com/wiki/?title=oauth2>")
    (license license:bsd-3)))

haskell-8.10-hoauth2

(define-public haskell-8.10-hoogle
  (package
    (name "haskell-8.10-hoogle")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-foundation)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-flot)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-jquery)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-process-extras)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-storable-tuple)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-wai-logger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
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

haskell-8.10-hoogle

(define-public haskell-8.10-hopenpgp-tools
  (package
    (name "haskell-8.10-hopenpgp-tools")
    (version "0.23.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenpgp-tools/hopenpgp-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hjh6avcd24czd5dv0kr78hkv8k48i3lgcxiahnfjaqwirmg5wix"))))
    (properties `((upstream-name . "hopenpgp-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-graphviz)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-hOpenPGP)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-prettyprinter-convert-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP-tools")
    (synopsis "hOpenPGP-based command-line tools")
    (description
     "command-line tools for performing some OpenPGP-related operations")
    (license license:agpl3+)))

haskell-8.10-hopenpgp-tools

(define-public haskell-8.10-http-directory
  (package
    (name "haskell-8.10-http-directory")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-directory/http-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hvrajwap7ilqi6ika0vd3hf83k1p3wr3ck6bvz8kayim8ih7apz"))))
    (properties `((upstream-name . "http-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-html-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-http-date)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/http-directory")
    (synopsis "http directory listing library")
    (description "Library for listing the files (href's) in an http directory.
It can also check the size, existence, modtime of files,
and for url redirects.")
    (license license:expat)))

haskell-8.10-http-directory

(define-public haskell-8.10-http-download
  (package
    (name "haskell-8.10-http-download")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-rio-prettyprint)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/http-download#readme")
    (synopsis "Verified downloads with retries")
    (description
     "Higher level HTTP download APIs include verification of content and retries")
    (license license:bsd-3)))

haskell-8.10-http-download

(define-public haskell-8.10-http-query
  (package
    (name "haskell-8.10-http-query")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/http-query")
    (synopsis "Simple http queries")
    (description "Simple web API queries returning JSON.")
    (license license:bsd-3)))

haskell-8.10-http-query

(define-public haskell-8.10-http-reverse-proxy
  (package
    (name "haskell-8.10-http-reverse-proxy")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-reverse-proxy/http-reverse-proxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a6i5njf85b2lhg8m83njagcf09wih5q2irnyb2890s724qr277v"))))
    (properties `((upstream-name . "http-reverse-proxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-wai-logger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/http-reverse-proxy")
    (synopsis
     "Reverse proxy HTTP requests, either over raw sockets or with WAI")
    (description
     "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.")
    (license license:bsd-3)))

haskell-8.10-http-reverse-proxy

(define-public haskell-8.10-irc-client
  (package
    (name "haskell-8.10-irc-client")
    (version "1.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-client/irc-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hhaf7xhy3q48gkp2j01jjiiz0ww9mwwjh8brbqs8phlal03ks70"))))
    (properties `((upstream-name . "irc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-irc-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-chans)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/barrucadu/irc-client")
    (synopsis "An IRC client library.")
    (description
     "An IRC client library built atop
<http://hackage.haskell.org/package/irc-conduit irc-conduit>. Why
another IRC client library, you cry? I didn't really find one that
did what I wanted (specifically, handle connecting to servers and
calling event handlers, possibly with TLS), but which didn't
implement almost a full IRC bot for you. That takes out all the fun!

<http://hackage.haskell.org/package/irc-conduit irc-conduit> and
<http://hackage.haskell.org/package/irc-ctcp irc-ctcp> are my
solution to the first part of that, this is my solution to the
latter. It's a simple IRC client library that does the basics for
you, but isn't an all-singing, all-dancing, fully-featured IRC
/application/. It is a merely a simple library.")
    (license license:expat)))

haskell-8.10-irc-client

(define-public haskell-8.10-jsonifier
  (package
    (name "haskell-8.10-jsonifier")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonifier/jsonifier-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09w92adnjskx7cxyki415nqxdzqfz78rcqisk1g862r92907ibwf"))))
    (properties `((upstream-name . "jsonifier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-numeric-limits)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-ptr-poker)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/jsonifier")
    (synopsis "Fast and simple JSON encoding toolkit")
    (description
     "Minimalistic library for encoding JSON directly to strict bytestring,
which is up to 3x faster than \\\"aeson\\\".

For introduction, benchmark results and demo please skip to Readme.")
    (license license:expat)))

haskell-8.10-jsonifier

(define-public haskell-8.10-kawhi
  (package
    (name "haskell-8.10-kawhi")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kawhi/kawhi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kx4lbyfh7brfg6vr05xcwa233lzld0pm3isvc4pr8fs7mx3h893"))))
    (properties `((upstream-name . "kawhi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/thunky-monk/kawhi")
    (synopsis "stats.NBA.com library")
    (description "Functions and types for interacting with stats.NBA.com")
    (license license:expat)))

haskell-8.10-kawhi

(define-public haskell-8.10-krank
  (package
    (name "haskell-8.10-krank")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/krank/krank-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y78njv85s7mcza541gdax5l9651vm78k78ay42phcfvniv82hgx"))))
    (properties `((upstream-name . "krank") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-PyF)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-pretty-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/guibou/krank")
    (synopsis "Krank checks issue tracker link status in your source code")
    (description
     "Krank checks issue tracker link status in your source code. When you implement a workaround because of an upstream issue, you often put a link in comment in your code. Krank will tell you when the issue associated with your workaround is closed, meaning that you may get ride of your workaround.")
    (license license:bsd-3)))

haskell-8.10-krank

(define-public haskell-8.10-line
  (package
    (name "haskell-8.10-line")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hspec-wai)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-scotty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
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

haskell-8.10-line

(define-public haskell-8.10-mime-mail-ses
  (package
    (name "haskell-8.10-mime-mail-ses")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cryptohash)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-mime-mail)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Send mime-mail messages via Amazon SES")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail-ses>.")
    (license license:expat)))

haskell-8.10-mime-mail-ses

(define-public haskell-8.10-minio-hs
  (package
    (name "haskell-8.10-minio-hs")
    (version "1.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minio-hs/minio-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nbrvkj8dn9m2i60iqk2wmf7fnj8bv4n65r4wxpimwb06yrvrfj2"))))
    (properties `((upstream-name . "minio-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-live-test" "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-digest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-ini)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-protolude)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/minio/minio-hs#readme")
    (synopsis "A MinIO Haskell Library for Amazon S3 compatible cloud
storage.")
    (description "The MinIO Haskell client library provides simple APIs to
access MinIO, Amazon S3 and other API compatible cloud
storage servers.")
    (license license:asl2.0)))

haskell-8.10-minio-hs

(define-public haskell-8.10-net-mqtt-lens
  (package
    (name "haskell-8.10-net-mqtt-lens")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/net-mqtt-lens/net-mqtt-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rlib45yqlcij12pij8y690n3ajma35fyj8292b1vggk07dscycq"))))
    (properties `((upstream-name . "net-mqtt-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-net-mqtt)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dustin/net-mqtt-lens#readme")
    (synopsis "Optics for net-mqtt")
    (description
     "Please see the README on GitHub at <https://github.com/dustin/net-mqtt-lens#readme>")
    (license license:bsd-3)))

haskell-8.10-net-mqtt-lens

(define-public haskell-8.10-nri-prelude
  (package
    (name "haskell-8.10-nri-prelude")
    (version "0.6.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nri-prelude/nri-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i1y16pc8rph7ahj53jxrhr18qnw114zfb9z0fnd4k2cs0sryyqz"))))
    (properties `((upstream-name . "nri-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-junit-xml)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pretty-diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-safe-coloured-text)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-safe-coloured-text-terminfo)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-prelude#readme")
    (synopsis "A Prelude inspired by the Elm programming language")
    (description
     "Please see the README at <https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-prelude#readme>.")
    (license license:bsd-3)))

haskell-8.10-nri-prelude

(define-public haskell-8.10-nuxeo
  (package
    (name "haskell-8.10-nuxeo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-url)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/nuxeo#readme")
    (synopsis "")
    (description "Nuxeo tools")
    (license license:bsd-3)))

haskell-8.10-nuxeo

(define-public haskell-8.10-oeis2
  (package
    (name "haskell-8.10-oeis2")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis2/oeis2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y1i2v59nhijh50akkjk9b7cnmrx33lgmk4p13fvwimkm5g9avs2"))))
    (properties `((upstream-name . "oeis2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/23prime/oeis2#readme")
    (synopsis "Interface for Online Encyclopedia of Integer Sequences (OEIS).")
    (description
     "Release notes are here https://github.com/23prime/oeis2/releases")
    (license license:bsd-3)))

haskell-8.10-oeis2

(define-public haskell-8.10-pandoc-dhall-decoder
  (package
    (name "haskell-8.10-pandoc-dhall-decoder")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-dhall-decoder/pandoc-dhall-decoder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "032fx8fy134hysg10y5c57c7jkvq8lkc0q2r8ylc54qbfmvqd820"))))
    (properties `((upstream-name . "pandoc-dhall-decoder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-dhall-decoder")
    (synopsis "Decodes pandoc to dhall.")
    (description "")
    (license license:bsd-3)))

haskell-8.10-pandoc-dhall-decoder

(define-public haskell-8.10-pandoc-plot
  (package
    (name "haskell-8.10-pandoc-plot")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-plot/pandoc-plot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r7xymgkk2c3fmdfk4vljdwbl2k3jrk40aa7f7y277fp5nxnqgp8"))))
    (properties `((upstream-name . "pandoc-plot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pandoc)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LaurentRDC/pandoc-plot#readme")
    (synopsis
     "A Pandoc filter to include figures generated from code blocks using your plotting toolkit of choice.")
    (description
     "A Pandoc filter to include figures generated from code blocks.
Keep the document and code in the same location. Output is
captured and included as a figure.")
    (license license:gpl2+)))

haskell-8.10-pandoc-plot

(define-public haskell-8.10-pandoc-throw
  (package
    (name "haskell-8.10-pandoc-throw")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-throw/pandoc-throw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i737mv2sgm65c53ggrxnscga92fya5khb5nhgbg1nnqgy2sjkm8"))))
    (properties `((upstream-name . "pandoc-throw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-throw")
    (synopsis "MonadThrow behaviour for Pandoc.")
    (description "Adds MonadThrow runners for PandocPure and PandocIO.")
    (license license:expat)))

haskell-8.10-pandoc-throw

(define-public haskell-8.10-plaid
  (package
    (name "haskell-8.10-plaid")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-casing)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hspec-wai)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pretty-simple)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
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

haskell-8.10-plaid

(define-public haskell-8.10-primitive-extras
  (package
    (name "haskell-8.10-primitive-extras")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-extras/primitive-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ddnn94qqkx021marpi2j03sil15422scq0df6dmlc6q0qyyivyc"))))
    (properties `((upstream-name . "primitive-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-deferred-folds)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-focus)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-list-t)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-primitive-unlifted)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/primitive-extras")
    (synopsis "Extras for the \"primitive\" library")
    (description "")
    (license license:expat)))

haskell-8.10-primitive-extras

(define-public haskell-8.10-prometheus-wai-middleware
  (package
    (name "haskell-8.10-prometheus-wai-middleware")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-wai-middleware/prometheus-wai-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srp4j7841wfc29x5x8wkykjdqzdln26s219zrq15f5vir14lpar"))))
    (properties `((upstream-name . "prometheus-wai-middleware")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-prometheus)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/prometheus-wai-middleware")
    (synopsis "Instrument a wai application with various metrics")
    (description
     "See https://github.com/bitnomial/prometheus-wai-middleware/tree/master/readme.md")
    (license license:bsd-3)))

haskell-8.10-prometheus-wai-middleware

(define-public haskell-8.10-ratel-wai
  (package
    (name "haskell-8.10-ratel-wai")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0afrsnj1sjcr99sw7cpv2l4pn2is9y6qck4lq1vc33h8kk4hr25y"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-ratel)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel-wai")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-8.10-ratel-wai

(define-public haskell-8.10-req-conduit
  (package
    (name "haskell-8.10-req-conduit")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/req-conduit/req-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zyy9j6iiz8z2jdx25vp77arfbmrck7bjndm3p4s9l9399c5bm62"))))
    (properties `((upstream-name . "req-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0gbm1c95ml7binmazn15737a8ls5p21f9d0d6pzc3fla0rz91ic1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-8.10-req-conduit

(define-public haskell-8.10-sandwich-slack
  (package
    (name "haskell-8.10-sandwich-slack")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-slack/sandwich-slack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ck4amyxcf2qpgx3qpbg2f137bi6px83k72bspi2kfn0nnx8gja9"))))
    (properties `((upstream-name . "sandwich-slack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-sandwich)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Slack")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-slack documentation>.")
    (license license:bsd-3)))

haskell-8.10-sandwich-slack

(define-public haskell-8.10-sandwich-webdriver
  (package
    (name "haskell-8.10-sandwich-webdriver")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich-webdriver/sandwich-webdriver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x8f9jvfcqwhjly9gnqsb9lv9b8dvyj4rd21x9alsqk44jlxhzkf"))))
    (properties `((upstream-name . "sandwich-webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-regex-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-sandwich)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-webdriver)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Sandwich integration with Selenium WebDriver")
    (description
     "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-webdriver documentation>.")
    (license license:bsd-3)))

haskell-8.10-sandwich-webdriver

(define-public haskell-8.10-sendgrid-v3
  (package
    (name "haskell-8.10-sendgrid-v3")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendgrid-v3/sendgrid-v3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b1m2r0zq3f3ggy9nds42rf0w25p08mkcs9crvckmvqjhmwik1cm"))))
    (properties `((upstream-name . "sendgrid-v3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/marcelbuesing/sendgrid-v3")
    (synopsis "Sendgrid v3 API library")
    (description "SendGrid v3 Mail API client")
    (license license:expat)))

haskell-8.10-sendgrid-v3

(define-public haskell-8.10-servant-auth-server
  (package
    (name "haskell-8.10-servant-auth-server")
    (version "0.4.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-server/servant-auth-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m145xxqg1xy7i1br9yfh3avwkb30zh808nr658ljl7j2imlknj2"))))
    (properties `((upstream-name . "servant-auth-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1qcgm2pqi5qjqk27632h69j8ishls6cby8gghvww73wi63fqii9n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-jose)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monad-time)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-servant-auth)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskell-servant/servant/servant-auth#readme")
    (synopsis "servant-server/servant-auth compatibility")
    (description
     "This package provides the required instances for using the @@Auth@@ combinator
in your 'servant' server.

Both cookie- and token- (REST API) based authentication is provided.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.10-servant-auth-server

(define-public haskell-8.10-servant-auth-wordpress
  (package
    (name "haskell-8.10-servant-auth-wordpress")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-wordpress/servant-auth-wordpress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j4n5anlw3a2cgclmyblg01dcls91hzlmxgc2jkcdpwd49i0pv5n"))))
    (properties `((upstream-name . "servant-auth-wordpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d3sy1i3jcknfgca13a9ajjr65rpam2rahw0634rnmx0wdd30s0w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wordpress-auth)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis "Authenticate Routes Using Wordpress Cookies")
    (description
     "This package provides a Servant AuthHandler that validates Wordpress's @@LOGGED_IN@@ authentication Cookie & the @@wp_rest@@ Nonce, returning either an Authorized user with data or an Anonymous user, or calling an error handler.

This allows you to access the currently logged in User when making AJAX requests from a Wordpress site.

Check out the @@wordpress-auth@@ package for lower-level Wordpress Cookie & Nonce manipulation.")
    (license license:bsd-3)))

haskell-8.10-servant-auth-wordpress

(define-public haskell-8.10-servant-conduit
  (package
    (name "haskell-8.10-servant-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-8.10-servant-conduit

(define-public haskell-8.10-servant-errors
  (package
    (name "haskell-8.10-servant-errors")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-errors/servant-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qap8wbchpl48aigwqgxrgb6v3d6h80fpxq319c399pwrrkzyh9v"))))
    (properties `((upstream-name . "servant-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/epicallan/servant-errors")
    (synopsis "Servant Errors wai-middlware")
    (description
     "A Wai middleware that uniformly structures errors with in a servant application. The library assumes all HTTP responses with status code greater than 200 and without an HTTP content type are error responses. This assumption is derived from servant server error handling implementation.")
    (license license:expat)))

haskell-8.10-servant-errors

(define-public haskell-8.10-servant-exceptions-server
  (package
    (name "haskell-8.10-servant-exceptions-server")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
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

haskell-8.10-servant-exceptions-server

(define-public haskell-8.10-servant-machines
  (package
    (name "haskell-8.10-servant-machines")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-machines)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-8.10-servant-machines

(define-public haskell-8.10-servant-multipart
  (package
    (name "haskell-8.10-servant-multipart")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart/servant-multipart-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p55kb3zhq25ncp7wimhggssn68abfgsnlldk13rk1iajaj6y8y5"))))
    (properties `((upstream-name . "servant-multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0z4n3a1cdb082nwh3ig68wjk617cvwpq0n9ivsab55nvsr2wsm8q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-docs)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-foreign)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-multipart-api)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-tasty-wai)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package adds server-side support of file upload to the servant ecosystem.")
    (license license:bsd-3)))

haskell-8.10-servant-multipart

(define-public haskell-8.10-servant-pipes
  (package
    (name "haskell-8.10-servant-pipes")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for pipes")
    (description
     "Servant Stream support for pipes.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.")
    (license license:bsd-3)))

haskell-8.10-servant-pipes

(define-public haskell-8.10-servant-swagger-ui-core
  (package
    (name "haskell-8.10-servant-swagger-ui-core")
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
       ("5" "1v80wydj605b1la1pa5b4l6c3ba86x2dlpnravvhmx32mkkxk7v2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-blaze)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-8.10-servant-swagger-ui-core

(define-public haskell-8.10-serversession-frontend-wai
  (package
    (name "haskell-8.10-serversession-frontend-wai")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-frontend-wai/serversession-frontend-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rxifhjirhmhk1x14m6lvpv6dl32g179i4i3xi3dq59r7l716j0b"))))
    (properties `((upstream-name . "serversession-frontend-wai")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-serversession)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-wai-session)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "wai-session bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>")
    (license license:expat)))

haskell-8.10-serversession-frontend-wai

(define-public haskell-8.10-shake-plus-extended
  (package
    (name "haskell-8.10-shake-plus-extended")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-plus-extended/shake-plus-extended-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gicl8l3biw4xnhlp3sxp19a5s3fry766d7mq7j5q9fzidq31rb"))))
    (properties `((upstream-name . "shake-plus-extended") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-binary-instances)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-ixset-typed-binary-instance)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-ixset-typed-hashable-instance)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-binary-instance)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-shake)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-shake-plus)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-within)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/shake-plus-extended")
    (synopsis "Experimental extensions to shake-plus")
    (description
     "Experimental extensions to shake-plus - `within`-style file rules, HashMap and IxSet batch loaders.")
    (license license:expat)))

haskell-8.10-shake-plus-extended

(define-public haskell-8.10-slack-api
  (package
    (name "haskell-8.10-slack-api")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-api/slack-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dmwq9sywilqp524j503icvxrmkd646f3fg02h304ymnpqydwp4v"))))
    (properties `((upstream-name . "slack-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/slack-api")
    (synopsis "Bindings to the Slack RTM API.")
    (description
     "This library provides bindings to the <https://api.slack.com/rtm Slack Real Time Messaging API>.
Users should find it easy to program their own Slack bots using the functionality found in `Web.Slack`.
The bindings are very nearly complete. Library authors
looking to build bindings to the <https://api.slack.com/web Slack Web API> may
find the `FromJSON` instances located in `Web.Slack.Types`
useful.
Please note that the interface provided by this package is not yet stable. There are a number of unresolved
internal inconsistencies which have yet to be resolved by Slack HQ.")
    (license license:expat)))

haskell-8.10-slack-api

(define-public haskell-8.10-slack-progressbar
  (package
    (name "haskell-8.10-slack-progressbar")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-progressbar/slack-progressbar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12iy8d0mvk0gcs65pb797qm9kx7d9wpa5gdkg4mvb4r13vqb5x9d"))))
    (properties `((upstream-name . "slack-progressbar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/slack-progressbar#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/codedownio/slack-progressbar#readme>")
    (license license:expat)))

haskell-8.10-slack-progressbar

(define-public haskell-8.10-slick
  (package
    (name "haskell-8.10-slick")
    (version "1.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slick/slick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q6q496cvrsc4gnksihib0dr80cjg0n9vy69h2ani2ax0g75fzqd"))))
    (properties `((upstream-name . "slick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-mustache)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pandoc)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-shake)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ChrisPenner/slick#readme")
    (synopsis
     "A quick & easy static site builder built with shake and pandoc.")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/slick#readme>")
    (license license:bsd-3)))

haskell-8.10-slick

(define-public haskell-8.10-slynx
  (package
    (name "haskell-8.10-slynx")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slynx/slynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qj68fl98j0l83iny0wcdjmc80qnjc0dzkc5n1q3zl10wl10c8mc"))))
    (properties `((upstream-name . "slynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-elynx-markov)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-elynx-seq)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-elynx-tools)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-elynx-tree)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-slynx

(define-public haskell-8.10-stripe-haskell
  (package
    (name "haskell-8.10-stripe-haskell")
    (version "2.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-haskell/stripe-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02ydf9i632r2clhvf1f9v0yx7vmpmh37mch1jshazrw3my6sq1vl"))))
    (properties `((upstream-name . "stripe-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-http-streams")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-stripe-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-stripe-http-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dmjio/stripe")
    (synopsis "Stripe API for Haskell")
    (description "For usage information please consult README.md")
    (license license:expat)))

haskell-8.10-stripe-haskell

(define-public haskell-8.10-sydtest-servant
  (package
    (name "haskell-8.10-sydtest-servant")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-servant/sydtest-servant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mn7fys01qakapnrcrlpji1kwc3cgywblid4wpipmh2kdpy61ndk"))))
    (properties `((upstream-name . "sydtest-servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-sydtest-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A servant companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-sydtest-servant

(define-public haskell-8.10-sydtest-yesod
  (package
    (name "haskell-8.10-sydtest-yesod")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-yesod/sydtest-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kdylnhfvg9x314bydic811i21r1r5zs9cm1zpw6d7frsl99g24k"))))
    (properties `((upstream-name . "sydtest-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-sydtest-wai)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A yesod companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-sydtest-yesod

(define-public haskell-8.10-text-builder
  (package
    (name "haskell-8.10-text-builder")
    (version "0.6.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder/text-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j2f9zbkk2lbvfb0f3c1i6376zbrr4p782ivbhgi8nv65rsp2ijy"))))
    (properties `((upstream-name . "text-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-deferred-folds)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-8.10-text-builder

(define-public haskell-8.10-textlocal
  (package
    (name "haskell-8.10-textlocal")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unix-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/just-chow/textlocal")
    (synopsis "Haskell wrapper for textlocal SMS gateway")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-textlocal

(define-public haskell-8.10-tldr
  (package
    (name "haskell-8.10-tldr")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tldr/tldr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yypb9zhsj9ks7bbw2sayqv3rn9y8z3w5p1xmsnwb4w99dqmvcx5"))))
    (properties `((upstream-name . "tldr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-cmark)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/tldr-hs#readme")
    (synopsis "Haskell tldr client")
    (description
     "Haskell tldr client with support for viewing tldr pages. Has offline
cache for accessing pages. Visit https://tldr.sh for more details.")
    (license license:bsd-3)))

haskell-8.10-tldr

(define-public haskell-8.10-tmp-proc
  (package
    (name "haskell-8.10-tmp-proc")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc/tmp-proc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11mh34jirabrdx9jbai42r0pgbx2q2v6028zigjznvhrsc7lkk4l"))))
    (properties `((upstream-name . "tmp-proc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-doc-tests" "-f-build-the-readme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-req)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/adetokunbo/tmp-proc/tree/master/tmp-proc#tmp-proc")
    (synopsis "Run 'tmp' processes in integration tests")
    (description
     "@@tmp-proc@@ runs services in docker containers for use in integration tests.

It aims to make using these services become like accessing /tmp/ processes,
similar to how /tmp/ file or directories are used.

It aspires to provide a user-friendly API, while including useful features
such as

* launch of multiple services on docker during test setup

* delayed test execution until the launched services are available

* simplified use of connections to the services from a [WAI](https://hackage.haskell.org/package/wai) server under test

* good integration with haskell testing frameworks like [hspec](https://hspec.github.io)
and [tasty](https://hackage.haskell.org/package/tasty)")
    (license license:bsd-3)))

haskell-8.10-tmp-proc

(define-public haskell-8.10-verbosity
  (package
    (name "haskell-8.10-verbosity")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/verbosity/verbosity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h2vgy3ai3rxh76zi68yi5n5qmj0kyjm0sjg2m1gf9nr4z47afjx"))))
    (properties `((upstream-name . "verbosity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fbinary" "-fdeepseq" "-f-cereal" "-f-safecopy" "-f-lattices" "-fdhall" "-fserialise")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-8.10-verbosity

(define-public haskell-8.10-wai-middleware-delegate
  (package
    (name "haskell-8.10-wai-middleware-delegate")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-delegate/wai-middleware-delegate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17r2qay83xnsg6f61bxpy7kvjw73827hdl8srxiwqirw6zzc1pha"))))
    (properties `((upstream-name . "wai-middleware-delegate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-wai-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)))
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

haskell-8.10-wai-middleware-delegate

(define-public haskell-8.10-webex-teams-api
  (package
    (name "haskell-8.10-webex-teams-api")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-bitset-word8)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "A Haskell bindings for Webex Teams API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.10-webex-teams-api

(define-public haskell-8.10-yesod-form
  (package
    (name "haskell-8.10-yesod-form")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "170gby381h5pg9njn908cyx2931yiv79x3rc5npg2rd74kif06vi"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-email-validate)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-xss-sanitize)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currntly it provides only Summernote support).")
    (license license:expat)))

haskell-8.10-yesod-form

(define-public haskell-8.10-yesod-static
  (package
    (name "haskell-8.10-yesod-static")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-css-text)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hjsmin)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-app-static)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-8.10-yesod-static

(define-public haskell-8.10-yesod-websockets
  (package
    (name "haskell-8.10-yesod-websockets")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wai-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-8.10-yesod-websockets

