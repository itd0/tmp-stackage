;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage017)
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
(define-public haskell-8.6-Chart
  (package
    (name "haskell-8.6-Chart")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-operational)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "A library for generating 2D Charts and Plots")
    (description
     "A library for generating 2D Charts and Plots, with backends provided by
Cairo (<http://hackage.haskell.org/package/Chart-cairo>)
and
Diagrams (<http://hackage.haskell.org/package/Chart-diagrams>).
Documentation: https://github.com/timbod7/haskell-chart/wiki.")
    (license license:bsd-3)))

haskell-8.6-Chart

(define-public haskell-8.6-HTTP
  (package
    (name "haskell-8.6-HTTP")
    (version "4000.3.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yv8mbjicpl7l2017c4dhm49117lblgwpy1llv368wci1vrxf0m6"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mtl1" "-f-warn-as-error" "-f-conduit10" "-f-warp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("1" "1inz9grpl9605bbymy6n5y4as54mlykbsiw8wpm5gl6qvxgrf69w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
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

haskell-8.6-HTTP

(define-public haskell-8.6-TotalMap
  (package
    (name "haskell-8.6-TotalMap")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/TotalMap/TotalMap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1415xyh354i7d5y7c2g2k1gyd3knkdx97gxa1z8bjn9ah5qvd8mw"))))
    (properties `((upstream-name . "TotalMap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)))
    (home-page "https://hackage.haskell.org/package/TotalMap")
    (synopsis "A total map datatype")
    (description
     "Provides a datatype representing a total map using an enum type as keys")
    (license license:expat)))

haskell-8.6-TotalMap

(define-public haskell-8.6-accuerr
  (package
    (name "haskell-8.6-accuerr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://www.github.com/massysett/accuerr")
    (synopsis "Data type like Either but with accumulating error type")
    (description
     "Please see the \"Accuerr\" Haddock documentation for more information.")
    (license license:bsd-3)))

haskell-8.6-accuerr

(define-public haskell-8.6-alternators
  (package
    (name "haskell-8.6-alternators")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alternators/alternators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffk7xhx7n7h5mhb43ss6kprm9mzc0jzdnagz5wdsgqr8a5mnfa4"))))
    (properties `((upstream-name . "alternators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-newtype-generics)))
    (home-page "https://github.com/louispan/alternators#readme")
    (synopsis "Handy functions when using transformers.")
    (description
     "Useful monads built on top of transformers. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-alternators

(define-public haskell-8.6-api-field-json-th
  (package
    (name "haskell-8.6-api-field-json-th")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-8.6-api-field-json-th

(define-public haskell-8.6-atom-basic
  (package
    (name "haskell-8.6-atom-basic")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-basic/atom-basic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vkm5wfsgprs42qjzxchgrpxj3xalpg2zd79n9isvlxsp1krdgi4"))))
    (properties `((upstream-name . "atom-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)))
    (home-page "https://hackage.haskell.org/package/atom-basic")
    (synopsis "Basic Atom feed construction")
    (description
     "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a
relatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed
that can be used to generate feed or entry XML using the types of any
Haskell XML library. Please see the 'Web.Atom' module documentation for
more information.")
    (license license:bsd-3)))

haskell-8.6-atom-basic

(define-public haskell-8.6-avers
  (package
    (name "haskell-8.6-avers")
    (version "0.0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avers/avers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x96fvx0z7z75c39qcggw70qvqnw7kzjf0qqxb3jwg3b0fmdhi8v"))))
    (properties `((upstream-name . "avers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("40" "0wsr91a87kikvibl18knwkglawl9m96scdyd539zpgh6djbzmsqf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-inflections)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-rethinkdb-client-driver)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-scrypt)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/avers")
    (synopsis "Server-side implementation of the Avers storage model")
    (description
     "This is the server-side implementation of the Avers storage model. It is a
Haskell library, intended to be used by your application. The library provides
you with everything you need to write your own Avers server. You can create and
patch objects and collections thereof. It has builtin support for sessions,
authentication and managing blobs. The database is not configurable. Avers is
currently hardcoded to use RethinkDB.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-avers

(define-public haskell-8.6-beam-core
  (package
    (name "haskell-8.6-beam-core")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-core/beam-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l71xvmny0nf6fdhsffvfj764h4d97icgc291kfqz25n511b74r8"))))
    (properties `((upstream-name . "beam-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (home-page "http://travis.athougies.net/projects/beam.html")
    (synopsis
     "Type-safe, feature-complete SQL query and manipulation interface for Haskell")
    (description
     "Beam is a Haskell library for type-safe querying and manipulation of SQL databases.
Beam is modular and supports various backends. In order to use beam, you will need to use
@@beam-core@@ along with a specific backend (such as @@beam-postgres@@ or @@beam-sqlite@@) as
well as the corresponding backend.
For more information, see the user manual and tutorial on
<https://tathougies.github.io/beam GitHub pages>.")
    (license license:expat)))

haskell-8.6-beam-core

(define-public haskell-8.6-bitcoin-tx
  (package
    (name "haskell-8.6-bitcoin-tx")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-tx/bitcoin-tx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "006c55l6q6cknxw0k0kzr8vkv8azapfb4mkax6ac6rih6mjq5f1v"))))
    (properties `((upstream-name . "bitcoin-tx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-bitcoin-script)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-bitcoin-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hexstring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Utility functions for manipulating bitcoin transactions")
    (description
     "This library provides the same functionality as the bitcoin-tx command line
utility, which was introduced in Bitcoin Core v0.10. These functions are
pure and require no communication with a bitcoin daemon.")
    (license license:expat)))

haskell-8.6-bitcoin-tx

(define-public haskell-8.6-boundingboxes
  (package
    (name "haskell-8.6-boundingboxes")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-8.6-boundingboxes

(define-public haskell-8.6-bson-lens
  (package
    (name "haskell-8.6-bson-lens")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bson-lens/bson-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5ixrfgybf80q0x2p80qjy1kqarm2129hmzzqgcpn7jvqbv8fyp"))))
    (properties `((upstream-name . "bson-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-bson)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/jb55/bson-lens")
    (synopsis "BSON lenses")
    (description "Lenses for Data.Bson")
    (license license:expat)))

haskell-8.6-bson-lens

(define-public haskell-8.6-cgi
  (package
    (name "haskell-8.6-cgi")
    (version "3001.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cgi/cgi-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1d0nh5ymkqskkp4yn0gfz4mff8i0cxyw1wws8xxp6k1mg1ywa25k"))))
    (properties `((upstream-name . "cgi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("2" "1y0gh51qzdkmvla5r02vab8i9r90m4qqglb0iyy888yc4lw2v6jj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-multipart)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/cheecheeo/haskell-cgi")
    (synopsis "A library for writing CGI programs")
    (description "This is a Haskell library for writing CGI programs.")
    (license license:bsd-3)))

haskell-8.6-cgi

(define-public haskell-8.6-columnar
  (package
    (name "haskell-8.6-columnar")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/columnar/columnar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qf5fbd9cwc22npww4qsjaj7rxdy2r3rjm19w23a9shqvgc2l6av"))))
    (properties `((upstream-name . "columnar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-enum-text)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-fmt)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-possibly)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/cdornan/columnar#readme")
    (synopsis "A CSV toolkit based on cassava and enum-text")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/columnar#readme>")
    (license license:bsd-3)))

haskell-8.6-columnar

(define-public haskell-8.6-composable-associations
  (package
    (name "haskell-8.6-composable-associations")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-8.6-composable-associations

(define-public haskell-8.6-concise
  (package
    (name "haskell-8.6-concise")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-8.6-concise

(define-public haskell-8.6-conduit-throttle
  (package
    (name "haskell-8.6-conduit-throttle")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-throttle/conduit-throttle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ad3balm1r5jm4jvf26pr1kaiqnzvjznjh5kidk2bknxylbddmld"))))
    (properties `((upstream-name . "conduit-throttle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-throttle-io-stream)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/conduit-throttle#readme")
    (synopsis "Throttle Conduit Producers")
    (description
     "This packages is based on the throttle-io-stream package and provides functionality for throttling Conduit producers according to a provided configuration.")
    (license license:bsd-3)))

haskell-8.6-conduit-throttle

(define-public haskell-8.6-conduit-zstd
  (package
    (name "haskell-8.6-conduit-zstd")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-zstd/conduit-zstd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04h7w2903hgw4gjcx2pg29yinnmfapawvc19hd3r57rr12fzb0c6"))))
    (properties `((upstream-name . "conduit-zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-zstd)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-zstd#readme")
    (synopsis "Conduit-based ZStd Compression")
    (description
     "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)")
    (license license:expat)))

haskell-8.6-conduit-zstd

(define-public haskell-8.6-cpio-conduit
  (package
    (name "haskell-8.6-cpio-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/da-x/cpio-conduit")
    (synopsis "Conduit-based CPIO")
    (description
     "This is a native Haskell implementation of the CPIO protocol over the Conduit library. See <http://www.gnu.org/software/cpio/>.
Only the commonly used CPIO formats are supported (crc and newc).")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-cpio-conduit

(define-public haskell-8.6-cryptonite-conduit
  (package
    (name "haskell-8.6-cryptonite-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-8.6-cryptonite-conduit

(define-public haskell-8.6-data-diverse-lens
  (package
    (name "haskell-8.6-data-diverse-lens")
    (version "4.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-diverse-lens/data-diverse-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nrisgx7yb7qp03s3hxkbygc170fggbi3mcid196dhakxv4kl4p"))))
    (properties `((upstream-name . "data-diverse-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-data-diverse)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-has)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/louispan/data-diverse-lens#readme")
    (synopsis
     "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which")
    (description
     "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which
Refer to [ManySpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/WhichSpec.hs) for example usages.")
    (license license:bsd-3)))

haskell-8.6-data-diverse-lens

(define-public haskell-8.6-deque
  (package
    (name "haskell-8.6-deque")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-rerebase)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-strict-list)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-8.6-deque

(define-public haskell-8.6-editor-open
  (package
    (name "haskell-8.6-editor-open")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
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

haskell-8.6-editor-open

(define-public haskell-8.6-errors-ext
  (package
    (name "haskell-8.6-errors-ext")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-ext)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/A1-Triard/errors-ext#readme")
    (synopsis "`bracket`-like functions for `ExceptT` over `IO` monad.")
    (description
     "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-errors-ext

(define-public haskell-8.6-ersatz
  (package
    (name "haskell-8.6-ersatz")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
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

haskell-8.6-ersatz

(define-public haskell-8.6-fmt-for-rio
  (package
    (name "haskell-8.6-fmt-for-rio")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fmt-for-rio/fmt-for-rio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hxf1cgch4l5vwnsg4449ing3qi40kpfcwjg4l807sw0b18ccwar"))))
    (properties `((upstream-name . "fmt-for-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-enum-text-rio)))
    (home-page "https://github.com/cdornan/fmt-for-rio#readme")
    (synopsis "Adaptor for getting fmt to work with rio")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/fmt-for-rio#readme>")
    (license license:bsd-3)))

haskell-8.6-fmt-for-rio

(define-public haskell-8.6-focuslist
  (package
    (name "haskell-8.6-focuslist")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-focuslist

(define-public haskell-8.6-folds
  (package
    (name "haskell-8.6-folds")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-foptimize")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-reify)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.fpcomplete.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-8.6-folds

(define-public haskell-8.6-fuzzy-dates
  (package
    (name "haskell-8.6-fuzzy-dates")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-dates/fuzzy-dates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hanmwzr1g11am4z3r9wrkzfycvk76a03cg9bqpifidv7y9hcd73"))))
    (properties `((upstream-name . "fuzzy-dates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-hourglass)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-8.6-fuzzy-dates

(define-public haskell-8.6-fuzzyset
  (package
    (name "haskell-8.6-fuzzyset")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzyset/fuzzyset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r23xp3c4f1y0kx0kcg4z83rfxl6swciysb3cy7z6yv35fs8bs4q"))))
    (properties `((upstream-name . "fuzzyset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-metrics)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/laserpants/fuzzyset-haskell")
    (synopsis "Fuzzy set for approximate string matching")
    (description
     "This library is based on the Python and JavaScript libraries with the same name.")
    (license license:bsd-3)))

haskell-8.6-fuzzyset

(define-public haskell-8.6-generics-eot
  (package
    (name "haskell-8.6-generics-eot")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-eot/generics-eot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6zhs6l1xcig66757664f1bchzlm4f1ijvg5dsnacq05jbdxrlv"))))
    (properties `((upstream-name . "generics-eot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-interpolate)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mockery)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-shake)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-8.6-generics-eot

(define-public haskell-8.6-generics-sop-lens
  (package
    (name "haskell-8.6-generics-sop-lens")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop-lens/generics-sop-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cm3xnz5h1pxhvbgl8mm16fg8y339m6wvm6nlqmsm0jh37gvqc2a"))))
    (properties `((upstream-name . "generics-sop-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ghgh91wd764firxc2s083jzr38w51fg0ry2b7s1wn71mnvzb893")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-8.6-generics-sop-lens

(define-public haskell-8.6-glaze
  (package
    (name "haskell-8.6-glaze")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glaze/glaze-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18925rqf3ah1k7xcb15zk0gcbc4slvvhr5lsz32fh96gid089cdv"))))
    (properties `((upstream-name . "glaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/louispan/glaze#readme")
    (synopsis
     "Framework for rendering things with metadata/headers and values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-glaze

(define-public haskell-8.6-graylog
  (package
    (name "haskell-8.6-graylog")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/graylog/graylog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10h0d87gvvg4bznnlj9ad0ppjz0nibmcrrlmrcwjrl583pk7709d"))))
    (properties `((upstream-name . "graylog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-aeson-casing)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/AndrewRademacher/haskell-graylog")
    (synopsis "Support for graylog output.")
    (description "Support for sending GELF formatted messages to graylog over
chunked UDP.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-graylog

(define-public haskell-8.6-grouped-list
  (package
    (name "haskell-8.6-grouped-list")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/grouped-list/grouped-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bs8rkdrg82v3k08icl6fsgdyfz8m0vkvsbxpm3iym01xcfmzzal"))))
    (properties `((upstream-name . "grouped-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page
     "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md")
    (synopsis "Grouped lists. Equal consecutive elements are grouped.")
    (description
     "Grouped lists work like regular lists, except for two conditions:

* Grouped lists are always finite. Attempting to construct an infinite
grouped list will result in an infinite loop.

* Grouped lists internally represent consecutive equal elements as only
one, hence the name of /grouped lists/.

This mean that grouped lists are ideal for cases where the list has many
repetitions (like @@[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@@, although they might
present some deficiencies in the absent of repetitions.")
    (license license:bsd-3)))

haskell-8.6-grouped-list

(define-public haskell-8.6-hackage-security
  (package
    (name "haskell-8.6-hackage-security")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-security/hackage-security-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08bwawc7ramgdh54vcly2m9pvfchp0ahhs8117jajni6x4bnx66v"))))
    (properties `((upstream-name . "hackage-security") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase48" "-fuse-network-uri" "-f-old-directory")
       #:cabal-revision
       ("6" "1xs2nkzlvkdz8g27yzfxbjdbdadfmgiydnlpn5dm77cg18r495ay")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ed25519)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell/hackage-security")
    (synopsis "Hackage security library")
    (description "The hackage security library provides both server and
client utilities for securing the Hackage package server
(<http://hackage.haskell.org/>).  It is based on The Update
Framework (<http://theupdateframework.com/>), a set of
recommendations developed by security researchers at
various universities in the US as well as developers on the
Tor project (<https://www.torproject.org/>).

The current implementation supports only index signing,
thereby enabling untrusted mirrors. It does not yet provide
facilities for author package signing.

The library has two main entry points:
\"Hackage.Security.Client\" is the main entry point for
clients (the typical example being @@cabal@@), and
\"Hackage.Security.Server\" is the main entry point for
servers (the typical example being @@hackage-server@@).")
    (license license:bsd-3)))

haskell-8.6-hackage-security

(define-public haskell-8.6-haskell-lsp-types
  (package
    (name "haskell-8.6-haskell-lsp-types")
    (version "0.15.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp-types/haskell-lsp-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ky20lpgbdiijh3z6ilf7jn7cyxl2kshqnm2p4dgabfh97gbf8bb"))))
    (properties `((upstream-name . "haskell-lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-8.6-haskell-lsp-types

(define-public haskell-8.6-haskell-spacegoo
  (package
    (name "haskell-8.6-haskell-spacegoo")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-spacegoo/haskell-spacegoo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g6ximrv5jwibklkyr74vy3qkx8mv4xbpc7f6w1qg9gnlylzmcqy"))))
    (properties `((upstream-name . "haskell-spacegoo") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-vector-space)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/haskell-spacegoo")
    (synopsis "Client API for Rocket Scissor Spacegoo")
    (description
     "Using this package you can quickly create code to take
part in a game of Rocket Scissor Spacegoo; see
<https://bitbucket.org/dividuum/rocket-scissor-spacegoo> for more details on the
game.")
    (license license:expat)))

haskell-8.6-haskell-spacegoo

(define-public haskell-8.6-hasty-hamiltonian
  (package
    (name "haskell-8.6-hasty-hamiltonian")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasty-hamiltonian/hasty-hamiltonian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17nc33q9vkq13wp5dqrq2vq6bz408ll8h84fg7mapks5w5r9sag6"))))
    (properties `((upstream-name . "hasty-hamiltonian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k883ziy63p3zmpyfzck5jw2143b6ijcsvwi704rp94pvh0vk02z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-ad)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mcmc-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.com/jtobin/hasty-hamiltonian")
    (synopsis "Speedy traversal through parameter space.")
    (description
     "Gradient-based traversal through parameter space.

This implementation of the HMC algorithm uses 'lens' as a means to operate over
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

haskell-8.6-hasty-hamiltonian

(define-public haskell-8.6-hedgehog
  (package
    (name "haskell-8.6-hedgehog")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1058d5fcv3hhvlx34a8xkg8r75p93l2yhacdbga8d4radiayy34f"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0y9glrf68jx8h8wsrrcdgxwmf0im1rh3g050mf0lk8iv0cdvdd2m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-concurrent-output)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-erf)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-lifted-async)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-wl-pprint-annotated)))
    (home-page "https://hedgehog.qa")
    (synopsis "Release with confidence.")
    (description
     "<http://hedgehog.qa/ Hedgehog> automatically generates a comprehensive array
of test cases, exercising your software in ways human testers would never
imagine.

Generate hundreds of test cases automatically, exposing even the
most insidious of corner cases. Failures are automatically simplified, giving
developers coherent, intelligible error messages.

To get started quickly, see the <https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-example examples>.")
    (license license:bsd-3)))

haskell-8.6-hedgehog

(define-public haskell-8.6-hexml-lens
  (package
    (name "haskell-8.6-hexml-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-foundation)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hexml)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-8.6-hexml-lens

(define-public haskell-8.6-hschema
  (package
    (name "haskell-8.6-hschema")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hschema/hschema-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s454yizymjnn7hcl5vxbqifx1g7k7sw4qrzgns5gjnhgiswy61j"))))
    (properties `((upstream-name . "hschema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-invariant)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alonsodomin/haskell-schema#readme")
    (synopsis "Describe schemas for your Haskell data types.")
    (description
     "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-hschema

(define-public haskell-8.6-http-client
  (package
    (name "haskell-8.6-http-client")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client/http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9rnbp8lwkd4whi2anniywi4y1bn9kx6nzfigfvz28d7pn7i4in"))))
    (properties `((upstream-name . "http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "An HTTP client engine")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.6-http-client

(define-public haskell-8.6-http-link-header
  (package
    (name "haskell-8.6-http-link-header")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0swjwxzghl1vl1j6hfk6lzwz9fcrsvbazinpjf8by6cjn2ylbyyl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis
     "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\".")
    (description "https://codeberg.org/valpackett/http-link-header")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-http-link-header

(define-public haskell-8.6-http-streams
  (package
    (name "haskell-8.6-http-streams")
    (version "0.8.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kl668ggxz5wzvziagw9inmmwb0l5x2r00nf4p7wm0pnl8m19l2b"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-common)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-openssl-streams)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/afcowie/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "/Overview/

An HTTP client, using the Snap Framework's 'io-streams' library to
hande the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-8.6-http-streams

(define-public haskell-8.6-httpd-shed
  (package
    (name "haskell-8.6-httpd-shed")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/httpd-shed/httpd-shed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dgdimpzr7pxk7pqvyin6j87gmvnf0rm35gzhmna8qr835wy3sr"))))
    (properties `((upstream-name . "httpd-shed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fnetwork-uri" "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-network-bsd)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)))
    (home-page "https://hackage.haskell.org/package/httpd-shed")
    (synopsis "A simple web-server with an interact style API")
    (description
     "This web server promotes a Request to IO Response function
into a local web server. The user can decide how to interpret
the requests, and the library is intended for implementing Ajax APIs.")
    (license license:bsd-3)))

haskell-8.6-httpd-shed

(define-public haskell-8.6-hw-conduit-merges
  (package
    (name "haskell-8.6-hw-conduit-merges")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit-merges/hw-conduit-merges-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1302b2dsvv8yazvq5vz9cs2fbqvdsh6zyprijb41g881riqa5klv"))))
    (properties `((upstream-name . "hw-conduit-merges") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1azji7zc0ygqjgd2shbqw7p8a2ll2qp3b1yq5i3665448brlwpvc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-conduit-merges

(define-public haskell-8.6-hw-json-simd
  (package
    (name "haskell-8.6-hw-json-simd")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qpk7vzya28y56qlb2fmx3ic39n9x2z8dh932rn0fp2d8n4dw8sa"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-8.6-hw-json-simd

(define-public haskell-8.6-hxt
  (package
    (name "haskell-8.6-hxt")
    (version "9.3.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt/hxt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0836k65px3w9c5h1h2bmzq5a7mp6ajxwvfg3pfr2kbxwkgc0j63j"))))
    (properties `((upstream-name . "hxt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-profile")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hxt-regex-xmlschema)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "A collection of tools for processing XML with Haskell.")
    (description
     "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,
but introduces a more general approach for processing XML with Haskell.
The Haskell XML Toolbox uses a generic data model for representing XML documents,
including the DTD subset and the document subset, in Haskell.
It contains a validating XML parser, a HTML parser, namespace support,
an XPath expression evaluator, an XSLT library, a RelaxNG schema validator
and funtions for serialization and deserialization of user defined data.
The library makes extensive use of the arrow approach for processing XML.
Since version 9 the toolbox is partitioned into various (sub-)packages.
This package contains the core functionality,
hxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,
hxt-regex-xmlschema contain the extensions.
hxt-unicode contains encoding and decoding functions,
hxt-charproperties char properties for unicode and XML.

Changes from 9.3.1.15: Bug in quoting PI instructions in showXmlTrees fixed

Changes from 9.3.1.14: For ghc-7.10 network-uri is automatically selected

Changes from 9.3.1.13: ghc-7.10 compatibility

Changes from 9.3.1.12: Bug when unpickling an empty attribute value removed

Changes from 9.3.1.11: Bug fix in haddock comments

Changes from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed

Changes from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1

Changes from 9.3.1.8: Bug in hread removed

Changes from 9.3.1.7: Foldable and Traversable instances for NTree added
Control.Except used instead of deprecated Control.Error

Changes from 9.3.1.6: canonicalize added in hread and hreadDoc

Changes from 9.3.1.4: conditionally (no default)
dependency from networt changed to network-uri with flag \"network-uri\"

Changes from 9.3.1.3: warnings from ghc-7.8.1 removed

Changes from 9.3.1.2: https as protocol added

Changes from 9.3.1.1: new parser xreadDoc

Changes from 9.3.1.0: in readString all input decoding switched off

Changes from 9.3.0.1: lower bound for network set to be >= 2.4

Changes from 9.3.0: upper bound for network set to be < 2.4
(URI signatures changed in 2.4)

Changes from 9.2.2: XMLSchema validation integrated

Changes from 9.2.1: user defined mime type handlers added

Changes from 9.2.0: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-8.6-hxt

(define-public haskell-8.6-imagesize-conduit
  (package
    (name "haskell-8.6-imagesize-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-8.6-imagesize-conduit

(define-public haskell-8.6-insert-ordered-containers
  (package
    (name "haskell-8.6-insert-ordered-containers")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/insert-ordered-containers/insert-ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ikjhg0pdfpnx1d645r92k2dwlk7y935j1w5lcsk23nzpwhbkxja"))))
    (properties `((upstream-name . "insert-ordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hlinc8nnjlzc6ds3wf8jvkihpcbhz2dk0rqxq1ns0c5zbbhnylq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-8.6-insert-ordered-containers

(define-public haskell-8.6-intro
  (package
    (name "haskell-8.6-intro")
    (version "0.5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intro/intro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i5cpa5jx82nb1gi1wdhgnbmxlb7s4nbya46k6byajf7g50i5qp8"))))
    (properties `((upstream-name . "intro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "19zndrl4rgzjrg97cbc2cyiqih15gaijgibz0vppphcbmn7v9fl8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-writer-cps-mtl)))
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

haskell-8.6-intro

(define-public haskell-8.6-invertible
  (package
    (name "haskell-8.6-invertible")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible/invertible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fwdbg0pimi9hfyp20fsvyxpicjd7jxg4vsh5kykkxviyfhxl2ha"))))
    (properties `((upstream-name . "invertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-arrows" "-finvariant" "-flens" "-fpartial-isomorphisms" "-f-piso" "-fsemigroupoids" "-f-typecompose")
       #:cabal-revision
       ("1" "0zd2j4r0vkxkjpwa39nfjj2w9q7n9i2s9v1349rcxi3syk7f46w7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-invariant)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-partial-isomorphisms)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)))
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

haskell-8.6-invertible

(define-public haskell-8.6-json-feed
  (package
    (name "haskell-8.6-json-feed")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-feed/json-feed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sagnnk73510vxdhqr2798k1s00jcsp6yfb689fpar360vfzwssm"))))
    (properties `((upstream-name . "json-feed") (hidden? . #f)))
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
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)))
    (home-page "https://github.com/tfausak/json-feed#readme")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-8.6-json-feed

(define-public haskell-8.6-jsonpath
  (package
    (name "haskell-8.6-jsonpath")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonpath/jsonpath-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b889p98z2sq93n996p0r892dsvy4is2c10xwpag1vbr8dlr614c"))))
    (properties `((upstream-name . "jsonpath") (hidden? . #f)))
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
                     haskell-8.6-aeson-casing)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-8.6-jsonpath

(define-public haskell-8.6-language-nix
  (package
    (name "haskell-8.6-language-nix")
    (version "2.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-nix/language-nix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kqsw0hk03wdn7mszyjgi38nxk1wmhbxfv6di3irrhsaf807657h"))))
    (properties `((upstream-name . "language-nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zv12p4ralrks0517zs52rzmzmsxxkcxkqz7zijfgcsvh6bsmafi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/peti/language-nix#readme")
    (synopsis
     "Data types and useful functions to represent and manipulate the Nix language.")
    (description
     "Data types and useful functions to represent and manipulate the Nix language.")
    (license license:bsd-3)))

haskell-8.6-language-nix

(define-public haskell-8.6-lens-action
  (package
    (name "haskell-8.6-lens-action")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-8.6-lens-action

(define-public haskell-8.6-lens-aeson
  (package
    (name "haskell-8.6-lens-aeson")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k028ycmhz7mnjlrap88fqix4nmmpyy6b88m16kv77d3r8sz04a3"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("6" "1pg5v8fnlqw1krgi3d2a03a0zkjjdv5yp5f5z6q4mlb5jldz99a8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson")
    (license license:expat)))

haskell-8.6-lens-aeson

(define-public haskell-8.6-lens-datetime
  (package
    (name "haskell-8.6-lens-datetime")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
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

haskell-8.6-lens-datetime

(define-public haskell-8.6-lens-misc
  (package
    (name "haskell-8.6-lens-misc")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-8.6-lens-misc

(define-public haskell-8.6-lens-process
  (package
    (name "haskell-8.6-lens-process")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-process/lens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05vznfn28a35k3qyjx28jva9d5acgzcdzn8s24mkb8mz1l8722d6"))))
    (properties `((upstream-name . "lens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1znsf836c0jar22ll6s01q8nb2zq8vgrz2nni0mkagx02fknshai")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/emilypi/lens-process")
    (synopsis "Optics for system processes")
    (description
     "'lens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-8.6-lens-process

(define-public haskell-8.6-lens-properties
  (package
    (name "haskell-8.6-lens-properties")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-8.6-lens-properties

(define-public haskell-8.6-lens-regex
  (package
    (name "haskell-8.6-lens-regex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-8.6-lens-regex

(define-public haskell-8.6-lens-regex-pcre
  (package
    (name "haskell-8.6-lens-regex-pcre")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex-pcre/lens-regex-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fbhwzs7mwz9c0l3p34zcgfvqxwxlhr3abz9gawlraiiypmz0iby"))))
    (properties `((upstream-name . "lens-regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-regex-pcre#readme")
    (synopsis "A lensy interface to regular expressions")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>")
    (license license:bsd-3)))

haskell-8.6-lens-regex-pcre

(define-public haskell-8.6-linear
  (package
    (name "haskell-8.6-linear")
    (version "1.20.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h7yqigq593n7wsl7nz6a5f137wznm7y679wsii0ph0zsc4v5af5"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")
       #:cabal-revision
       ("3" "0bbbp3asf938vf8bhvwxzfl137apjlff8xmcjp4sy1j792bw8dsg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-8.6-linear

(define-public haskell-8.6-machines
  (package
    (name "haskell-8.6-machines")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s3pvdklanw6a41pyyqrplm3vid63dpy6vd6qhp86dnb4wp2ppkj"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1h0qq6kxv4kc0j0rmx7rhwhvfg1hc08r10q152km4p8kgshcwlig")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<https://dl.dropbox.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-8.6-machines

(define-public haskell-8.6-metrics
  (package
    (name "haskell-8.6-metrics")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
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

haskell-8.6-metrics

(define-public haskell-8.6-monoidal-containers
  (package
    (name "haskell-8.6-monoidal-containers")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoidal-containers/monoidal-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15mh2hx7a31gr5zb2g30h2fcnb3a2wvv2y8hvzzk5l9cr2nvhcm1"))))
    (properties `((upstream-name . "monoidal-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18m2r5kfvkss8vh537vh2k4zbpncmwadg1g4pzsw0rdmkyn7lyjd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-newtype)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/bgamari/monoidal-containers")
    (synopsis "Containers with monoidal accumulation")
    (description
     "Containers with merging via monoidal accumulation. The 'Monoid' instances
provided by the @@containers@@ and @@unordered-containers@@ packages merge
structures in a left-biased manner instead of using the underlying monoidal
structure of the value.

This package wraps the types provided by these packages, but provides @@Monoid@@
instances implemented in terms of the value type's 'mappend'. For instance,
the @@Monoid@@ @@Map@@ instance looks like,

@@
instance (Ord k, Semigroup a) => Monoid (MonoidalMap k a)
@@")
    (license license:bsd-3)))

haskell-8.6-monoidal-containers

(define-public haskell-8.6-network-messagepack-rpc
  (package
    (name "haskell-8.6-network-messagepack-rpc")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc/network-messagepack-rpc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "118agkkbvfyynk6qg5yzazbs0s7w0bw9n0ndj8nm35yy6cil9lky"))))
    (properties `((upstream-name . "network-messagepack-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-data-msgpack)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc")
    (synopsis "MessagePack RPC")
    (description
     "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.")
    (license license:bsd-3)))

haskell-8.6-network-messagepack-rpc

(define-public haskell-8.6-nvim-hs
  (package
    (name "haskell-8.6-nvim-hs")
    (version "2.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0amlvrh213n9cfqax5gcy7zq3fd8q9hcskhjkbayvzsyf5hhr1rn"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1v52rmk7hbdn40964r50jjz3lanfc5q8xrdqpv1wmwviw3j4rip8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-foreign-store)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-messagepack)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs")
    (synopsis "Haskell plugin backend for neovim")
    (description
     "This package provides a plugin provider for neovim. It allows you to write
plugins for one of the great editors of our time in the best programming
language of our time! ;-)

You should find all the documentation you need inside the \"Neovim\" module.
Most other modules are considered internal, so don't be annoyed if using
things from there may break your code!

The following modules may also be of interest and they should not change
their API: \"Neovim.Quickfix\"

If you want to write unit tests that interact with neovim, \"Neovim.Test\"
provides some useful functions for that.

If you are keen to debug /nvim-hs/ or a module you are writing, take a look
at the \"Neovim.Debug\" module.

If you spot any errors or if you have great ideas, feel free to open an issue
on github.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-nvim-hs

(define-public haskell-8.6-pager
  (package
    (name "haskell-8.6-pager")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-8.6-pager

(define-public haskell-8.6-pipes-extras
  (package
    (name "haskell-8.6-pipes-extras")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0gqqhvq5h6kkz6k4dpvlky7lbrfbgqp30whn7cglaplrqzlfwbvd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-8.6-pipes-extras

(define-public haskell-8.6-postgresql-simple-url
  (package
    (name "haskell-8.6-postgresql-simple-url")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-url/postgresql-simple-url-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jg9gvpidrfy2hqixwqsym1l1mnkafmxwq58jpbzdmrbvryga1qk"))))
    (properties `((upstream-name . "postgresql-simple-url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1pvfb61ys58s66dass8qfaxrd4pbkbk8hsbrijds6gybcx3a7nhy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/futurice/postgresql-simple-url")
    (synopsis "Parse postgres:// url into ConnectInfo")
    (description
     "The 'Database.PostgreSQL.Simple.URL' module in this package exports
two helper functions 'parseDatabaseUrl' and 'urlToConnectInfo' to
construct 'ConnectInfo' from URI (or string).

@@
>>> parseDatabaseUrl \"postgres://foo:bar@@example.com:2345/database\"
Just (ConnectInfo \"example.com\" 2345 \"foo\" \"bar\" \"database\")
@@")
    (license license:expat)))

haskell-8.6-postgresql-simple-url

(define-public haskell-8.6-primitive-extras
  (package
    (name "haskell-8.6-primitive-extras")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-extras/primitive-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hffgvqdrsxml2z834jb1mpywkflcnlymmxp9dmapwg8pcadjzdm"))))
    (properties `((upstream-name . "primitive-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10z7fnz907s7ar15lk3kq62p11bbsksdb0nmg5y7ii0n97mqni96")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-deferred-folds)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-focus)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-list-t)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-rerebase)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/metrix-ai/primitive-extras")
    (synopsis "Extras for the \"primitive\" library")
    (description "")
    (license license:expat)))

haskell-8.6-primitive-extras

(define-public haskell-8.6-project-template
  (package
    (name "haskell-8.6-project-template")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p69ww4rhah2qxragl615wl4a6mk4x9w09am8knmz3s4lxpljlpb"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lq3sqnq0nr0gbvgzp0lqdl3j3mqdmdlf8xsw0j3pjh581xj3k0a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-8.6-project-template

(define-public haskell-8.6-proto-lens-protobuf-types
  (package
    (name "haskell-8.6-proto-lens-protobuf-types")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protobuf-types/proto-lens-protobuf-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j37g1w6b7hph61x7hrvvs7sp5kzl24slmbnlyn8a7z04kbhgr90"))))
    (properties `((upstream-name . "proto-lens-protobuf-types")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lens-family)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-proto-lens)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-proto-lens-runtime)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-proto-lens-setup)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Basic protocol buffer message types.")
    (description
     "This package provides bindings standard protocol message types, for use with the proto-lens library.")
    (license license:bsd-3)))

haskell-8.6-proto-lens-protobuf-types

(define-public haskell-8.6-purescript-bridge
  (package
    (name "haskell-8.6-purescript-bridge")
    (version "0.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/purescript-bridge/purescript-bridge-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jai0vrfw997w7gjs168bk8n2xjw30hnhd82pch5n58w1sy6n6ib"))))
    (properties `((upstream-name . "purescript-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-8.6-purescript-bridge

(define-public haskell-8.6-qnap-decrypt
  (package
    (name "haskell-8.6-qnap-decrypt")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qnap-decrypt/qnap-decrypt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mm08bm2jzcnh1zal7zdiyryl3z5z91ch2vyyl0p29nbwl2q06xb"))))
    (properties `((upstream-name . "qnap-decrypt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-cipher-aes128)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alexkazik/qnap-decrypt#readme")
    (synopsis "Decrypt files encrypted by QNAP's Hybrid Backup Sync")
    (description
     "Please see the README on Github at <https://github.com/alexkazik/qnap-decrypt#readme>")
    (license license:bsd-3)))

haskell-8.6-qnap-decrypt

(define-public haskell-8.6-quickcheck-arbitrary-adt
  (package
    (name "haskell-8.6-quickcheck-arbitrary-adt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-8.6-quickcheck-arbitrary-adt

(define-public haskell-8.6-random-tree
  (package
    (name "haskell-8.6-random-tree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-tree-fun)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-random-tree

(define-public haskell-8.6-references
  (package
    (name "haskell-8.6-references")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/references/references-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03n18skl989ksssi2lv50bns1iw9qixacabs9qvli4b36rnn01xw"))))
    (properties `((upstream-name . "references") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-instance-control)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "https://github.com/lazac/references")
    (synopsis "Selectors for reading and updating data.")
    (description
     "References are data accessors that can read, write or update the accessed infromation through their context. They are first-class values, can be passed in functions, transformed, combined. References generalize lenses, folds and traversals for haskell (see: < https://hackage.haskell.org/package/lens>).

References are more general than field selectors in traditional languages.

* References are first-class values. If there is a struct in C, for example, with an `int` field `fl`, then fl can only be used as part of an expression. One can not generalize a function to take a field selector and transform the selected data or use it in other ways.

* They can have different meanings, while field accessors can only represent data-level containment. They can express uncertain containment (like field selectors of C unions), different viewpoints of the same data, and other concepts.

There are two things that references can do but the previously mentioned access methods don't.

* References can cooperate with monads, for example IO. This opens many new applications.

* References can be added using the @@&+&@@ operator, to create new lenses more easily.

Basic idea taken from the currently not maintained package <https://hackage.haskell.org/package/yall>.

An example use of the references (a logger application that spawns new threads to update a global log):

> logger =
>   (forever $ do
>      log <- logChan ^? chan&logRecord    -- Extract the log record from the received log message
>      thrId <- forkIO (do time <- getTime
>                          ioref&lastLogTime != time $ logDB     -- Update the last logging time mutable log database
>                          let logMsg = senderThread .- show     -- Transform the thread id to a string and
>                                         $ loggingTime .= time  -- update the time
>                                         $ log                  -- inside the log message
>                          ioref&debugInfos !~ addLogEntry log $ logDB  -- update the table of log entries
>                          mvar !- (+1) $ count )
>      mvar !- (thrId:) $ updaters                               -- Record the spawned thread
>     ) `catch` stopUpdaters updaters
>   where stopUpdaters updaters ThreadKilled =
>           mvar&traverse !| killThread $ updaters               -- Kill all spawned threads before stopping

There are a bunch of predefined references for datatypes included in standard libraries.

New references can be created in several ways:

* From getter, setter and updater, using the @@reference@@ function.

* From getter and setter, using one of the simplified functions (@@lens@@, @@simplePartial@@, @@partial@@, ...).

* Using the `Data.Traversal` instance on a datatype to generate a traversal of each element.

* Using lenses from `Control.Lens` package. There are a lot of packages defining lenses, folds and traversals
for various data structures, so it is very useful that all of them can simply be converted into a reference.

* Generating references for newly defined datatypes using the `makeReferences` Template Haskell function.
")
    (license license:bsd-3)))

haskell-8.6-references

(define-public haskell-8.6-rhine-gloss
  (package
    (name "haskell-8.6-rhine-gloss")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhine-gloss/rhine-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq5m74ivkdk15qcqpqs8bp816454k3k2big0av6lq2dzk8cjrll"))))
    (properties `((upstream-name . "rhine-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-dunai)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-rhine)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/rhine-gloss")
    (synopsis "Gloss backend for Rhine")
    (description
     "This package provides a simple wrapper for the `gloss` library,
or rather the function `Graphics.Gloss.play`,
enabling you to write `gloss` applications as signal functions.")
    (license license:bsd-3)))

haskell-8.6-rhine-gloss

(define-public haskell-8.6-salak-yaml
  (package
    (name "haskell-8.6-salak-yaml")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-libyaml)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-salak)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration Loader for yaml")
    (description
     "Yaml support for [salak](https://hackage.haskell.org/package/salak).")
    (license license:expat)))

haskell-8.6-salak-yaml

(define-public haskell-8.6-selda-postgresql
  (package
    (name "haskell-8.6-selda-postgresql")
    (version "0.1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-postgresql/selda-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x7ncc8593lialllgsjdy759cinvgwh4spq2aarfd0j3zv78yvdi"))))
    (properties `((upstream-name . "selda-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")
       #:cabal-revision
       ("1" "0zbx50lw8d5x7lsx9gpy2ql1n2nryhyd6x7w98lbnb3nzn3szzqr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-selda)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-selda-json)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "PostgreSQL backend for the Selda database EDSL.")
    (description "PostgreSQL backend for the Selda database EDSL.
Requires the PostgreSQL @@libpq@@ development libraries to be
installed.")
    (license license:expat)))

haskell-8.6-selda-postgresql

(define-public haskell-8.6-serf
  (package
    (name "haskell-8.6-serf")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-operational)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-8.6-serf

(define-public haskell-8.6-servant
  (package
    (name "haskell-8.6-servant")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-singleton-bool)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant

(define-public haskell-8.6-shell-conduit
  (package
    (name "haskell-8.6-shell-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-monads-tf)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-8.6-shell-conduit

(define-public haskell-8.6-shelly
  (package
    (name "haskell-8.6-shelly")
    (version "1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shelly/shelly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "023fbvbqs5gdwm30j5517gbdcc7fvz0md70dgwgpypkskj3i926y"))))
    (properties `((upstream-name . "shelly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lifted" "-f-build-examples")
       #:cabal-revision
       ("1" "0crf0m077wky76f5nav2p9q4fa5q4yhv5l4bq9hd073dzdaywhz0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hspec-contrib)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-lifted-async)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-system-fileio)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-system-filepath)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (home-page "https://github.com/yesodweb/Shelly.hs")
    (synopsis "shell-like (systems) programming in Haskell")
    (description
     "Shelly provides convenient systems programming in Haskell,
similar in spirit to POSIX shells. Shelly:

* is aimed at convenience and getting things done rather than
being a demonstration of elegance.

* has detailed and useful error messages

* maintains its own environment, making it thread-safe.

* is modern, using Text and system-filepath/system-fileio

Shelly is originally forked from the Shellish package.

See the shelly-extra package for additional functionality.

An overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.6-shelly

(define-public haskell-8.6-simple-sendfile
  (package
    (name "haskell-8.6-simple-sendfile")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-8.6-simple-sendfile

(define-public haskell-8.6-sized-grid
  (package
    (name "haskell-8.6-sized-grid")
    (version "0.1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sized-grid/sized-grid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06qbbih3gn92b85aqk7qx8q4yg56jqh9ncczb66q6sn599xay1s9"))))
    (properties `((upstream-name . "sized-grid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-vector-space)))
    (home-page "https://github.com/edwardwas/sized-grid")
    (synopsis "Multidimensional grids with sized specified at compile time")
    (description
     "`size-grid` allows you to make finite sized grids and have their size and shape confirmed at compile time

Consult the readme for a short tutorial and explanation.")
    (license license:expat)))

haskell-8.6-sized-grid

(define-public haskell-8.6-snap-core
  (package
    (name "haskell-8.6-snap-core")
    (version "1.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-core/snap-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dmfqbsfyk1rkjnnrnajpjfam2xjxgmpfmx10yr5qffgza7gcf0"))))
    (properties `((upstream-name . "snap-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-debug" "-fnetwork-uri")
       #:cabal-revision
       ("1" "0m8vsgrj96a0y9h09szg7gxv9f26yizh4k181ri2sp7ki8p5p7lg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-readable)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "Snap: A Haskell Web Framework (core interfaces and types)")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

This library contains the core definitions and types for the Snap framework,
including:

1. Primitive types and functions for HTTP (requests, responses, cookies,
post/query parameters, etc)

2. A monad for programming web handlers called \\\"Snap\\\", which allows:

* Stateful access to the HTTP request and response objects

* Monadic failure (i.e. MonadPlus/Alternative instances) for declining
to handle requests and chaining handlers together

* Early termination of the computation if you know early what you want
to return and want to prevent further monadic processing

/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\".")
    (license license:bsd-3)))

haskell-8.6-snap-core

(define-public haskell-8.6-speedy-slice
  (package
    (name "haskell-8.6-speedy-slice")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speedy-slice/speedy-slice-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16982nx9br5v37vzmww2di1vmj7y8g59myvhiw3l1fc1nq88mgzg"))))
    (properties `((upstream-name . "speedy-slice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mcmc-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-speedy-slice

(define-public haskell-8.6-stm-conduit
  (package
    (name "haskell-8.6-stm-conduit")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-8.6-stm-conduit

(define-public haskell-8.6-stratosphere
  (package
    (name "haskell-8.6-stratosphere")
    (version "0.40.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xj8bclyfvhdw12jfndg6pivzrbhqjf2qky383n0w6if11cfli1z"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/frontrowed/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-8.6-stratosphere

(define-public haskell-8.6-strict-base-types
  (package
    (name "haskell-8.6-strict-base-types")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)))
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

haskell-8.6-strict-base-types

(define-public haskell-8.6-swish
  (package
    (name "haskell-8.6-swish")
    (version "0.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swish/swish-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r6wfj8x5r3w2gvnhvdkjgn3rq4a4smna81gsxah2ibpwhinjjf1"))))
    (properties `((upstream-name . "swish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-w3ctests" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-intern)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-polyparse)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://gitlab.com/dburke/swish")
    (synopsis "A semantic web toolkit. ")
    (description
     "Swish is a framework, written in the purely functional
programming language Haskell, for performing deductions in
RDF data using a variety of techniques. Swish is conceived
as a toolkit for experimenting with RDF inference, and for
implementing stand-alone RDF file processors (usable in
similar style to CWM, but with a view to being extensible
in declarative style through added Haskell function and data
value declarations). It explores Haskell as \\\"a scripting
language for the Semantic Web\\\".

Swish is a work-in-progress, and currently incorporates:

* Turtle, Notation3 and NTriples input and output. The N3 support is
incomplete (no handling of @@\\@@forAll@@).

* RDF graph isomorphism testing and merging.

* Display of differences between RDF graphs.

* Inference operations in forward chaining, backward chaining and proof-checking modes.

* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.

* Class restriction rule implementation, primarily for datatype inferences.

* RDF formal semantics entailment rule implementation.

* Complete, ready-to-run, command-line and script-driven programs.

Changes are given in the <https://gitlab.com/dburke/swish/raw/master/CHANGELOG> file.

References:

- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>

- <http://www.ninebynine.org/Software/swish-0.2.1.html>

- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>
")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-swish

(define-public haskell-8.6-texmath
  (package
    (name "haskell-8.6-texmath")
    (version "0.11.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03rpxbp43bjs62mmw4hv4785n6f6nbf8kj2y9mma5nzk6i2xs09f"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (home-page "http://github.com/jgm/texmath")
    (synopsis "Conversion between formats used to represent mathematics.")
    (description "The texmath library provides functions to read and
write TeX math, presentation MathML, and OMML (Office
Math Markup Language, used in Microsoft Office).
Support is also included for converting math formats
to Gnu eqn and to pandoc's native format (allowing
conversion, via pandoc, to a variety of different
markup formats).  The TeX reader supports basic LaTeX
and AMS extensions, and it can parse and apply LaTeX
macros.  (See <http://johnmacfarlane.net/texmath here>
for a live demo of bidirectional conversion between LaTeX
and MathML.)

The package also includes several utility modules which
may be useful for anyone looking to manipulate either
TeX math or MathML.  For example, a copy of the MathML
operator dictionary is included.

Use the @@executable@@ flag to install a standalone
executable, @@texmath@@, that by default reads a LaTeX
formula from @@stdin@@ and writes MathML to @@stdout@@.
With flags all the functionality exposed by
'Text.TeXMath' can be accessed through this executable.
(Use the @@--help@@ flag for a description of all
functionality)

The @@texmath@@ executable can also be used as a CGI
script, when renamed as @@texmath-cgi@@.
It will expect query parameters for @@from@@, @@to@@,
@@input@@, and optionally @@inline@@, and return a JSON
object with either @@error@@ and a message or
@@success@@ and the converted result.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-texmath

(define-public haskell-8.6-text-builder
  (package
    (name "haskell-8.6-text-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-deferred-folds)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-8.6-text-builder

(define-public haskell-8.6-text-region
  (package
    (name "haskell-8.6-text-region")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-groups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "https://github.com/mvoidex/text-region")
    (synopsis "Marking text regions")
    (description
     "Provides functions to update text region positions according to text edit actions")
    (license license:bsd-3)))

haskell-8.6-text-region

(define-public haskell-8.6-timelens
  (package
    (name "haskell-8.6-timelens")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-8.6-timelens

(define-public haskell-8.6-trifecta
  (package
    (name "haskell-8.6-trifecta")
    (version "2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trifecta/trifecta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hznd8i65s81xy13i2qc7cvipw3lfb2yhkv53apbdsh6sbljz5sk"))))
    (properties `((upstream-name . "trifecta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0xbwyvwl6f2zylk60f2akwgq03qv49113xil7b1z1s3vlwbn5aj1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-charset)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-fingertree)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-reducers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics")
    (license license:bsd-3)))

haskell-8.6-trifecta

(define-public haskell-8.6-tz
  (package
    (name "haskell-8.6-tz")
    (version "0.1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tz/tz-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1cnin3dlk6xmvk5cz1sjj88djdv1rq87hvwmhc2dj22hgbs3p3ni"))))
    (properties `((upstream-name . "tz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-tzdata)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/nilcons/haskell-tz")
    (synopsis "Efficient time zone handling")
    (description
     "The goal of this package is to provide a library that can read time
zone info files (aka. Olson files), and does time zone conversions
in a /pure/ and /efficient/ way.

We also provide platform-independent and/or compiled-in access to
the standard Time Zone Dabase by the means of the companion @@tzdata@@
package <http://hackage.haskell.org/package/tzdata>.

The package is currently in an alpha phase, I'm still experimenting
with different ideas wrt. scope\\/API\\/implementation\\/etc. All
comments are welcome!")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-tz

(define-public haskell-8.6-uri-encode
  (package
    (name "haskell-8.6-uri-encode")
    (version "1.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-encode/uri-encode-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11miwb5vvnn17m92ykz1pzg9x6s8fbpz3mmsyqs2s4b3mn55haz8"))))
    (properties `((upstream-name . "uri-encode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tools" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://hackage.haskell.org/package/uri-encode")
    (synopsis "Unicode aware uri-encoding.")
    (description "Unicode aware uri-encoding.")
    (license license:bsd-3)))

haskell-8.6-uri-encode

(define-public haskell-8.6-vec
  (package
    (name "haskell-8.6-vec")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vec/vec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0gzypyi4vv5ajysbmnpicm8r2qh95nmmrj9l6hp30b95i36cb5as"))))
    (properties `((upstream-name . "vec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "137f3zjj0fwn3dmynvjg7k4v7k9h24a1gzqfma36hd2svksg8c3d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-fin)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Vec: length-indexed (sized) list")
    (description
     "This package provides length-indexed (sized) lists, also known as vectors.

@@
data Vec n a where
\\    VNil  :: Vec 'Nat.Z a
\\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a
@@

The functions are implemented in four flavours:

* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.

* __pull__: using @@Fin n -> a@@ representation, which fuses well,
but makes some programs hard to write. And

* __data-family__: which allows lazy pattern matching

* __inline__: which exploits how GHC dictionary inlining works, unrolling
recursion if the size of 'Vec' is known statically.

As best approach depends on the application, @@vec@@ doesn't do any magic
transformation. Benchmark your code.

This package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @@GHC.TypeLits@@, for indexes.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [linear](https://hackage.haskell.org/package/linear) has 'V' type,
which uses 'Vector' from @@vector@@ package as backing store.
@@Vec@@ is a real GADT, but tries to provide as many useful instances (upto @@lens@@).

* [vector-sized](https://hackage.haskell.org/package/vector-sized)
Great package using @@GHC.TypeLits@@. Current version (0.6.1.0) uses
@@finite-typelits@@ and @@Int@@ indexes.

* [sized-vector](https://hackage.haskell.org/package/sized-vector) depends
on @@singletons@@ package. @@vec@@ isn't light on dependencies either,
but try to provide wide GHC support.

* [fixed-vector](https://hackage.haskell.org/package/fixed-vector)

* [sized](https://hackage.haskell.org/package/sized) also depends
on a @@singletons@@ package. The @@Sized f n a@@ type is generalisation of
@@linear@@'s @@V@@ for any @@ListLike@@.

* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)
is a kitchen sink package, which has @@CLaSH.Sized.Vector@@ module.
Also depends on @@singletons@@.")
    (license license:bsd-3)))

haskell-8.6-vec

(define-public haskell-8.6-vector-instances
  (package
    (name "haskell-8.6-vector-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-keys)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-8.6-vector-instances

(define-public haskell-8.6-viewprof
  (package
    (name "haskell-8.6-viewprof")
    (version "0.0.0.32")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/viewprof/viewprof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kij1cscfjg6bvh0gm6avsrd2n225dwg2pn8wk3xydvxq1wpcg2b"))))
    (properties `((upstream-name . "viewprof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-brick)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-ghc-prof)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-vty)))
    (home-page "https://github.com/maoe/viewprof")
    (synopsis "Text-based interactive GHC .prof viewer")
    (description "viewprof is a text-based interactive GHC .prof viewer.

You can find a screenshot and some explanation in
<https://github.com/maoe/viewprof#readme the README>.")
    (license license:bsd-3)))

haskell-8.6-viewprof

(define-public haskell-8.6-x509-system
  (package
    (name "haskell-8.6-x509-system")
    (version "1.6.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06a4m9c7vlr9nhp9gmqbb46arf0yj1dkdm4nip03hzy67spdmp20"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description "System X.509 handling")
    (license license:bsd-3)))

haskell-8.6-x509-system

(define-public haskell-8.6-x509-validation
  (package
    (name "haskell-8.6-x509-validation")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16yihzljql3z8w5rgdl95fv3hgk7yd86kbl9b3glllsark5j2hzr"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-hourglass)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-8.6-x509-validation

(define-public haskell-8.6-xml-conduit
  (package
    (name "haskell-8.6-xml-conduit")
    (version "1.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "177gmyigxql1pn3ncz0r8annwv5cbxnihbgrrg1dhm4gmc9jy2wq"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-8.6-xml-conduit

(define-public haskell-8.6-xmlbf-xeno
  (package
    (name "haskell-8.6-xmlbf-xeno")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xeno/xmlbf-xeno-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x33885kjddmc39p2jxafypcgpm5fajdxzdd6l9z5bpihlpgk7ig"))))
    (properties `((upstream-name . "xmlbf-xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-html-entities)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-xeno)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-xmlbf)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xeno backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-xmlbf-xeno

(define-public haskell-8.6-xss-sanitize
  (package
    (name "haskell-8.6-xss-sanitize")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xss-sanitize/xss-sanitize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d72s3a6520iwwc1wbn9v2znqgbw6a5wwzb23iq8ny9ccnjyx1dk"))))
    (properties `((upstream-name . "xss-sanitize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-css-text)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/yesodweb/haskell-xss-sanitize#readme")
    (synopsis "sanitize untrusted HTML to prevent XSS attacks")
    (description
     "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details")
    (license license:bsd-2)))

haskell-8.6-xss-sanitize

(define-public haskell-8.6-yaml
  (package
    (name "haskell-8.6-yaml")
    (version "0.11.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "035sqc2bnya3ghv5i0qk9jdg9q6jvqzgnc5gkg9mgf4drjrd5wni"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe")
       #:cabal-revision
       ("1" "03fyj3y85c24jqzbicv9qrfclvxzac9fmmibamyhak8aj26cfagw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-libyaml)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mockery)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-8.6-yaml

(define-public haskell-8.6-zim-parser
  (package
    (name "haskell-8.6-zim-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-zim-parser

(define-public haskell-8.6-zip
  (package
    (name "haskell-8.6-zip")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1jbxnbiizdklv0pw8f22h38xbmk6d4wggy27w8injdsfi18f27dn"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "09ak8h11hm1jnpkvljradbj3a741s31k8cvyvwypr927khi5y9mp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-digest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-8.6-zip

(define-public haskell-8.6-zip-stream
  (package
    (name "haskell-8.6-zip-stream")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-digest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-8.6-zip-stream

(define-public haskell-8.6-zippers
  (package
    (name "haskell-8.6-zippers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-8.6-zippers

