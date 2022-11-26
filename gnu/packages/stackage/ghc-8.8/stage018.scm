;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage018)
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
(define-public haskell-8.8-DAV
  (package
    (name "haskell-8.8-DAV")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DAV/DAV-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1isvi4fahq70lzxfz23as7qzkc01g7kba568l6flrgd0j1984fsy"))))
    (properties `((upstream-name . "DAV") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mtl-compat")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://floss.scru.org/hDAV")
    (synopsis "RFC 4918 WebDAV support")
    (description
     "This is a library for the Web Distributed Authoring and Versioning
(WebDAV) extensions to HTTP.  At present it supports a very small
subset of client functionality.

In addition, there is an executable, hdav, which can be used for
command-line operation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-DAV

(define-public haskell-8.8-MusicBrainz
  (package
    (name "haskell-8.8-MusicBrainz")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://floss.scru.org/hMusicBrainz")
    (synopsis "interface to MusicBrainz XML2 and JSON web services")
    (description "interface to MusicBrainz XML2 and JSON web services")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-MusicBrainz

(define-public haskell-8.8-aeson-diff
  (package
    (name "haskell-8.8-aeson-diff")
    (version "1.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-diff/aeson-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18bm4qyjjwgrr6dxc4y0vai0z6qgrh2lcqb4jrr4xqs4cxrlwr92"))))
    (properties `((upstream-name . "aeson-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06r60i7iy8x5zv7n8kq0wg8q7lqs2nsq9jlz8k12xw50afk5d1kq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-edit-distance-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hlint)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/thsutton/aeson-diff")
    (synopsis "Extract and apply patches to JSON documents.")
    (description
     "
This is a small library for working with changes to JSON documents. It
includes a library and two command-line executables in the style of the
diff(1) and patch(1) commands available on many systems.
")
    (license license:bsd-3)))

haskell-8.8-aeson-diff

(define-public haskell-8.8-amazonka-core
  (package
    (name "haskell-8.8-amazonka-core")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Core data types and functionality for Amazonka libraries.")
    (description
     "Core data types, functionality and serialisation primitives for
Amazonka related Amazon Web Services SDKs.

The external interface of this library is stable with respect to the
downstream Amazonka libraries, only, and as such is not suitable
for use in non-Amazonka projects.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-core

(define-public haskell-8.8-apecs-physics
  (package
    (name "haskell-8.8-apecs-physics")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-physics/apecs-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ksxx5x998csgi3lr2yl18mk5sjccin20b15swyx1g9k7fsm7nx5"))))
    (properties `((upstream-name . "apecs-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")
       #:cabal-revision
       ("1" "0kzg82azksva8l13548qk4bkx5ww1z0ca1bv141gp4fr0vamw446")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-apecs)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-inline-c)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "2D physics for apecs")
    (description
     "2D physics for apecs. Uses Chipmunk physics library under the hood.")
    (license license:bsd-3)))

haskell-8.8-apecs-physics

(define-public haskell-8.8-approximate
  (package
    (name "haskell-8.8-approximate")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate/approximate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "016i37c5imb0n8gsk7gzyiq8dhkjv0xnn5315kmn6lnrhpfm7yyk"))))
    (properties `((upstream-name . "approximate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("1" "0r81fnsyfc8y7j2y2isjayq4gf6m9vsc2chw37g89zmknfsnilb7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-log-domain)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-pointed)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-safecopy)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-8.8-approximate

(define-public haskell-8.8-async-refresh-tokens
  (package
    (name "haskell-8.8-async-refresh-tokens")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh-tokens/async-refresh-tokens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1py7ips87gbwdhxdfv0xh4hkgw0my4nkkz4w1vwcb3s296a439v7"))))
    (properties `((upstream-name . "async-refresh-tokens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-async-refresh)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-formatting)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mtesseract/async-refresh-tokens#readme")
    (synopsis
     "Package implementing core logic for refreshing of expiring access tokens")
    (description
     "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).")
    (license license:bsd-3)))

haskell-8.8-async-refresh-tokens

(define-public haskell-8.8-authenticate
  (package
    (name "haskell-8.8-authenticate")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate/authenticate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10df40ycd4r45p58xzdh0vcsa401909fa99nkgd18fx5alqh84sz"))))
    (properties `((upstream-name . "authenticate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "0lmb1m5d1l2scnm2fqxfk348m8xqbc7f7kvk7zvpsvcdcpxinafz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-html-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis "Authentication methods for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate>.")
    (license license:expat)))

haskell-8.8-authenticate

(define-public haskell-8.8-bimap-server
  (package
    (name "haskell-8.8-bimap-server")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bimap-server/bimap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgmiv1pzzrq22778a2l46knxfk5rh2vw331gcqhxx0jb23d3pq9"))))
    (properties `((upstream-name . "bimap-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-bimap)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/bimap-server")
    (synopsis "Two-column database server.")
    (description
     "A server that stores a database with two columns, where the elements in each column are of the same type.
Operations are fast, although memory usage increases with the number of rows. The implementation is based
in bimaps.")
    (license license:bsd-3)))

haskell-8.8-bimap-server

(define-public haskell-8.8-brittany
  (package
    (name "haskell-8.8-brittany")
    (version "0.12.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brittany/brittany-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03v7lhy6i7fk3sskimzb3hs9qi1g9b9w7zfvmc9m4606673ysdzl"))))
    (properties `((upstream-name . "brittany") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-brittany-dev-lib" "-f-brittany-test-perf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-butcher)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-czipwith)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-data-tree-print)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-memo)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-multistate)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-strict)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unsafe)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/lspitzner/brittany/")
    (synopsis "Haskell source code formatter")
    (description
     "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.

If you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;

The implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.8-brittany

(define-public haskell-8.8-bv-little
  (package
    (name "haskell-8.8-bv-little")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bv-little/bv-little-" version
                    ".tar.gz"))
              (sha256
               (base32
                "034riqlgkccyl5lvc593v3dyszvqy2vqikk80qm6lw30pkmbcdnr"))))
    (properties `((upstream-name . "bv-little") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-keys)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-mono-traversable-keys)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-text-show)))
    (home-page "https://github.com/recursion-ninja/bv-little")
    (synopsis "Efficient little-endian bit vector library")
    (description
     "
This package contains a time- and space- efficient implementation of /little-endian, immutable/ bit vectors. Provides implementations of applicable typeclasses and numeric conversions.

The declared cost of each operation is either worst-case or amortized.

For an implementation of /big-endian, immutable/ bit vectors use the <https://hackage.haskell.org/package/bv bv> package.

For an implementation of /little-endian, mutable/ bit vectors, use the <https://hackage.haskell.org/package/bitvec bitvec> package.")
    (license license:bsd-3)))

haskell-8.8-bv-little

(define-public haskell-8.8-cabal-rpm
  (package
    (name "haskell-8.8-cabal-rpm")
    (version "2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-rpm/cabal-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ws9hw07qmw90wf226vr6abvm2h8qc49h9ff0cgcvjbinnk9ymmg"))))
    (properties `((upstream-name . "cabal-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-f-curl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-cabal)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-simple-cmd)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-cabal-rpm

(define-public haskell-8.8-cabal2nix
  (package
    (name "haskell-8.8-cabal2nix")
    (version "2.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gdwri0x7kw96y0c6j9rdqa68arrxkpisq43ld58applxcvr1cs7"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hackage-db)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hopenssl)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hpack)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-language-nix)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-monad-par)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the latest
version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-8.8-cabal2nix

(define-public haskell-8.8-casa-types
  (package
    (name "haskell-8.8-casa-types")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/casa-types/casa-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f8c4a43rh6zr5cwingxyjfpisipy4x4xc0lpasfjaj4vhjgwqkp"))))
    (properties `((upstream-name . "casa-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "101hhpwc7nhg2laywv2jnqa3jsjkvbvc30i6cs4srvdv2n87jlcb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/casa-types")
    (synopsis "Types for Casa")
    (description "Types for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-8.8-casa-types

(define-public haskell-8.8-cayley-client
  (package
    (name "haskell-8.8-cayley-client")
    (version "0.4.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cayley-client/cayley-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sak0rg9gydcwk7ahx51czp3akispxrkkfgq94n6hgg3dqvm646l"))))
    (properties `((upstream-name . "cayley-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/MichelBoucey/cayley-client")
    (synopsis "A Haskell client for the Cayley graph database")
    (description
     "cayley-client implements the RESTful API of the Cayley graph database.")
    (license license:bsd-3)))

haskell-8.8-cayley-client

(define-public haskell-8.8-clash-ghc
  (package
    (name "haskell-8.8-clash-ghc")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-ghc/clash-ghc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wxlhcpwq0m7k4f12x16ybvp4s5m45p9qk27wjkgk133fw35y3pz"))))
    (properties `((upstream-name . "clash-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dynamic" "-f-use-ghc-paths")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-clash-lib)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-clash-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-concurrent-supply)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://clash-lang.org/")
    (synopsis "CAES Language for Synchronous Hardware")
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

* Clash Compiler binary using GHC/Haskell as a frontend


Prelude library: <https://hackage.haskell.org/package/clash-prelude>")
    (license license:bsd-2)))

haskell-8.8-clash-ghc

(define-public haskell-8.8-classy-prelude
  (package
    (name "haskell-8.8-classy-prelude")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nm4lygxqb1wq503maki6dsah2gpn5rd22jmbwjxfwyzgyqy9fnk"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jivh1bmcvqn6bhh5z8x69v93zjcriklljm7gx342d8k5d5rsf4s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-basic-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-chunked-data)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-mutable-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-say)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-8.8-classy-prelude

(define-public haskell-8.8-compensated
  (package
    (name "haskell-8.8-compensated")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compensated/compensated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qr5nsg6fb6ib2wp29c1y05zdbydsng0sfg2k75qsh0avb2cgw7z"))))
    (properties `((upstream-name . "compensated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("1" "1hsg6j8h700nixgnz823js5pm5ziq820nzds1b60j0a0plz94pin")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-log-domain)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-safecopy)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-8.8-compensated

(define-public haskell-8.8-conferer-warp
  (package
    (name "haskell-8.8-conferer-warp")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-warp/conferer-warp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1swvrkfqvpnpw2nihqzgn8rxv0pfbc9cl8wlyfshrqirjm0lhbj3"))))
    (properties `((upstream-name . "conferer-warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-conferer)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's FromConfig instances for warp settings")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-conferer-warp

(define-public haskell-8.8-credential-store
  (package
    (name "haskell-8.8-credential-store")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/credential-store/credential-store-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114jdbpiyx8xnjxnpz05nqpnb5s29y1iv330b0i491vik8hvrbad"))))
    (properties `((upstream-name . "credential-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-dbus)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/rblaze/credential-store#readme")
    (synopsis "Library to access secure credential storage providers")
    (description
     "Cross-platform library for storing secrets.

Uses Windows credential store, gnome-keyring or kwallet as backends.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-credential-store

(define-public haskell-8.8-cryptocompare
  (package
    (name "haskell-8.8-cryptocompare")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-MissingH)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/aviaviavi/cryptocompare")
    (synopsis "Haskell wrapper for the cryptocompare API")
    (description
     "Haskell wrapper for the cryptocompare API, a source of information and pricing of different crypto-currencies.")
    (license license:expat)))

haskell-8.8-cryptocompare

(define-public haskell-8.8-dbus-hslogger
  (package
    (name "haskell-8.8-dbus-hslogger")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbus-hslogger/dbus-hslogger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2y69kagp53cmlb7p3y6ysr9k5wvfd0vcnpwsasyn1jpk6g80zi"))))
    (properties `((upstream-name . "dbus-hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-dbus)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/IvanMalison/dbus-hslogger#readme")
    (synopsis "Expose a dbus server to control hslogger")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/dbus-hslogger#readme>")
    (license license:bsd-3)))

haskell-8.8-dbus-hslogger

(define-public haskell-8.8-dhall-bash
  (package
    (name "haskell-8.8-dhall-bash")
    (version "1.0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r2xr8c8kzmrxrb8m6f9dzjn81sqxzx97w0406kwrx9vzfj7ci1q"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x7lkh86sr08qm53ycmka1vpxn7y60l01dm6hh70rhzn435ilvj1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-optparse-generic)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-dhall-bash

(define-public haskell-8.8-dhall-json
  (package
    (name "haskell-8.8-dhall-json")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vr6a02frfk5bh0qj0m4qlc5pp08m29gxp8ixqihrqakkna6409z"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "09yifah6mfy8k1qi5d2fibw62hjnxfcr7fx3wvyf4n16nq1mhshx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-aeson-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-dhall-json

(define-public haskell-8.8-diagrams-lib
  (package
    (name "haskell-8.8-diagrams-lib")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gqrcyjyp3p78vmfxvhfjbkkl2xvwcv3qyyinbdcmalb5zb8vyy6"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cqhqm2nz2ls00pfhx8hz6z6g17qhl380h24wp4d6l5msiw7gxq4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-active)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-adjunctions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-dual-tree)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-intervals)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-monoid-extras)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-numeric-extras)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://diagrams.github.io")
    (synopsis "Embedded domain-specific language for declarative graphics")
    (description "Diagrams is a flexible, extensible EDSL for creating
graphics of many types.  Graphics can be created
in arbitrary vector spaces and rendered with
multiple backends.  diagrams-lib provides a
standard library of primitives and operations for
creating diagrams.  To get started using it, see
the \"Diagrams\" module, and refer to the tutorials and
documentation on the diagrams website,
<http://diagrams.github.io>.")
    (license license:bsd-3)))

haskell-8.8-diagrams-lib

(define-public haskell-8.8-download
  (package
    (name "haskell-8.8-download")
    (version "0.3.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download/download-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qg61d7z05dxpzfnv1gyf0dm2mpx23p29a9n5mx4pham5hfmfm3i"))))
    (properties `((upstream-name . "download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-feed)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/download")
    (synopsis "High-level file download based on URLs")
    (description "High-level file download based on URLs")
    (license license:bsd-3)))

haskell-8.8-download

(define-public haskell-8.8-dublincore-xml-conduit
  (package
    (name "haskell-8.8-dublincore-xml-conduit")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dublincore-xml-conduit/dublincore-xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jzyj49j88xwsz54higi81a6v8kvb8i338n5416z1ni475qsynl"))))
    (properties `((upstream-name . "dublincore-xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "1rljgmi4jb6yhigfy394jb64q5f5qx7i1g68pw6zgq9ziz91p321")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hlint)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-timerep)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/k0ral/dublincore-xml-conduit")
    (synopsis
     "XML streaming parser/renderer for the Dublin Core standard elements.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-dublincore-xml-conduit

(define-public haskell-8.8-elm2nix
  (package
    (name "haskell-8.8-elm2nix")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-here)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-req)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/domenkozar/elm2nix#readme")
    (synopsis "Turn your Elm project into buildable Nix project")
    (description
     "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>")
    (license license:bsd-3)))

haskell-8.8-elm2nix

(define-public haskell-8.8-esqueleto
  (package
    (name "haskell-8.8-esqueleto")
    (version "3.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/esqueleto/esqueleto-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0mhbjq3mb0ws85m3aw69k7zs9n5mqayj5g2q3csx5d92rzkp7sgw"))))
    (properties `((upstream-name . "esqueleto") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09lcd78232l2vkj9wn60424k60zpsni4sraapfm1kr6i58ddl9cl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/bitemyapp/esqueleto")
    (synopsis "Type-safe EDSL for SQL queries on persistent backends.")
    (description
     "@@esqueleto@@ is a bare bones, type-safe EDSL for SQL queries that works with unmodified @@persistent@@ SQL backends.  Its language closely resembles SQL, so you don't have to learn new concepts, just new syntax, and it's fairly easy to predict the generated SQL and optimize it for your backend. Most kinds of errors committed when writing SQL are caught as compile-time errors---although it is possible to write type-checked @@esqueleto@@ queries that fail at runtime.

@@persistent@@ is a library for type-safe data serialization.  It has many kinds of backends, such as SQL backends (@@persistent-mysql@@, @@persistent-postgresql@@, @@persistent-sqlite@@) and NoSQL backends (@@persistent-mongoDB@@). While @@persistent@@ is a nice library for storing and retrieving records, including with filters, it does not try to support some of the features that are specific to SQL backends.  In particular, @@esqueleto@@ is the recommended library for type-safe @@JOIN@@s on @@persistent@@ SQL backends.  (The alternative is using raw SQL, but that's error prone and does not offer any composability.)

Currently, @@SELECT@@s, @@UPDATE@@s, @@INSERT@@s and @@DELETE@@s are supported. Not all SQL features are available, but most of them can be easily added (especially functions), so please open an issue or send a pull request if you need anything that is not covered by @@esqueleto@@ on <https://github.com/bitemyapp/esqueleto>.

The name of this library means \\\"skeleton\\\" in Portuguese and contains all three SQL letters in the correct order =).  It was inspired by Scala's Squeryl but created from scratch.")
    (license license:bsd-3)))

haskell-8.8-esqueleto

(define-public haskell-8.8-fb
  (package
    (name "haskell-8.8-fb")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-fb

(define-public haskell-8.8-fn
  (package
    (name "haskell-8.8-fn")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fn/fn-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0pxfwyfigj449qd01xb044gz1h63f3lvmpq6xij09xhkm8bv0d0y"))))
    (properties `((upstream-name . "fn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/positiondev/fn#readme")
    (synopsis "A functional web framework.")
    (description
     "A Haskell web framework where you write plain old functions.

/Provided you have/ <https://github.com/commercialhaskell/stack#readme stack> /installed, you can run this example like a shell script (it'll listen on port 3000):/

@@
#!\\/usr\\/bin\\/env stack
\\-\\- stack --resolver lts-5.5 --install-ghc runghc --package fn --package warp
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
import Data.Monoid ((&#60;&#62;))
import Data.Text (Text)
import Network.Wai (Response)
import Network.Wai.Handler.Warp (run)
import Web.Fn

data Ctxt = Ctxt &#123; _req :: FnRequest &#125;
instance RequestContext Ctxt where
&#32; getRequest = _req
&#32; setRequest c r = c &#123; _req = r &#125;

initializer :: IO Ctxt
initializer = return (Ctxt defaultFnRequest)

main :: IO ()
main = do ctxt <- initializer
&#32;         run 3000 $ toWAI ctxt site

site :: Ctxt -> IO Response
site ctxt = route ctxt [ end                        ==> indexH
&#32;                      , path &#34;echo&#34; \\/\\/ param &#34;msg&#34; ==> echoH
&#32;                      , path &#34;echo&#34; \\/\\/ segment     ==> echoH
&#32;                      ]
&#32;                 \\`fallthrough\\` notFoundText &#34;Page not found.&#34;

indexH :: Ctxt -> IO (Maybe Response)
indexH _ = okText &#34;Try visiting \\/echo?msg='hello' or \\/echo\\/hello&#34;

echoH :: Ctxt -> Text -> IO (Maybe Response)
echoH _ msg = okText $ &#34;Echoing '&#34; &#60;&#62; msg &#60;&#62; &#34;'.&#34;
@@


Fn lets you write web code that just looks like normal Haskell code.

* An application has some \\\"context\\\", which must contain a @@Request@@,
but can contain other data as well, like database connection pools,
etc. This context will be passed to each of your handlers, updated
with the current HTTP Request.

* Routes are declared to capture parameters and/or segments of the url,
and then routed to handler functions that have the appropriate number
and type of arguments. These functions return @@IO (Maybe Response)@@,
where @@Nothing@@ indicates to Fn that you want it to keep looking for
matching routes.

* All handlers just use plain old @@IO@@, which means it is easy to call
them from GHCi, @@forkIO@@, etc.

* All of this is a small wrapper around the WAI interface, so you have
the flexilibility to do anything you need to do with HTTP.

The name comes from the fact that Fn emphasizes functions (over monads),
where all necessary data is passed via function arguments, and control
flow is mediated by return values.")
    (license license:isc)))

haskell-8.8-fn

(define-public haskell-8.8-genvalidity-hspec-persistent
  (package
    (name "haskell-8.8-genvalidity-hspec-persistent")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-persistent/genvalidity-hspec-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11wzwnhij2xbgka9sjdsh7yf9xk6vlm9g6j6amb0863sxs1vpjm0"))))
    (properties `((upstream-name . "genvalidity-hspec-persistent")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for persistent-related instances")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-hspec-persistent

(define-public haskell-8.8-gi-cairo
  (package
    (name "haskell-8.8-gi-cairo")
    (version "1.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo/gi-cairo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y479ll6pzf5qjf18ziqgvfi6zq4jyajkq9zlggmh9pjhxpwj8nh"))))
    (properties `((upstream-name . "gi-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-cairo

(define-public haskell-8.8-gi-glib
  (package
    (name "haskell-8.8-gi-glib")
    (version "2.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-glib/gi-glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wsix558lj58i8mdwikb2q78941dxl3pchhd75xkk5hq8rknp37x"))))
    (properties `((upstream-name . "gi-glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-glib

(define-public haskell-8.8-gi-xlib
  (package
    (name "haskell-8.8-gi-xlib")
    (version "2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-xlib/gi-xlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gixgql24zx04sph7kn4n5gmgmz5xbw2f15mqfw0i5igad2pvsj3"))))
    (properties `((upstream-name . "gi-xlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages xorg) libx11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "xlib bindings")
    (description "Bindings for xlib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-xlib

(define-public haskell-8.8-github-rest
  (package
    (name "haskell-8.8-github-rest")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-rest/github-rest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0alwix2lvrvv6ba7nrxg6qvvrdci1vbv94yvq29zmsab9lbv6jrb"))))
    (properties `((upstream-name . "github-rest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-qq)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-jwt)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/LeapYear/github-rest#readme")
    (synopsis "Query the GitHub REST API programmatically")
    (description
     "Query the GitHub REST API programmatically, which can provide a more
flexible and clear interface than if all of the endpoints and their types
were defined as Haskell values.")
    (license license:bsd-3)))

haskell-8.8-github-rest

(define-public haskell-8.8-gitlab-haskell
  (package
    (name "haskell-8.8-gitlab-haskell")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gitlab-haskell/gitlab-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13s2vpxvcm000b817p9w8v05frdmsq9xjm9g6i07v97vrgpch1mv"))))
    (properties `((upstream-name . "gitlab-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://gitlab.com/robstewart57/gitlab-haskell")
    (synopsis "A Haskell library for the GitLab web API")
    (description
     "This Haskell library queries and updates the database of a GitLab instance using the GitLab web API: <https://docs.gitlab.com/ee/api/>

Run all GitLab actions with `runGitLab`:

> runGitLab :: (MonadUnliftIO m, MonadIO m)
>  => GitLabServerConfig -- ^ the GitLab server details
>  -> GitLab m a         -- ^ the GitLab action
>  -> m a

For example:

> myProjects <- runGitLab
>      (defaultGitLabServer
>          @{ url = \"https://gitlab.example.com\"
>          , token=\"my_token\"@} )
>      (searchUser \"joe\" >>= userProjects . fromJust)

Which uses the functions:

> searchUser   :: Text -> GitLab m (Maybe User)
> userProjects :: User -> GitLab m (Maybe [Project])

Unsurprisingly, this library is maintained on GitLab: <https://gitlab.com/robstewart57/gitlab-haskell>")
    (license license:bsd-3)))

haskell-8.8-gitlab-haskell

(define-public haskell-8.8-google-isbn
  (package
    (name "haskell-8.8-google-isbn")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/apeyroux/google-isbn#readme")
    (synopsis "")
    (description
     "Basic utility to search an ISBN using the Google Books webservice")
    (license license:bsd-3)))

haskell-8.8-google-isbn

(define-public haskell-8.8-gothic
  (package
    (name "haskell-8.8-gothic")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gothic/gothic-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f8n15cxh4c5m3pylssfksiw3qary8jkl7wabq4gl5zqw2r9ki62"))))
    (properties `((upstream-name . "gothic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/MichelBoucey/gothic")
    (synopsis "A Haskell Vault KVv2 secret engine client")
    (description "A Haskell HashiCorp Vault KVv2 secret engine client library")
    (license license:bsd-3)))

haskell-8.8-gothic

(define-public haskell-8.8-haskoin-node
  (package
    (name "haskell-8.8-haskoin-node")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-node/haskoin-node-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6l25n9w4g5r2xafb6x1gdqaghfmrnzh9i3nn64c3g26xzk3vnp"))))
    (properties `((upstream-name . "haskoin-node") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-base64)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-haskoin-core)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-nqe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-rocksdb-haskell)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-rocksdb-query)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages databases) rocksdb)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Haskoin Node P2P library for Bitcoin and Bitcoin Cash")
    (description
     "Bitcoin and Bitcoin Cash peer-to-peer protocol library featuring headers-first synchronisation.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-haskoin-node

(define-public haskell-8.8-hasql
  (package
    (name "haskell-8.8-hasql")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g9xm2md7zaja3kka6jdgdkjnp1vj96b7hjgymvjcd0dp59kkd2q"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hashtables)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-loch-th)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-placeholders)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-text-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/nikita-volkov/hasql")
    (synopsis "An efficient PostgreSQL driver with a flexible mapping API")
    (description
     "Root of the \\\"hasql\\\" ecosystem.
For details and tutorials see
<https://github.com/nikita-volkov/hasql the readme>.

The API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.")
    (license license:expat)))

haskell-8.8-hasql

(define-public haskell-8.8-hedgehog-fakedata
  (package
    (name "haskell-8.8-hedgehog-fakedata")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-fakedata/hedgehog-fakedata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h0cf4y25453n52d4y1ximzdc9l04b17byd9kgjvc3c279866f1i"))))
    (properties `((upstream-name . "hedgehog-fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-fakedata)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://github.com/parsonsmatt/hedgehog-fakedata#readme")
    (synopsis "Use 'fakedata' with 'hedgehog'")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>")
    (license license:bsd-3)))

haskell-8.8-hedgehog-fakedata

(define-public haskell-8.8-hledger-stockquotes
  (package
    (name "haskell-8.8-hledger-stockquotes")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-stockquotes/hledger-stockquotes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19xn7rzrg4nw1dfdfm1hn7k0wdwrw8416rn28inkbkbn1f9mqgk5"))))
    (properties `((upstream-name . "hledger-stockquotes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hledger-lib)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-req)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-hledger-stockquotes

(define-public haskell-8.8-hspec-wai
  (package
    (name "haskell-8.8-hspec-wai")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai/hspec-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05jv0cz8r8bf63ma5byjb2gkj9vwgnls4n9mks99qc525n055ckz"))))
    (properties `((upstream-name . "hspec-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-8.8-hspec-wai

(define-public haskell-8.8-http-directory
  (package
    (name "haskell-8.8-http-directory")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-directory/http-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sav7z5vdda6zq1xyhvrqwh3kdn1bnpmwlhiaxr3sb1npz3hjgcn"))))
    (properties `((upstream-name . "http-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-html-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-http-date)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/http-directory")
    (synopsis "http directory listing library")
    (description "Library for listing the files (href's) in an http directory.
It can also check the size, existence, modtime of files,
and for url redirects.")
    (license license:expat)))

haskell-8.8-http-directory

(define-public haskell-8.8-http-download
  (package
    (name "haskell-8.8-http-download")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-rio-prettyprint)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/http-download#readme")
    (synopsis "Verified downloads with retries")
    (description
     "Higher level HTTP download APIs include verification of content and retries")
    (license license:bsd-3)))

haskell-8.8-http-download

(define-public haskell-8.8-http-query
  (package
    (name "haskell-8.8-http-query")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-query/http-query-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j2ad7ym5mkpavlw1fp07n4qlggms04i93l5rv6vg07ljf4imjvs"))))
    (properties `((upstream-name . "http-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/http-query")
    (synopsis "Simple http queries")
    (description "Simple web API queries to JSON.")
    (license license:bsd-3)))

haskell-8.8-http-query

(define-public haskell-8.8-http-reverse-proxy
  (package
    (name "haskell-8.8-http-reverse-proxy")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/http-reverse-proxy")
    (synopsis
     "Reverse proxy HTTP requests, either over raw sockets or with WAI")
    (description
     "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.")
    (license license:bsd-3)))

haskell-8.8-http-reverse-proxy

(define-public haskell-8.8-ihaskell
  (package
    (name "haskell-8.8-ihaskell")
    (version "0.10.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell/ihaskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gs2j0qgxzf346nlnq0zx12yj528ykxia5r3rlldpf6f01zs89v8"))))
    (properties `((upstream-name . "ihaskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ghc-parser)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hlint)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-ipython-kernel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shelly)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-strict)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A Haskell backend kernel for the IPython project.")
    (description
     "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via
a console or notebook interface. Additional packages may be installed to provide richer data visualizations.")
    (license license:expat)))

haskell-8.8-ihaskell

(define-public haskell-8.8-irc-client
  (package
    (name "haskell-8.8-irc-client")
    (version "1.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-client/irc-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gd7ww2cmnh7im0gicsj1617540kl97780860hzf8nkixn71hwqr"))))
    (properties `((upstream-name . "irc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-irc-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-x509-store)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-irc-client

(define-public haskell-8.8-ixset-typed
  (package
    (name "haskell-8.8-ixset-typed")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed/ixset-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07n7qfi8slmrlgzvrkddr17b792phhb140q9gb5pm68kk1im4izs"))))
    (properties `((upstream-name . "ixset-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-safecopy)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://hackage.haskell.org/package/ixset-typed")
    (synopsis "Efficient relational queries on Haskell sets.")
    (description
     "This Haskell package provides a data structure of sets that are indexed
by potentially multiple indices.

Sets can be created, modified, and queried in various ways.

The package is a variant of the <https://hackage.haskell.org/package/ixset ixset>
package. The ixset package makes use
of run-time type information to find a suitable index on a query, resulting
in possible run-time errors when no suitable index exists. In ixset-typed,
the types of all indices available or tracked in the type system.
Thus, ixset-typed should be safer to use than ixset, but in turn requires
more GHC extensions.

At the moment, the two packages are relatively compatible. As a consequence
of the more precise types, a few manual tweaks are necessary when switching
from one to the other, but the interface is mostly the same.")
    (license license:bsd-3)))

haskell-8.8-ixset-typed

(define-public haskell-8.8-kawhi
  (package
    (name "haskell-8.8-kawhi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/thunky-monk/kawhi")
    (synopsis "stats.NBA.com library")
    (description "Functions and types for interacting with stats.NBA.com")
    (license license:expat)))

haskell-8.8-kawhi

(define-public haskell-8.8-krank
  (package
    (name "haskell-8.8-krank")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/krank/krank-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10w6vbpcn9n07s99w02izg7nfizpbq5m5mg6zv46f1llm35jpv6w"))))
    (properties `((upstream-name . "krank") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-PyF)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-lifted-async)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-pretty-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-req)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/guibou/krank")
    (synopsis "Krank checks your code source comments for important markers")
    (description
     "Comments are part of our code and are not usually tested correctly. Hence their content can become incoherent or obsolete. Krank tries to avoid that by running checkers on the comment themselves.")
    (license license:bsd-3)))

haskell-8.8-krank

(define-public haskell-8.8-lackey
  (package
    (name "haskell-8.8-lackey")
    (version "1.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lackey/lackey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a3gpr0gf1dhvy6lcqbgkf0iznjg62yav2xfnzps48wba5585dj0"))))
    (properties `((upstream-name . "lackey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-foreign)))
    (home-page "https://github.com/tfausak/lackey#readme")
    (synopsis "Generate Ruby clients from Servant APIs.")
    (description "Lackey generates Ruby clients from Servant APIs.")
    (license license:expat)))

haskell-8.8-lackey

(define-public haskell-8.8-language-avro
  (package
    (name "haskell-8.8-language-avro")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-avro/language-avro-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b54041z1sfrd7fck975i8d69agxij6jml6mxlcr41y7ywvizq0l"))))
    (properties `((upstream-name . "language-avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-avro)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/kutyel/avro-parser-haskell#readme")
    (synopsis "Language definition and parser for AVRO files.")
    (description
     "Parser for the AVRO language specification, see README.md for more details.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-language-avro

(define-public haskell-8.8-lsp-test
  (package
    (name "haskell-8.8-lsp-test")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-test/lsp-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gj6f99k3kd0flh2nbpj5wnhi1ql5rlijw0vf4l53zwxy203r7k8"))))
    (properties `((upstream-name . "lsp-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02vi5a88jj261jmqlp2drg9pf8424kjpjxr0zs54a0bfjk007kfz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-parse)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-lsp)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/bubba/lsp-test#readme")
    (synopsis "Functional test framework for LSP servers.")
    (description
     "A test framework for writing tests against
<https://microsoft.github.io/language-server-protocol/ Language Server Protocol servers>.
@@Language.Haskell.LSP.Test@@ launches your server as a subprocess and allows you to simulate a session
down to the wire, and @@Language.Haskell.LSP.Test@@ can replay captured sessions from
<haskell-lsp https://hackage.haskell.org/package/haskell-lsp>.
It's currently used for testing in <https://github.com/haskell/haskell-ide-engine haskell-ide-engine>.")
    (license license:bsd-3)))

haskell-8.8-lsp-test

(define-public haskell-8.8-mime-mail-ses
  (package
    (name "haskell-8.8-mime-mail-ses")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cryptohash)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-mime-mail)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Send mime-mail messages via Amazon SES")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail-ses>.")
    (license license:expat)))

haskell-8.8-mime-mail-ses

(define-public haskell-8.8-minio-hs
  (package
    (name "haskell-8.8-minio-hs")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minio-hs/minio-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yhaijz0cazgwz0fdvnx951g1s64zybbnl6n93bmxbdd7m6ydbml"))))
    (properties `((upstream-name . "minio-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-live-test" "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-digest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-ini)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/minio/minio-hs#readme")
    (synopsis "A MinIO Haskell Library for Amazon S3 compatible cloud
storage.")
    (description "The MinIO Haskell client library provides simple APIs to
access MinIO, Amazon S3 and other API compatible cloud
storage servers.")
    (license license:asl2.0)))

haskell-8.8-minio-hs

(define-public haskell-8.8-mmark-ext
  (package
    (name "haskell-8.8-mmark-ext")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-ext/mmark-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s44vznj8hkk7iymnzczbglxnw1q84gmm8q9yiwh0jkiw4kdi91c"))))
    (properties `((upstream-name . "mmark-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "02i6577qislr0qvgmfamcixpxgb7bh68lg18n3vkq6xbnjxdpwpx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-mmark)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-modern-uri)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-skylighting)))
    (home-page "https://github.com/mmark-md/mmark-ext")
    (synopsis "Commonly useful extensions for the MMark markdown processor")
    (description
     "Commonly useful extensions for the MMark markdown processor. Click on
\"Text.MMark.Extension.Common\" to get started.")
    (license license:bsd-3)))

haskell-8.8-mmark-ext

(define-public haskell-8.8-mustache
  (package
    (name "haskell-8.8-mustache")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mustache/mustache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j5kzlirirnj2lscxgc6r9j0if8s3pvxswjblma6yxpw6qyzk2xc"))))
    (properties `((upstream-name . "mustache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1rvndrbv7gn04mrs8mzhymk5r9qp84rb0ccqh9i0kpwjs9cw00yd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tar)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-wreq)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-8.8-mustache

(define-public haskell-8.8-not-gloss
  (package
    (name "haskell-8.8-not-gloss")
    (version "0.7.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/not-gloss/not-gloss-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pw3igxp71v7yrhsvbkkhk81nv9j2hac2wig16cclnq10kpd2h27"))))
    (properties `((upstream-name . "not-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011) haskell-8.8-GLUT)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-OpenGL)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-bmp)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-spatial-math)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/not-gloss")
    (synopsis "Painless 3D graphics, no affiliation with gloss")
    (description
     "This package intends to make it relatively easy to do simple 3d graphics using high-level primitives.
It is inspired by gloss and attempts to emulate it.
This is an early release and the api will certainly change.
Note that transparency can be controlled by the alpha value: \"makeColor r g b alpha\" but that you must draw objects from back to front for transparency to properly work (just put clear things last).
Also, transparent ellipsoids and cylinders have ugly artifacts, sorry.
Look at the complimentary package not-gloss-examples to get started.")
    (license license:bsd-3)))

haskell-8.8-not-gloss

(define-public haskell-8.8-nuxeo
  (package
    (name "haskell-8.8-nuxeo")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001) haskell-8.8-url)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/apeyroux/nuxeo#readme")
    (synopsis "")
    (description "Nuxeo tools")
    (license license:bsd-3)))

haskell-8.8-nuxeo

(define-public haskell-8.8-oeis2
  (package
    (name "haskell-8.8-oeis2")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis2/oeis2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1parmfwdxrmvzz81dy8mb9ry4bbp1bvsqsr593zld7hnfx6cvlh9"))))
    (properties `((upstream-name . "oeis2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/23prime/oeis2#readme")
    (synopsis "Interface for Online Encyclopedia of Integer Sequences (OEIS).")
    (description
     "Release notes are here https://github.com/23prime/oeis2/releases")
    (license license:bsd-3)))

haskell-8.8-oeis2

(define-public haskell-8.8-opentelemetry-lightstep
  (package
    (name "haskell-8.8-opentelemetry-lightstep")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-lightstep/opentelemetry-lightstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srzm9d4sc9rgfgq2yyfn5avs9n8bjx9mhz124dhkn3j361sr5g2"))))
    (properties `((upstream-name . "opentelemetry-lightstep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ghc-events)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-opentelemetry)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-opentelemetry-extra)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-splitmix)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-lightstep")
    (synopsis "")
    (description
     "The OpenTelemetry Haskell Client (Lightstep exporter) https://opentelemetry.io")
    (license license:asl2.0)))

haskell-8.8-opentelemetry-lightstep

(define-public haskell-8.8-pagure-cli
  (package
    (name "haskell-8.8-pagure-cli")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagure-cli/pagure-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hl1m23kwx5xd1nbaswnnqm0qrr8mcc7zvb28q47bdgfix2yhy7r"))))
    (properties `((upstream-name . "pagure-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-microlens")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pagure-cli")
    (synopsis "Pagure client")
    (description
     "A commandline Pagure client for querying projects and users.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-pagure-cli

(define-public haskell-8.8-password-instances
  (package
    (name "haskell-8.8-password-instances")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password-instances/password-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1az6j3yh92nr1ksh4f966y7v8v81l9l14r8qfakf5h62iznwqv2q"))))
    (properties `((upstream-name . "password-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-password)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/cdepillabout/password/password-instances#readme")
    (synopsis "typeclass instances for password package")
    (description
     "A library providing typeclass instances for common libraries for the types from the password package.")
    (license license:bsd-3)))

haskell-8.8-password-instances

(define-public haskell-8.8-persistent-mysql
  (package
    (name "haskell-8.8-persistent-mysql")
    (version "2.10.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mysql/persistent-mysql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ymh1gmcslwd8fp2wq71fswjgbmjdxl2mx4xf30j71h0744r2jbf"))))
    (properties `((upstream-name . "persistent-mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c42zkw0p82zv2wfykawxkjq4ywfrb60jbd9dfqgm5560kbjz47q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mysql)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mysql-simple)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis
     "Backend for the persistent library using MySQL database server.")
    (description
     "This package contains a backend for persistent using the
MySQL database server.  Internally it uses the @@mysql-simple@@
and @@mysql@@ packages in order to access the database.

This package supports only MySQL 5.1 and above.  However, it
has been tested only on MySQL 5.5.
Only the InnoDB storage engine is officially supported.

Known problems:

* This package does not support statements inside other
statements.")
    (license license:expat)))

haskell-8.8-persistent-mysql

(define-public haskell-8.8-persistent-postgresql
  (package
    (name "haskell-8.8-persistent-postgresql")
    (version "2.10.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-postgresql/persistent-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7n0h16argvpw2y3f8mxzmvy24q6if46ab9nvybviki283zbvlb"))))
    (properties `((upstream-name . "persistent-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vzm2d9smg9zvskaz3dv7c90d14pb0as7qpnsnvswhh8vn0862g3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using postgresql.")
    (description "Based on the postgresql-simple package")
    (license license:expat)))

haskell-8.8-persistent-postgresql

(define-public haskell-8.8-persistent-sqlite
  (package
    (name "haskell-8.8-persistent-sqlite")
    (version "2.10.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-sqlite/persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l6287ni2ksi8l8kv6gbsyjxhjpcqn6a1gw577ii7fixbyvbpbnf"))))
    (properties `((upstream-name . "persistent-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-f-use-pkgconfig" "-f-build-sanity-exe" "-ffull-text-search" "-furi-filenames" "-fhave-usleep" "-fjson1" "-f-use-stat3" "-fuse-stat4")
       #:cabal-revision
       ("1" "1kg5cikbw7mpdzwc1f1kfxwjq7q2raqdxsdq5rb65rk87wl3fih5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-8.8-persistent-sqlite

(define-public haskell-8.8-persistent-template
  (package
    (name "haskell-8.8-persistent-template")
    (version "2.8.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-template/persistent-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y96aj5i3c1j2ls6980l8lfjj9b3vfmp3766xk5af1870vj1s1lf"))))
    (properties `((upstream-name . "persistent-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1n0h1bz970dbnpzl4mydc89bxvsb4k0qhj56bimyrjdw6kzssxjq")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, non-relational, multi-backend persistence.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent-template>.")
    (license license:expat)))

haskell-8.8-persistent-template

(define-public haskell-8.8-rasterific-svg
  (package
    (name "haskell-8.8-rasterific-svg")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rasterific-svg/rasterific-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i0pl1hin1ipi3l0074ywd1khacpbvz3x0frx0j0hmbfiv4n3nq2"))))
    (properties `((upstream-name . "rasterific-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1938sp9m0yi7ypxk74bzrbkp9b4yk6hsaqhlhbraf9yb7w61228v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-FontyFruity)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-Rasterific)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-svg-tree)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-8.8-rasterific-svg

(define-public haskell-8.8-ratel-wai
  (package
    (name "haskell-8.8-ratel-wai")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "154zxrv9w904bgrgwb623zkqxzp200ivhwfpcwlb8r2903jmw7vq"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-ratel)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/ratel-wai")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-8.8-ratel-wai

(define-public haskell-8.8-reanimate-svg
  (package
    (name "haskell-8.8-reanimate-svg")
    (version "0.9.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate-svg/reanimate-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7ij7w7zyjmmhhvfpjcx60jvs1p0w4jq9fbcah4ywn4azvr7gjv"))))
    (properties `((upstream-name . "reanimate-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-double-conversion)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-svg-tree)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/reanimate-svg")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-8.8-reanimate-svg

(define-public haskell-8.8-req-conduit
  (package
    (name "haskell-8.8-req-conduit")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/req-conduit/req-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "193bv4jp7rrbpb1i9as9s2l978wz5kbz5kvr7ppllif5ppj699qx"))))
    (properties `((upstream-name . "req-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("8" "1md7zajmw87qrx6rvs35yrkbjs3s9nm0akg35jmf7a34xccrr7a7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-req)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-8.8-req-conduit

(define-public haskell-8.8-sdl2-gfx
  (package
    (name "haskell-8.8-sdl2-gfx")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-gfx/sdl2-gfx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03f541vrp1ifn26kzakamlc5f8pr9rfcf808cp6q5mvmlsvi07lc"))))
    (properties `((upstream-name . "sdl2-gfx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("1" "1gdasf1rq7gszfhin521cni8bxfzanvssznfi8m2fkgwz6ichhpv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-sdl2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-gfx)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-gfx")
    (synopsis "Bindings to SDL2_gfx.")
    (description "Haskell bindings to SDL2_gfx.")
    (license license:expat)))

haskell-8.8-sdl2-gfx

(define-public haskell-8.8-sdl2-image
  (package
    (name "haskell-8.8-sdl2-image")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-image/sdl2-image-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pr6dkg73cy9z0w54lrkj9c5bhxj56nl92lxikjy8kz6nyr455rr"))))
    (properties `((upstream-name . "sdl2-image") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("1" "0471p3d1ws5n7r072xgk38n3vzs6ijjkmpv1r05vxn6qninlnq6m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-image)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-image")
    (synopsis "Bindings to SDL2_image.")
    (description "Haskell bindings to SDL2_image.")
    (license license:expat)))

haskell-8.8-sdl2-image

(define-public haskell-8.8-sdl2-mixer
  (package
    (name "haskell-8.8-sdl2-mixer")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-mixer/sdl2-mixer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k8avyccq5l9z7bwxigim312yaancxl1sr3q6a96bcm7pnhiak0g"))))
    (properties `((upstream-name . "sdl2-mixer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("1" "06h708gbvl5z590p6fn10ck6yxjzyjjbmvk6mxcwgygbj76sw2f8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-sdl2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2-mixer)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-mixer)))
    (home-page "https://hackage.haskell.org/package/sdl2-mixer")
    (synopsis "Bindings to SDL2_mixer.")
    (description "Haskell bindings to SDL2_mixer.")
    (license license:bsd-3)))

haskell-8.8-sdl2-mixer

(define-public haskell-8.8-sdl2-ttf
  (package
    (name "haskell-8.8-sdl2-ttf")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-ttf/sdl2-ttf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iyqm1i5k8j4948gvr59rgalqwsdkishs52kp85ncvb6cpylw3qn"))))
    (properties `((upstream-name . "sdl2-ttf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.")
    (license license:bsd-3)))

haskell-8.8-sdl2-ttf

(define-public haskell-8.8-servant-checked-exceptions-core
  (package
    (name "haskell-8.8-servant-checked-exceptions-core")
    (version "2.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions-core/servant-checked-exceptions-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1irakwsdj6f0yjp0cpgai6x01yq99qd2rwy1w3pb7xwiksdnxx6c"))))
    (properties `((upstream-name . "servant-checked-exceptions-core")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-docs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-world-peace)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-servant-checked-exceptions-core

(define-public haskell-8.8-servant-client
  (package
    (name "haskell-8.8-servant-client")
    (version "0.16.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6rw1bdm5x8swi9dy70n86gq9v85wlgmm6pglfxqbv7bgzpql8c"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-kan-extensions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-client-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.8-servant-client

(define-public haskell-8.8-servant-swagger
  (package
    (name "haskell-8.8-servant-swagger")
    (version "1.1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger/servant-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vdjvn5bsd26q8wx1qdwn7vdfnd9jk8m9jzzm251gyn1ijxv8ild"))))
    (properties `((upstream-name . "servant-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ij93pd7lsq39grglhfrdjrg21bxigmhavy51xilg6rrpnfcj2wv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-singleton-bool)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/haskell-servant/servant-swagger")
    (synopsis
     "Generate a Swagger/OpenAPI/OAS 2.0 specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs. The core of the
project is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).
This library implements v2.0 of the spec. Unlike Servant it is language-agnostic and thus is
quite popular among developers in different languages. It has also existed for a longer time
and has more helpful tooling.

This package provides means to generate a Swagger/OAS specification for a Servant API
and also to partially test whether an API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-8.8-servant-swagger

(define-public haskell-8.8-slack-api
  (package
    (name "haskell-8.8-slack-api")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-wreq)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-slack-api

(define-public haskell-8.8-soap
  (package
    (name "haskell-8.8-soap")
    (version "0.2.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/soap/soap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xmiabnx814rwdwrcipv0kja6ljgwqr4x58sa8s07nrs3ph8xz6d"))))
    (properties `((upstream-name . "soap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1p34yyxln56n75m7hha75p1qm73vjyxbm54lwq566ayqf7dikp2y")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-configurator)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-iconv)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-xml-conduit-writer)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "SOAP client tools")
    (description
     "Tools to build SOAP clients using xml-conduit.

A mildly-complicated example:

> import Network.SOAP
> import Network.SOAP.Transport.HTTP
>
> import Text.XML.Writer
> import Text.XML.Stream.Parse as Parse
> import           Data.Text (Text)
> import qualified Data.Text as T
>
> main :: IO ()
> main = do
>     -- Initial one-time preparations.
>     transport <- initTransport \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- Making queries
>     activeStaff <- listStaff transport True
>     print activeStaff
>
> data Person = Person Text Int deriving Show
>
> listStaff :: Transport -> Bool -> IO [Person]
> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser
>     where
>         body = element \"request\" $ element \"listStaff\" $ do
>                    element \"active\" active
>                    element \"order\" $ T.pack \"age\"
>                    element \"limit\" (10 :: Int)
>
>         parser = StreamParser $ force \"no people\" $ tagNoAttr \"people\" $ Parse.many parsePerson
>
>         parsePerson = tagName \"person\" (requireAttr \"age\") $ \\age -> do
>                           name <- Parse.content
>                           return $ Person name (read . T.unpack $ age)

Notice: to invoke HTTPS services you need to initialize a transport from soap-tls or soap-openssl.

Full examples available at source repo: <https://bitbucket.org/dpwiz/haskell-soap/src/HEAD/soap/examples/>")
    (license license:expat)))

haskell-8.8-soap

(define-public haskell-8.8-tasty-wai
  (package
    (name "haskell-8.8-tasty-wai")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-wai/tasty-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1bnq2mbgv1ksn9sq33dq1q91pzndy7gn61mlnkybk89k0bsw5i7y"))))
    (properties `((upstream-name . "tasty-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1bjmzxnrypv1nqhc37rwwcgilnrrjm8scwnb4ca6z99bldi95b27")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/tasty-wai")
    (synopsis "Test 'wai' endpoints via Test.Tasty")
    (description
     "Helper functions and runners for testing wai endpoints using the Tasty testing infrastructure.")
    (license license:bsd-3)))

haskell-8.8-tasty-wai

(define-public haskell-8.8-textlocal
  (package
    (name "haskell-8.8-textlocal")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unix-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/just-chow/textlocal")
    (synopsis "Haskell wrapper for textlocal SMS gateway")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-textlocal

(define-public haskell-8.8-verbosity
  (package
    (name "haskell-8.8-verbosity")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-8.8-verbosity

(define-public haskell-8.8-wai-app-static
  (package
    (name "haskell-8.8-wai-app-static")
    (version "3.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-app-static/wai-app-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "138gd5482psq0wbm8s1az672lksi7vbavq6ayiyjkliivf6xpry8"))))
    (properties `((upstream-name . "wai-app-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-print")
       #:cabal-revision
       ("1" "1q7zwjasysgbp9rdp75535igd7s6mhi2bnl4pzsn6vbyfw3qnsxd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-http-date)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mime-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-mockery)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI application for static serving")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-app-static>.")
    (license license:expat)))

haskell-8.8-wai-app-static

(define-public haskell-8.8-wai-handler-launch
  (package
    (name "haskell-8.8-wai-handler-launch")
    (version "3.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-handler-launch/wai-handler-launch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ifqgyc1ccig5angh5l1iq7vyms4lvi8wzvysg5dw82nml49n02m"))))
    (properties `((upstream-name . "wai-handler-launch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/wai-handler-launch")
    (synopsis "Launch a web app in the default browser.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.")
    (license license:expat)))

haskell-8.8-wai-handler-launch

(define-public haskell-8.8-warp-tls
  (package
    (name "haskell-8.8-warp-tls")
    (version "3.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls/warp-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d75zcacr835m7d1b0n7j19432sdf0qwgqxdf6az3f9brg849ajd"))))
    (properties `((upstream-name . "warp-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-tls-session-manager)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "HTTP over TLS support for Warp via the TLS package")
    (description "SSLv1 and SSLv2 are obsoleted by IETF.
We should use TLS 1.2 (or TLS 1.1 or TLS 1.0 if necessary).
HTTP/2 can be negotiated by ALPN.
API docs and the README are available at
<http://www.stackage.org/package/warp-tls>.")
    (license license:expat)))

haskell-8.8-warp-tls

(define-public haskell-8.8-webex-teams-api
  (package
    (name "haskell-8.8-webex-teams-api")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-bitset-word8)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "A Haskell bindings for Webex Teams API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.8-webex-teams-api

(define-public haskell-8.8-wss-client
  (package
    (name "haskell-8.8-wss-client")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wss-client/wss-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1licynhnyhfdq4gxpsya3gaypjs9inqzr2xqmjs9f99ymbvin8d8"))))
    (properties `((upstream-name . "wss-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-sample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014) haskell-8.8-envy)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-skews)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/wss-client")
    (synopsis "A-little-higher-level WebSocket client.")
    (description
     "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.")
    (license license:bsd-3)))

haskell-8.8-wss-client

(define-public haskell-8.8-xlsx-tabular
  (package
    (name "haskell-8.8-xlsx-tabular")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xlsx-tabular/xlsx-tabular-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgxs1a0prnq6ljvv1g3rs39565w4609hv3ckq0gk0fz85yqkpa8"))))
    (properties `((upstream-name . "xlsx-tabular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-xlsx)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/kkazuo/xlsx-tabular")
    (synopsis "Xlsx table cell value extraction utility")
    (description "
Convenience utility to read xlsx tabular cells.

You can extract the values from xlsx files
table rows to JSON format by the heuristics or
your custom function.")
    (license license:bsd-3)))

haskell-8.8-xlsx-tabular

(define-public haskell-8.8-xml-html-qq
  (package
    (name "haskell-8.8-xml-html-qq")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-html-qq/xml-html-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ni354ihiaax7dlghq0qsili0sqy4z9vc3a75i24z2m59hgvnbhs"))))
    (properties `((upstream-name . "xml-html-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-from-sum)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-heterocephalus)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-html-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-xml-html-qq

(define-public haskell-8.8-yesod-core
  (package
    (name "haskell-8.8-yesod-core")
    (version "1.6.18.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-core/yesod-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1phqb74z5nqnx1xnbhnpimcdcrzm5dd474svzc5hp0ji3kp2xkri"))))
    (properties `((upstream-name . "yesod-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-auto-update)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-clientsession)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-core>")
    (license license:expat)))

haskell-8.8-yesod-core

