;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage021)
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
(define-public haskell-8.4-DAV
  (package
    (name "haskell-8.4-DAV")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DAV/DAV-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "149rdrbjx59a2rbx2r6fzhmyl3f35a2gbh4sarbpffv0pmirrx14"))))
    (properties `((upstream-name . "DAV") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-mtl-compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hDAV")
    (synopsis "RFC 4918 WebDAV support")
    (description
     "This is a library for the Web Distributed Authoring and Versioning
(WebDAV) extensions to HTTP.  At present it supports a very small
subset of client functionality.

In addition, there is an executable, hdav, which can be used for
command-line operation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-DAV

(define-public haskell-8.4-HTTP
  (package
    (name "haskell-8.4-HTTP")
    (version "4000.3.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "140r6qy1ay25piv0z3hih11zhigyi08nkwc32097j43pjff6mzx3"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mtl1" "-f-warn-as-error" "-f-conduit10" "-fwarp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("2" "1gw6xzp1n4gsqwnbfr29ds8v4wpk78b2bha8i108dqav97viwm8c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-httpd-shed)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell/HTTP")
    (synopsis "A library for client-side HTTP")
    (description
     "The HTTP package supports client-side web programming in Haskell. It lets you set up
HTTP connections, transmitting requests and processing the responses coming back, all
from within the comforts of Haskell. It's dependent on the network package to operate,
but other than that, the implementation is all written in Haskell.

A basic API for issuing single HTTP requests + receiving responses is provided. On top
of that, a session-level abstraction is also on offer  (the @@BrowserAction@@ monad);
it taking care of handling the management of persistent connections, proxies,
state (cookies) and authentication credentials required to handle multi-step
interactions with a web server.

The representation of the bytes flowing across is extensible via the use of a type class,
letting you pick the representation of requests and responses that best fits your use.
Some pre-packaged, common instances are provided for you (@@ByteString@@, @@String@@).

Here's an example use:

>
>    do
>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")
>              -- fetch document and return it (as a 'String'.)
>      fmap (take 100) (getResponseBody rsp)
>
>    do
>      (_, rsp)
>         <- Network.Browser.browse $ do
>               setAllowRedirects True -- handle HTTP redirects
>               request $ getRequest \"http://www.haskell.org/\"
>      return (take 100 (rspBody rsp))

__Note:__ This package does not support HTTPS connections.
If you need HTTPS, take a look at the following packages:

* <http://hackage.haskell.org/package/http-streams http-streams>

* <http://hackage.haskell.org/package/http-client http-client> (in combination with
<http://hackage.haskell.org/package/http-client-tls http-client-tls>)

* <http://hackage.haskell.org/package/req req>

* <http://hackage.haskell.org/package/wreq wreq>
")
    (license license:bsd-3)))

haskell-8.4-HTTP

(define-public haskell-8.4-Spock-core
  (package
    (name "haskell-8.4-Spock-core")
    (version "0.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-core/Spock-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qjiv0jqs3bsgx6mpflsykr2rpvw5cch5v7r6z5306ccli1bvjjy"))))
    (properties `((upstream-name . "Spock-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hvect)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-reroute)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-superbuffer)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "Barebones high performance type safe web framework")
    (license license:bsd-3)))

haskell-8.4-Spock-core

(define-public haskell-8.4-aeson-extra
  (package
    (name "haskell-8.4-aeson-extra")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-extra/aeson-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y7xss382hdxrv4jzprsm3b7ij7wiw8jgjg9wp49dx6bfvcnb2nl"))))
    (properties `((upstream-name . "aeson-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0ja5vr9w22wyknkjyl7w43frdfdfnxphvrai1b18lhinjqcd9bl5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-these)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/aeson-extra#readme")
    (synopsis "Extra goodies for aeson")
    (description
     "Package provides extra funcitonality on top of @@aeson@@ and @@aeson-compat@@")
    (license license:bsd-3)))

haskell-8.4-aeson-extra

(define-public haskell-8.4-approximate
  (package
    (name "haskell-8.4-approximate")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate/approximate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ifmp1c2km3ssp51m94vxqzx7yx6c21ychp7ajnhgg7v4bgfdyq"))))
    (properties `((upstream-name . "approximate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("1" "1sd3s1ibn5dmgwzlqwshj7im4lmgpfzcv43ax6lpp9bdmxa6lmz9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-log-domain)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-pointed)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-safecopy)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-8.4-approximate

(define-public haskell-8.4-async-refresh-tokens
  (package
    (name "haskell-8.4-async-refresh-tokens")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-async-refresh)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh-tokens#readme")
    (synopsis
     "Package implementing core logic for refreshing of expiring access tokens")
    (description
     "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).")
    (license license:bsd-3)))

haskell-8.4-async-refresh-tokens

(define-public haskell-8.4-bimap-server
  (package
    (name "haskell-8.4-bimap-server")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-bimap)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/bimap-server")
    (synopsis "Two-column database server.")
    (description
     "A server that stores a database with two columns, where the elements in each column are of the same type.
Operations are fast, although memory usage increases with the number of rows. The implementation is based
in bimaps.")
    (license license:bsd-3)))

haskell-8.4-bimap-server

(define-public haskell-8.4-bitx-bitcoin
  (package
    (name "haskell-8.4-bitx-bitcoin")
    (version "0.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitx-bitcoin/bitx-bitcoin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wf86pkpm5vlcv5cci2sn6by0ajmq44b3azxc41zivqdpf5kkwii"))))
    (properties `((upstream-name . "bitx-bitcoin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tebello-thejane/bitx.hs")
    (synopsis "A Haskell library for working with the BitX bitcoin exchange.")
    (description
     "Haskell bindings to the Luno (formerly BitX) REST API, as described here:
<https://www.luno.com/en/api>.

Note that since this library interfaces directly with a financial API, great care
must be taken in its use. In particular, the author cannot be held accountable for any
financial losses as a result of programming error, whether that error is in your code,
the code of the author of this library, or Luno's code. This is just common sense.

If you need to make sure that nothing funny happens in the code, apart from reading
the source yourself, you should also perform a few test transactions with very small
denominations, as I will strive to do every time before releasing a new version.

For a very small usage example, see \"Network.Bitcoin.BitX.Public\".")
    (license license:bsd-3)))

haskell-8.4-bitx-bitcoin

(define-public haskell-8.4-clash-ghc
  (package
    (name "haskell-8.4-clash-ghc")
    (version "0.99.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-ghc/clash-ghc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gjbvh6w2yc8pk38h8pw2jqfbyjzadizszy7v24a851m2cg0yiw9"))))
    (properties `((upstream-name . "clash-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r86409nh73wcychmwh2j3qnbbjk9z2yxr5amx7gpc8gar4qb3qi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-clash-lib)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-clash-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-concurrent-supply)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-unbound-generics)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "CAES Language for Synchronous Hardware")
    (description
     "CλaSH (pronounced ‘clash’) is a functional hardware description language that
borrows both its syntax and semantics from the functional programming language
Haskell. The CλaSH compiler transforms these high-level descriptions to
low-level synthesizable VHDL, Verilog, or SystemVerilog.

Features of CλaSH:

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

* CλaSH Compiler binary using GHC/Haskell as a frontend


Prelude library: <http://hackage.haskell.org/package/clash-prelude>")
    (license license:bsd-2)))

haskell-8.4-clash-ghc

(define-public haskell-8.4-classy-prelude
  (package
    (name "haskell-8.4-classy-prelude")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7r4lnrxjsh7rj5nr0cs22ddp9m6maa7bzbkarxw3xbfrb2afrb"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gf615lz0bfsn09vrjgj63d8zcpsmz1cgvdv8px3h0b4jrwdij6v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-basic-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-chunked-data)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-mutable-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-say)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-8.4-classy-prelude

(define-public haskell-8.4-closed
  (package
    (name "haskell-8.4-closed")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/closed/closed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0762acn2dik98hp4bvlyvwfy1jfzb4i6ri9pnxa07risain1qc3s"))))
    (properties `((upstream-name . "closed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0n4g5in0lzy0gs04jj4y0kb3ndychp6nd92pqcsy80bqlllqv2a9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/frontrowed/closed#readme")
    (synopsis "Integers bounded by a closed interval")
    (description "Integers bounded by a closed interval")
    (license license:expat)))

haskell-8.4-closed

(define-public haskell-8.4-compensated
  (package
    (name "haskell-8.4-compensated")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compensated/compensated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qna4g1zcc89r1ambswrq65pql6k6g3dv0ivlgnhswl6lm3vzyf7"))))
    (properties `((upstream-name . "compensated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("2" "1f5hfmzi2bk7xldxgmcd85gyi4dqm7q18cgmwmzpyz7f67p7awhz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-log-domain)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-safecopy)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-8.4-compensated

(define-public haskell-8.4-consul-haskell
  (package
    (name "haskell-8.4-consul-haskell")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/consul-haskell/consul-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02nq60nm49pj00ydd6rhxnbzr9igz9qxlgpjz4vp1kpv1nvi425i"))))
    (properties `((upstream-name . "consul-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lifted-async)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alphaHeavy/consul-haskell")
    (synopsis "A consul client for Haskell")
    (description "A consul client for Haskell

Requires consul 0.5 or later.")
    (license license:bsd-3)))

haskell-8.4-consul-haskell

(define-public haskell-8.4-datadog
  (package
    (name "haskell-8.4-datadog")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/datadog/datadog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d0rbi269hc0bq4asww69pfw4gf0z3p9ji3iw1h129h4qyhyvdcv"))))
    (properties `((upstream-name . "datadog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0p610nsyj1l9g4wdxfdycc9shj4y8934nlqg0j61p6z4dmgrnjjn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-buffer-builder)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description "")
    (license license:expat)))

haskell-8.4-datadog

(define-public haskell-8.4-dhall
  (package
    (name "haskell-8.4-dhall")
    (version "1.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dhall/dhall-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0c4fr0cs56wkfqiylbpi5qlyxxk9k6x5f9yphq12xf06l2vb6fza"))))
    (properties `((upstream-name . "dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-http")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-repline)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall")
    (synopsis "A configuration language guaranteed to terminate")
    (description
     "Dhall is an explicitly typed configuration language that is not Turing
complete.  Despite being Turing incomplete, Dhall is a real programming
language with a type-checker and evaluator.

Use this library to parse, type-check, evaluate, and pretty-print the Dhall
configuration language.  This package also includes an executable which
type-checks a Dhall file and reduces the file to a fully evaluated normal
form.

Read \"Dhall.Tutorial\" to learn how to use this library")
    (license license:bsd-3)))

haskell-8.4-dhall

(define-public haskell-8.4-diagrams-lib
  (package
    (name "haskell-8.4-diagrams-lib")
    (version "1.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "175yzi5kw4yd8ykdkpf64q85c7j3p89l90m3h6qcsx9ipv6av9r5"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "157y2qdsh0aczs81vzlm377mks976mpv6y3aqnchwsnr7apzp8ai")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-active)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-dual-tree)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-intervals)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-linear)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-monoid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-numeric-extras)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Embedded domain-specific language for declarative graphics")
    (description "Diagrams is a flexible, extensible EDSL for creating
graphics of many types.  Graphics can be created
in arbitrary vector spaces and rendered with
multiple backends.  diagrams-lib provides a
standard library of primitives and operations for
creating diagrams.  To get started using it, see
the \"Diagrams\" module, and refer to the tutorials and
documentation on the diagrams website,
<http://projects.haskell.org/diagrams>.")
    (license license:bsd-3)))

haskell-8.4-diagrams-lib

(define-public haskell-8.4-dom-parser
  (package
    (name "haskell-8.4-dom-parser")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dom-parser/dom-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hra4sh34dr1gv4z55dg3f8s2g9l2qb7nlb0j4w0imr71fp5rqfp"))))
    (properties `((upstream-name . "dom-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-xml-lens)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeable/dom-parser")
    (synopsis "Simple monadic DOM parser")
    (description "")
    (license license:expat)))

haskell-8.4-dom-parser

(define-public haskell-8.4-download
  (package
    (name "haskell-8.4-download")
    (version "0.3.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download/download-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wpf8kxq924482p7bm5l24nhmvrr75sjqinfjkj6x2x55hd40vd0"))))
    (properties `((upstream-name . "download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-feed)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/download")
    (synopsis "High-level file download based on URLs")
    (description "High-level file download based on URLs")
    (license license:bsd-3)))

haskell-8.4-download

(define-public haskell-8.4-eventful-memory
  (package
    (name "haskell-8.4-eventful-memory")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-memory/eventful-memory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fdd2z13lnk1zxhylriwblz96x90v4504abrj9rfbi732853wz3a"))))
    (properties `((upstream-name . "eventful-memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-eventful-core)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-eventful-test-helpers)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "In-memory implementations for eventful")
    (description "In-memory implementations for eventful")
    (license license:expat)))

haskell-8.4-eventful-memory

(define-public haskell-8.4-gi-cairo
  (package
    (name "haskell-8.4-gi-cairo")
    (version "1.0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo/gi-cairo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ax7aly9ahvb18m3zjmy0dk47qfdx5yl15q52c3wp4wa0c5aggax"))))
    (properties `((upstream-name . "gi-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-cairo

(define-public haskell-8.4-gi-glib
  (package
    (name "haskell-8.4-gi-glib")
    (version "2.0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-glib/gi-glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rxbkrwlwnjf46z0qpw0vjw1nv9kl91xp7k2098rqs36kl5bwylx"))))
    (properties `((upstream-name . "gi-glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-glib

(define-public haskell-8.4-giphy-api
  (package
    (name "haskell-8.4-giphy-api")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/giphy-api/giphy-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0146813vcnjgb8clyczlz8g6ngm9l702gib60f2m6rf2bc0bbpwd"))))
    (properties `((upstream-name . "giphy-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildsample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-basic-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/passy/giphy-api#readme")
    (synopsis "Giphy HTTP API wrapper and CLI search tool.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-giphy-api

(define-public haskell-8.4-github
  (package
    (name "haskell-8.4-github")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/github/github-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1523p2rv4jwsbsqjc9g3qff4cy5dhdy5wzp382x5nr11rmbrpsph"))))
    (properties `((upstream-name . "github") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-faeson-compat")
       #:cabal-revision
       ("3" "0s3zmkzgfbh1mc0492i7rjiawxkzg0im8z2p10niv5ff58m87yri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-binary-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-deepseq-generics)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-link-header)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iso8601-time)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-vector-instances)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/phadej/github")
    (synopsis "Access to the GitHub API, v3.")
    (description
     "The GitHub API provides programmatic access to the full
GitHub Web site, from Issues to Gists to repos down to the underlying git data
like references and trees. This library wraps all of that, exposing a basic but
Haskell-friendly set of functions and data structures.

For supported endpoints see \"GitHub\" module.

> import qualified GitHub as GH
>
> main :: IO ()
> main = do
>     possibleUser <- GH.executeRequest' $ GH.userInfoR \"phadej\"
>     print possibleUser

For more of an overview please see the README: <https://github.com/phadej/github/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.4-github

(define-public haskell-8.4-hailgun
  (package
    (name "haskell-8.4-hailgun")
    (version "0.4.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hailgun/hailgun-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hyww94b0ndfypk47iffvfxm96m24ygrbm26a820arpcmxkp7k4x"))))
    (properties `((upstream-name . "hailgun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-email-validate)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/robertmassaioli/hailgun")
    (synopsis "Mailgun REST api interface for Haskell.")
    (description
     "Mailgun is an online service that sends emails. It is a great point of
integration for many SaaS services and this Haskell library cleanly interfaces
with Mailgun so that you can send emails from your Haskell applications.")
    (license license:expat)))

haskell-8.4-hailgun

(define-public haskell-8.4-haskell-tools-backend-ghc
  (package
    (name "haskell-8.4-haskell-tools-backend-ghc")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-backend-ghc/haskell-tools-backend-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c054gvnn38r5vlpka5jsvq3n8lcn3j77jg45g1zl1az0099mzhl"))))
    (properties `((upstream-name . "haskell-tools-backend-ghc")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/nboldi/haskell-tools")
    (synopsis "Creating the Haskell-Tools AST from GHC's representations")
    (description
     "This package collects information from various representations of a Haskell program in GHC. Basically GHC provides us with the parsed, the renamed and the type checked representation of the program, if it was type correct. Each version contains different information. For example, the renamed AST contains the unique names of the definitions, however, template haskell splices are already resolved and thus missing from that version of the AST. To get the final representation we perform a transformation on the parsed and renamed representation, and then use the type checked one to look up the types of the names. The whole transformation is defined in the `Modules` module. Other modules define the functions that convert elements of the GHC AST to our AST.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-backend-ghc

(define-public haskell-8.4-haskell-tools-prettyprint
  (package
    (name "haskell-8.4-haskell-tools-prettyprint")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-prettyprint/haskell-tools-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01j212inqx7hq24kcw7n0619bgz7bj576xrh06h10n0wqhd6qfbq"))))
    (properties `((upstream-name . "haskell-tools-prettyprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "Pretty printing of Haskell-Tools AST")
    (description
     "Converts the Haskell-Tools AST to text. Prepares the AST for this conversion. If the AST was created from the GHC AST this pretty printing will result in the original source code. Generated AST parts will get the default formatting. Works using the source annotations that are present in the AST. Creates a rose tree first to simplify the conversion.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-prettyprint

(define-public haskell-8.4-hpack
  (package
    (name "haskell-8.4-hpack")
    (version "0.28.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpack/hpack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18w0h76jdp3mk9vin8da9iz3cwhcxmw787xy8wlh8bxcpcr16q5r"))))
    (properties `((upstream-name . "hpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ap72p8k2nr0q8x0sn9z9x9spn2ld0vm93dbnhz1ckxmn3nc68yy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "An alternative format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-8.4-hpack

(define-public haskell-8.4-http-conduit
  (package
    (name "haskell-8.4-http-conduit")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iay4hr0mj8brkxvgkv1liqa8irl9axfc3qhn8qsvcyq4n1l95km"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g6rg8r33q5rmrx5287vjfcqwjacchgzyfc8aqqrhrfz3fq5ll0g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-8.4-http-conduit

(define-public haskell-8.4-hw-balancedparens
  (package
    (name "haskell-8.4-hw-balancedparens")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-balancedparens/hw-balancedparens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0paphyp5icawflbybm40mn8r9ka7a6x128vwqagpiz6mb5zpa8hn"))))
    (properties `((upstream-name . "hw-balancedparens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-hw-excess)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-balancedparens#readme")
    (synopsis "Balanced parentheses")
    (description "Balanced parentheses.")
    (license license:bsd-3)))

haskell-8.4-hw-balancedparens

(define-public haskell-8.4-ihaskell
  (package
    (name "haskell-8.4-ihaskell")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell/ihaskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r71bijgfcsgsymg9aqjkgplg8c9g65zddr7dqf7d3mv2bpb5ain"))))
    (properties `((upstream-name . "ihaskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-binpkgdb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-ghc-parser)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hlint)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-ipython-kernel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-shelly)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-system-argv0)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A Haskell backend kernel for the IPython project.")
    (description
     "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via
a console or notebook interface. Additional packages may be installed to provide richer data visualizations.")
    (license license:expat)))

haskell-8.4-ihaskell

(define-public haskell-8.4-irc-conduit
  (package
    (name "haskell-8.4-irc-conduit")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-conduit/irc-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lividbrrc2yydqp55xqji8q6wigb49skrzw9vki6iivxcszka5h"))))
    (properties `((upstream-name . "irc-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-irc)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/barrucadu/irc-conduit")
    (synopsis "Streaming IRC message library using conduits.")
    (description
     "IRC messages consist of an optional identifying prefix, a command
name, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>
package provides a low-level decoding and encoding scheme for
messages in terms of ByteStrings, but using this relies on matching
names of commands as strings, and unpacking this decoded structure
yourself. This package takes it a little further, providing an ADT
for IRC messages and sources, and conduits which attempt to decode
and encode messages appropriately.

In addition to providing conduits for automatically handling
streaming messages, there are also helper functions for connecting
to an IRC server and hooking up conduits to the socket.")
    (license license:expat)))

haskell-8.4-irc-conduit

(define-public haskell-8.4-ixset-typed
  (package
    (name "haskell-8.4-ixset-typed")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed/ixset-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "135cfc8d39qv02sga03gsym1yfajf0l5ci1s6q9n1xpb9ignblx8"))))
    (properties `((upstream-name . "ixset-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kfklsbjn4gmx76vl7vm1s149f13h2p537930yaq8s2671lzc79p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-safecopy)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
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

haskell-8.4-ixset-typed

(define-public haskell-8.4-koofr-client
  (package
    (name "haskell-8.4-koofr-client")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/koofr-client/koofr-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bz7akd7sssn1gzqfvr0y343771zk7dn1n3as0m93wg4ifpz1dia"))))
    (properties `((upstream-name . "koofr-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qaipcg9n93z0za2a8jy3mv73a3q2b1dv98v2g5wwcv1qx7rvvhv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/edofic/koofr-api-hs                       ")
    (synopsis "Client to Koofr API")
    (description
     "Koofr is a storage as a service provider located in Europe. See https://koofr.eu for more info. This is an API wrapper that simplifies working with files.
Filesystem roots are called mounts and cannot be manipulated through api.
The API is contained in a type class in order to allow mocking. Mock runner and wider API coverage coming soon.")
    (license license:expat)))

haskell-8.4-koofr-client

(define-public haskell-8.4-kraken
  (package
    (name "haskell-8.4-kraken")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kraken/kraken-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12l24z6alscbdicp11nfc8fwmlhk5mjdjyh6xdqyvlzphp5yfp1k"))))
    (properties `((upstream-name . "kraken") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1l4i9nhwvy958ka6l6gb5w5cxgjhdm1h7ycvcc2nrqlw2iwk16v1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/kraken")
    (synopsis "Kraken.io API client")
    (description
     "Kraken is a robust, ultra-fast image optimizer and compressor with
best-in-class algorithms.")
    (license license:expat)))

haskell-8.4-kraken

(define-public haskell-8.4-language-puppet
  (package
    (name "haskell-8.4-language-puppet")
    (version "1.3.20.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-puppet/language-puppet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gak1v8p6fnrac7br2gvz3wg8mymm82gyv4wbdcp5rkj7ncm19vs"))))
    (properties `((upstream-name . "language-puppet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-filecache)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hruby)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-operational)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-parallel-io)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pcre-utils)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-strict-base-types)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages ruby) ruby-3.2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "Tools to parse and evaluate the Puppet DSL.")
    (description
     "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulation of complex interactions between nodes, Puppet master replacement, and more !")
    (license license:bsd-3)))

haskell-8.4-language-puppet

(define-public haskell-8.4-machines-directory
  (package
    (name "haskell-8.4-machines-directory")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines-directory/machines-directory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d6yfh26g9gs406ywc42ascnxcfcz2isfa6j921xikzndzdhg744"))))
    (properties `((upstream-name . "machines-directory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-machines)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-machines-io)))
    (home-page "http://github.com/aloiscochard/machines-directory")
    (synopsis "Directory (system) utilities for the machines library")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-machines-directory

(define-public haskell-8.4-mbug
  (package
    (name "haskell-8.4-mbug")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mbug/mbug-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pa3myyd2qrb14797hix4dh0ajpwr49219x5bf030yps6b0hsi91"))))
    (properties `((upstream-name . "mbug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scalpel-core)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://gitlab.com/iu-guest/mbug")
    (synopsis "download bugs mailboxes")
    (description "See readme at https://gitlab.com/iu-guest/mbug")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-mbug

(define-public haskell-8.4-mmark-cli
  (package
    (name "haskell-8.4-mmark-cli")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-cli/mmark-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nb17k23bs21qi7a888qp81w682ax2qvih9fbvdkdh6c2n6yklrp"))))
    (properties `((upstream-name . "mmark-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0i3gvfgm4bfbdyflhhaf4gdr7cbkw51i330f25rgha9k3s4v59w3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-mmark)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-mmark-ext)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-stache)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to MMark markdown processor")
    (description "Command line interface to MMark markdown processor.")
    (license license:bsd-3)))

haskell-8.4-mmark-cli

(define-public haskell-8.4-morte
  (package
    (name "haskell-8.4-morte")
    (version "1.6.20")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/morte/morte-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01m382137sa9if332y9aag8fl77f4sd3i8kxz5cp8g1p10iyjjbl"))))
    (properties `((upstream-name . "morte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-Earley)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-code-page)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-system-fileio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/morte")
    (synopsis "A bare-bones calculus of constructions")
    (description
     "Morte is a typed, purely functional, and strongly normalizing
intermediate language designed for whole-program super-optimization.  Use
this library to type-check, optimize, parse, pretty-print, serialize and
deserialize expressions in this intermediate language.

This library also installs an executable that you can use to type-check and
optimize a @@morte@@ program.

\"Morte.Core\" contains the core calculus of constructions for this language

\"Morte.Lexer\" contains the @@alex@@-generated lexer for Morte

\"Morte.Parser\" contains the parser for Morte

Read \"Morte.Tutorial\" to learn how to use this library")
    (license license:bsd-3)))

haskell-8.4-morte

(define-public haskell-8.4-mysql-haskell-nem
  (package
    (name "haskell-8.4-mysql-haskell-nem")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-haskell-nem/mysql-haskell-nem-"
                    version ".tar.gz"))
              (sha256
               (base32
                "038zf940jw7xigv6gp8rjg5zch4hdd1rc3w6yypsg5nwdsvnh23s"))))
    (properties `((upstream-name . "mysql-haskell-nem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-mysql-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lorenzo/mysql-haskell-nem#readme")
    (synopsis "Adds a interface like mysql-simple to mysql-haskell.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-mysql-haskell-nem

(define-public haskell-8.4-mysql-haskell-openssl
  (package
    (name "haskell-8.4-mysql-haskell-openssl")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-haskell-openssl/mysql-haskell-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pm5vd2gpb1x68n2i5brvspngfplp283jlw9a351z2yrnpwmwd24"))))
    (properties `((upstream-name . "mysql-haskell-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-mysql-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-tcp-streams)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-tcp-streams-openssl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wire-streams)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/winterland1989/mysql-haskell")
    (synopsis "TLS support for mysql-haskell package using openssl")
    (description "TLS support for mysql-haskell package using openssl")
    (license license:bsd-3)))

haskell-8.4-mysql-haskell-openssl

(define-public haskell-8.4-not-gloss
  (package
    (name "haskell-8.4-not-gloss")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-GLUT)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-bmp)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-spatial-math)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)))
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

haskell-8.4-not-gloss

(define-public haskell-8.4-oauthenticated
  (package
    (name "haskell-8.4-oauthenticated")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)))
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

haskell-8.4-oauthenticated

(define-public haskell-8.4-opensource
  (package
    (name "haskell-8.4-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-8.4-opensource

(define-public haskell-8.4-persistent-iproute
  (package
    (name "haskell-8.4-persistent-iproute")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-iproute/persistent-iproute-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amzxmwispqi29ln50mfj43i1srl53n5iz7lsq8rxhd1x8fa35gm"))))
    (properties `((upstream-name . "persistent-iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ip4r")
       #:cabal-revision
       ("1" "1jly9db968q5j5ly75f77hwxrhky3s6xx8ydgsjn5cdr9rc4iz8k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-aeson-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/greydot/persistent-iproute")
    (synopsis "Persistent instances for types in iproute")
    (description
     "Persistent instances and operators for types in iproute to use with PostgreSQL.")
    (license license:bsd-3)))

haskell-8.4-persistent-iproute

(define-public haskell-8.4-persistent-mysql
  (package
    (name "haskell-8.4-persistent-mysql")
    (version "2.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mysql/persistent-mysql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m76hsrgv118bg6sawna6xwg30q8vl84zqa8qc9kll4hzbw2kk40"))))
    (properties `((upstream-name . "persistent-mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mysql)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mysql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-persistent-mysql

(define-public haskell-8.4-persistent-postgresql
  (package
    (name "haskell-8.4-persistent-postgresql")
    (version "2.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-postgresql/persistent-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j9g12fk1rlxhd45frxrj9bkmzrk1qbz611296af8nhxkw5wiwzj"))))
    (properties `((upstream-name . "persistent-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using postgresql.")
    (description "Based on the postgresql-simple package")
    (license license:expat)))

haskell-8.4-persistent-postgresql

(define-public haskell-8.4-persistent-template
  (package
    (name "haskell-8.4-persistent-template")
    (version "2.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-template/persistent-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "008afcy7zbw7bzp9jww8gdldb51kfm0fg4p0x4xcp61gx4679bjc"))))
    (properties `((upstream-name . "persistent-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("4" "08yb4kcmpqmm50lwrbmavd0zhgg6p7bl8dy026xw644cazrzcvr1")))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-compat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, non-relational, multi-backend persistence.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent-template>.")
    (license license:expat)))

haskell-8.4-persistent-template

(define-public haskell-8.4-pinboard
  (package
    (name "haskell-8.4-pinboard")
    (version "0.9.12.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pinboard/pinboard-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12vj9lg7l2nb92j9mydsa8hcy0ql71qnphfhgdm30xrsps79vwd0"))))
    (properties `((upstream-name . "pinboard") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jonschoning/pinboard")
    (synopsis "Access to the Pinboard API")
    (description "
The Pinboard API is a way to interact programatically with
your bookmarks, notes and other Pinboard data. This
library wraps the API exposing functions and data
structures suitable for usage in Haskell programs.")
    (license license:expat)))

haskell-8.4-pinboard

(define-public haskell-8.4-pipes-http
  (package
    (name "haskell-8.4-pipes-http")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-http/pipes-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m9hy9j6nnq2zngz1axbarjc1cwyxw7z36x40qw8yqz1dm39d8a9"))))
    (properties `((upstream-name . "pipes-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "015psgj5wl67p0qdc00nrn717gv354gii70c57n1px5j81b0z5cl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pipes-http")
    (synopsis "HTTP client with pipes interface")
    (description
     "@@pipes-http@@ is a @@pipes@@ wrapper around the @@http-client@@ library")
    (license license:bsd-3)))

haskell-8.4-pipes-http

(define-public haskell-8.4-pipes-misc
  (package
    (name "haskell-8.4-pipes-misc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-misc/pipes-misc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09ldpgza3yanpbsd6g2nlm352fwynq38sf226yp5kip0dqwpwbjf"))))
    (properties `((upstream-name . "pipes-misc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-pipes-category)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-concurrency)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/louispan/pipes-misc#readme")
    (synopsis
     "Miscellaneous utilities for pipes, required by glazier-tutorial")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-pipes-misc

(define-public haskell-8.4-rasterific-svg
  (package
    (name "haskell-8.4-rasterific-svg")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-FontyFruity)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-Rasterific)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-linear)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-svg-tree)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-8.4-rasterific-svg

(define-public haskell-8.4-ratel
  (package
    (name "haskell-8.4-ratel")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kp6f45wn3a7wnsvj08a3b0kp5wwprw4rjrrqqd22yr9mpwx2z7w"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/ratel#readme")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-8.4-ratel

(define-public haskell-8.4-rattletrap
  (package
    (name "haskell-8.4-rattletrap")
    (version "4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rattletrap/rattletrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zmacxdf1k5mnvmrrkkvgjghzr4h948z5g73lavhmfg56i6vpkb2"))))
    (properties `((upstream-name . "rattletrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-binary-bits)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/rattletrap#readme")
    (synopsis "Parse and generate Rocket League replays.")
    (description "Rattletrap parses and generates Rocket League replays.")
    (license license:expat)))

haskell-8.4-rattletrap

(define-public haskell-8.4-refined
  (package
    (name "haskell-8.4-refined")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/refined/refined-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xc4qg2xibf2j0k6dwjj2sp5s58cj4dwcri6zrn42460wxnvyjk6"))))
    (properties `((upstream-name . "refined") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nxkm2igfx6d650jkimw53pn2vhmv5x2xmffp3nyzf2178z15hy4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-these)))
    (home-page "https://github.com/nikita-volkov/refined")
    (synopsis "Refinement types with static and runtime checking")
    (description
     "For an extensive introduction to the library please follow to
<http://nikita-volkov.github.io/refined this blog-post>.")
    (license license:expat)))

haskell-8.4-refined

(define-public haskell-8.4-req
  (package
    (name "haskell-8.4-req")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "08jfq1fsqd57l7csw4fg22wppq06wddh8qxxms5z6bay55nqikc7"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1qb458sldda1msrx8hyp31a5ybny2kdymsxhmsyk9i9c5gk0qqib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis
     "Easy-to-use, type-safe, expandable, high-level HTTP client library")
    (description
     "Easy-to-use, type-safe, expandable, high-level HTTP client library.")
    (license license:bsd-3)))

haskell-8.4-req

(define-public haskell-8.4-rss-conduit
  (package
    (name "haskell-8.4-rss-conduit")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rss-conduit/rss-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qaz3a9fjq5dqky6jvnnk68xbarrqng7bas9r10qzdpy7g1v17ps"))))
    (properties `((upstream-name . "rss-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("3" "1fay2p90wx49b2yky0r6x70az3f0c1b2hwy3rzayza8am2i5r0bn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-atom-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-dublincore-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-lens-simple)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-timerep)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-vinyl)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rss-conduit")
    (synopsis "Streaming parser/renderer for the RSS standard.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-rss-conduit

(define-public haskell-8.4-scotty
  (package
    (name "haskell-8.4-scotty")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scotty/scotty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18lxgnj05p4hk7pp4a84biz2dn387a5vxwzyh1kslns1bra6zn0x"))))
    (properties `((upstream-name . "scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fhpc-coveralls")
       #:cabal-revision
       ("2" "02b8rnj9ram7865xhmlp9wn0f3h2mqnhl9p8wymswv27h6g7xya8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fail)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hpc-coveralls)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
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

haskell-8.4-scotty

(define-public haskell-8.4-sdl2-gfx
  (package
    (name "haskell-8.4-sdl2-gfx")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-linear)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-sdl2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-gfx)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-gfx")
    (synopsis "Bindings to SDL2_gfx.")
    (description "Haskell bindings to SDL2_gfx.")
    (license license:expat)))

haskell-8.4-sdl2-gfx

(define-public haskell-8.4-sdl2-image
  (package
    (name "haskell-8.4-sdl2-image")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-image)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-image")
    (synopsis "Bindings to SDL2_image.")
    (description "Haskell bindings to SDL2_image.")
    (license license:expat)))

haskell-8.4-sdl2-image

(define-public haskell-8.4-sdl2-mixer
  (package
    (name "haskell-8.4-sdl2-mixer")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-sdl2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2-mixer)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-mixer)))
    (home-page "https://hackage.haskell.org/package/sdl2-mixer")
    (synopsis "Bindings to SDL2_mixer.")
    (description "Haskell bindings to SDL2_mixer.")
    (license license:bsd-3)))

haskell-8.4-sdl2-mixer

(define-public haskell-8.4-sdl2-ttf
  (package
    (name "haskell-8.4-sdl2-ttf")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-ttf/sdl2-ttf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xw05jgv6x9xplahwf3jjdq6v3mha4s7bb27kn8x66764glnyrf7"))))
    (properties `((upstream-name . "sdl2-ttf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.")
    (license license:bsd-3)))

haskell-8.4-sdl2-ttf

(define-public haskell-8.4-servant-swagger
  (package
    (name "haskell-8.4-servant-swagger")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger/servant-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gx61328ciprc6ps8xzawfj483s28h5z21zmqczqqh3wfvc8h77w"))))
    (properties `((upstream-name . "servant-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-singleton-bool)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/haskell-servant/servant-swagger")
    (synopsis "Generate Swagger specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs.
Unlike Servant it is language-agnostic and thus is quite popular among developers
in different languages. It also exists for a longer time and has more tools to work with.

This package provides means to generate Swagger specification for a Servant API
and also to partially test whether API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-8.4-servant-swagger

(define-public haskell-8.4-slack-web
  (package
    (name "haskell-8.4-slack-web")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-web/slack-web-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lw7haxp27h6q13763cq1h7ilfv7281q0k794ir66sv2l79jq7a2"))))
    (properties `((upstream-name . "slack-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jpvillaisaza/slack-web")
    (synopsis "Bindings for the Slack web API")
    (description "Haskell bindings for the Slack web API.")
    (license license:expat)))

haskell-8.4-slack-web

(define-public haskell-8.4-soap
  (package
    (name "haskell-8.4-soap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-configurator)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-iconv)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-xml-conduit-writer)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-soap

(define-public haskell-8.4-strive
  (package
    (name "haskell-8.4-strive")
    (version "5.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hxy5znrfcls6bd8hjil97mya3w8zkppfd4jrz0ayz7zidbws5kg"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-gpolyline)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/strive#readme")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-8.4-strive

(define-public haskell-8.4-telegram-bot-simple
  (package
    (name "haskell-8.4-telegram-bot-simple")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/telegram-bot-simple/telegram-bot-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aafj27zj69hvzxv58cz7h8pjbc9c74hmg92swg2sy8ai1rcb34a"))))
    (properties `((upstream-name . "telegram-bot-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1li6b3m9glhfg8agr9h0mrbxpr8zr46l57mzjfdqndm248ddbklv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-cron)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fizruk/telegram-bot-simple#readme")
    (synopsis "Easy to use library for building Telegram bots.")
    (description
     "Please see the README on Github at <https://github.com/fizruk/telegram-bot-simple#readme>")
    (license license:bsd-3)))

haskell-8.4-telegram-bot-simple

(define-public haskell-8.4-wai-app-static
  (package
    (name "haskell-8.4-wai-app-static")
    (version "3.1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-app-static/wai-app-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gnwq6ad5m8w8sqq4dzpz23l5rjdphfsf8h9h27lrvv1prkabc6h"))))
    (properties `((upstream-name . "wai-app-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-print")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-date)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-mockery)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI application for static serving")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-app-static>.")
    (license license:expat)))

haskell-8.4-wai-app-static

(define-public haskell-8.4-wai-handler-launch
  (package
    (name "haskell-8.4-wai-handler-launch")
    (version "3.0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-handler-launch/wai-handler-launch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0019vz9ha2mvliz3drjbj62v26mwhl9bl1vqr06ki40865hrr78f"))))
    (properties `((upstream-name . "wai-handler-launch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mjxbzw3a5wybcp8s4x05rx91p2qaabpfci6w2k6p6nw4rjvfijv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wai-handler-launch")
    (synopsis "Launch a web app in the default browser.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.")
    (license license:expat)))

haskell-8.4-wai-handler-launch

(define-public haskell-8.4-warp-tls
  (package
    (name "haskell-8.4-warp-tls")
    (version "3.2.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls/warp-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17gj295fr98l7mkz2gdz6kahdnmja0sql3kvy2zab6q168g53kc4"))))
    (properties `((upstream-name . "warp-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-tls-session-manager)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "HTTP over TLS support for Warp via the TLS package")
    (description "SSLv1 and SSLv2 are obsoleted by IETF.
We should use TLS 1.2 (or TLS 1.1 or TLS 1.0 if necessary).
HTTP/2 can be negotiated by ALPN.
API docs and the README are available at
<http://www.stackage.org/package/warp-tls>.")
    (license license:expat)))

haskell-8.4-warp-tls

(define-public haskell-8.4-wreq
  (package
    (name "haskell-8.4-wreq")
    (version "0.5.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wreq/wreq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i2f2bxx84l8qzkz9v3qhx5sbl78ysc3vqadfhrxk3h0ljklwfz3"))))
    (properties `((upstream-name . "wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctest" "-f-aws" "-f-httpbin" "-f-developer")
       #:cabal-revision
       ("2" "1rjz4012vp9q7a3szpm8a7rnn62d5cbbp1pp3qwfyi1fgyd5rp6c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.serpentine.com/wreq")
    (synopsis "An easy-to-use HTTP client library.")
    (description
     "
A web client library that is designed for ease of use.

Tutorial: <http://www.serpentine.com/wreq/tutorial.html>

Features include:

* Simple but powerful `lens`-based API

* A solid test suite, and built on reliable libraries like
http-client and lens

* Session handling includes connection keep-alive and pooling, and
cookie persistence

* Automatic response body decompression

* Powerful multipart form and file upload handling

* Support for JSON requests and responses, including navigation of
schema-less responses

* Basic and OAuth2 bearer authentication

* Early TLS support via the tls package")
    (license license:bsd-3)))

haskell-8.4-wreq

(define-public haskell-8.4-ws
  (package
    (name "haskell-8.4-ws")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ws/ws-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00jz7a7x260ix2rg46bmp6c3rjnra9c7j4p0in7cpk2iap28106q"))))
    (properties `((upstream-name . "ws") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-attoparsec-uri)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/athanclark/ws#readme")
    (synopsis "A simple CLI utility for interacting with a websocket")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/ws#readme>")
    (license license:bsd-3)))

haskell-8.4-ws

(define-public haskell-8.4-xml-html-qq
  (package
    (name "haskell-8.4-xml-html-qq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-from-sum)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-heterocephalus)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-html-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-xml-html-qq

(define-public haskell-8.4-yesod-core
  (package
    (name "haskell-8.4-yesod-core")
    (version "1.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-core/yesod-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jwfxcp0hdp1lw63gcqpqbvdrzifyds3x42wk0m5wxy7hj0x0r6a"))))
    (properties `((upstream-name . "yesod-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-clientsession)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-core>")
    (license license:expat)))

haskell-8.4-yesod-core

