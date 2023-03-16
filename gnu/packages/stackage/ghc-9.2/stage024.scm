;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage024)
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
(define-public haskell-9.2-airship
  (package
    (name "haskell-9.2-airship")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/airship/airship-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x38pda1g1g6ihl3c39s3wmspn2qq09887apinwlna5cxbxjf3pc"))))
    (properties `((upstream-name . "airship") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-bytestring-trie)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-http-date)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tmcgilchrist/airship/")
    (synopsis "A Webmachine-inspired HTTP library")
    (description
     "A Webmachine-inspired HTTP library based off ideas from the original Erlang project <https://github.com/webmachine/webmachine>

A number of examples can be found in <https://github.com/tmcgilchrist/airship/tree/master/example> illustrating how to build airship based services.")
    (license license:expat)))

haskell-9.2-airship

(define-public haskell-9.2-bcp47-orphans
  (package
    (name "haskell-9.2-bcp47-orphans")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bcp47-orphans/bcp47-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5pqcb1snmbbvcfpjcqrfbk9l8wry6i0mlz6vm347arhfwc62cd"))))
    (properties `((upstream-name . "bcp47-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-bcp47)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-esqueleto)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "BCP47 orphan instances")
    (description "Orphan instances for the BCP47 type")
    (license license:expat)))

haskell-9.2-bcp47-orphans

(define-public haskell-9.2-experimenter
  (package
    (name "haskell-9.2-experimenter")
    (version "0.1.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/experimenter/experimenter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11m832x42xgd679zwnsykggp9afk7kwkis1s04iq4hdxbcylh7kc"))))
    (properties `((upstream-name . "experimenter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-HaTeX)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-esqueleto)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-foundation)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hostname)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/experimenter#readme")
    (synopsis
     "Perform scientific experiments stored in a DB, and generate reports.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/experimenter#readme>")
    (license license:bsd-3)))

haskell-9.2-experimenter

(define-public haskell-9.2-fn
  (package
    (name "haskell-9.2-fn")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-fn

(define-public haskell-9.2-genvalidity-persistent
  (package
    (name "haskell-9.2-genvalidity-persistent")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-persistent/genvalidity-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3illab5k0rzmyi1pjc4yij2dsxn9gnmrvdgll32plxkdmyp0jr"))))
    (properties `((upstream-name . "genvalidity-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-validity-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Persistent")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-persistent

(define-public haskell-9.2-graphula
  (package
    (name "haskell-9.2-graphula")
    (version "2.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphula/graphula-" version
                    ".tar.gz"))
              (sha256
               (base32
                "066lcn262x4l826sglybrz4mp58ishcj0h1r5h41aiy09mcf4g3v"))))
    (properties `((upstream-name . "graphula") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-persistent-template")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-generics-eot)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/graphula#readme")
    (synopsis
     "A simple interface for generating persistent data and linking its dependencies")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-graphula

(define-public haskell-9.2-gtk-sni-tray
  (package
    (name "haskell-9.2-gtk-sni-tray")
    (version "0.1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-sni-tray/gtk-sni-tray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i131ks6m5akgcfahcbfqhg1i5dxz0y6rba3is4s3m5va6spp5yf"))))
    (properties `((upstream-name . "gtk-sni-tray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-dbus)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-dbus-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-cairo-connector)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-gi-cairo-render)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-gi-dbusmenugtk3)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-gtk-strut)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-status-notifier-item)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-sni-tray#readme")
    (synopsis "A standalone StatusNotifierItem/AppIndicator tray")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>")
    (license license:bsd-3)))

haskell-9.2-gtk-sni-tray

(define-public haskell-9.2-hspec-wai
  (package
    (name "haskell-9.2-hspec-wai")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai/hspec-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03wiksic5y9a2g6a86nsxrnajdgdvpv17w02h5qla0zp9zs6pa1j"))))
    (properties `((upstream-name . "hspec-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-9.2-hspec-wai

(define-public haskell-9.2-http-conduit
  (package
    (name "haskell-9.2-http-conduit")
    (version "2.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bj24phbcb7s3k6v48l5gk82m3m23j8zy9l7c5ccxp3ghn9z5gng"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-faeson")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-9.2-http-conduit

(define-public haskell-9.2-hw-eliasfano
  (package
    (name "haskell-9.2-hw-eliasfano")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-eliasfano/hw-eliasfano-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k22yq8blyjmgh7nzmqvnc1g0bgjbbvqv9r4w02z5jn9kfj619h2"))))
    (properties `((upstream-name . "hw-eliasfano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ncny2wnj29dnld28az30w5by238fc58gxs6sx6vvc8hcqycfj67")))
    (outputs (list "out" "doc"))
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
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-int)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-packed-vector)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-temporary-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-eliasfano#readme")
    (synopsis "Elias-Fano")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-eliasfano

(define-public haskell-9.2-hw-json-simple-cursor
  (package
    (name "haskell-9.2-hw-json-simple-cursor")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simple-cursor/hw-json-simple-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b867rgsybfb568z6qa4x8jqz24wfjydg91w7bsl44vqq0k3hk4f"))))
    (properties `((upstream-name . "hw-json-simple-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2" "-f-sse42")
       #:cabal-revision
       ("2" "0zs8hd42j64aymrf06qlkc70cr1jyz0svq78xqwvwxk37pz9r1qq")))
    (outputs (list "out" "doc"))
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-json-simd)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-json-simple-cursor#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Memory efficient JSON parser. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-json-simple-cursor

(define-public haskell-9.2-hw-json-standard-cursor
  (package
    (name "haskell-9.2-hw-json-standard-cursor")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-standard-cursor/hw-json-standard-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02fmhjnjf0idmzq0y1a1m78bwl72ycvr6cxlscxpc2370r2s3akh"))))
    (properties `((upstream-name . "hw-json-standard-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2" "-f-sse42")
       #:cabal-revision
       ("2" "0qsii1d0y22w8hb9pf654fb2qs9ndkysahpabgi0d1q59qv3msx0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-bits-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007)
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-json-simd)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/haskell-works/hw-json-standard-cursor#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Memory efficient JSON parser. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-json-standard-cursor

(define-public haskell-9.2-hw-simd
  (package
    (name "haskell-9.2-hw-simd")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-simd/hw-simd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ipcrv19xwmq6znbmwmzrjahmymmcmpbs7hpx0183hrwbx2hyhqx"))))
    (properties `((upstream-name . "hw-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-bits-extra)
                  (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-simd#readme")
    (synopsis "SIMD library")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>")
    (license license:bsd-3)))

haskell-9.2-hw-simd

(define-public haskell-9.2-hw-succinct
  (package
    (name "haskell-9.2-hw-succinct")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-succinct#readme")
    (synopsis "Succint datastructures")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-hw-succinct

(define-public haskell-9.2-hw-xml
  (package
    (name "haskell-9.2-hw-xml")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-xml/hw-xml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gjs2rcm40j3962kw7n02pqim1p485prm1bd2v8hk1ka35c8nq1w"))))
    (properties `((upstream-name . "hw-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ckkwz82y1gdkd85zaiild82i6fcbrb3ybkh5s94rbbyaqgjkhv6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
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
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-hw-balancedparens)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-bits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-hw-parser)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-hw-rankselect)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-xml#readme")
    (synopsis "XML parser based on succinct data structures.")
    (description
     "XML parser based on succinct data structures. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-xml

(define-public haskell-9.2-persistent-pagination
  (package
    (name "haskell-9.2-persistent-pagination")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-pagination/persistent-pagination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16p89c4rjwak7slb7rmzn0qyap2vg3ayis8q3lkxl0k7a609pf5h"))))
    (properties `((upstream-name . "persistent-pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-esqueleto)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-9.2-persistent-pagination

(define-public haskell-9.2-persistent-qq
  (package
    (name "haskell-9.2-persistent-qq")
    (version "2.12.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-qq/persistent-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pzlhwl4h9q358zc6d0m5zv0ii2yhf2lzw0a3v2spfc1ch4a014a"))))
    (properties `((upstream-name . "persistent-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/persistent#readme")
    (synopsis "Provides a quasi-quoter for raw SQL for persistent")
    (description
     "Please see README and API docs at <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.2-persistent-qq

(define-public haskell-9.2-persistent-typed-db
  (package
    (name "haskell-9.2-persistent-typed-db")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-typed-db/persistent-typed-db-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fkshbf35mnlx4aqkij0lzzmpfxw34zkwgq8s2lm3rrrqw7gw59l"))))
    (properties `((upstream-name . "persistent-typed-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-esqueleto)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-typed-db#readme")
    (synopsis "Type safe access to multiple database schemata.")
    (description "See README.md for more details, examples, and fun.")
    (license license:bsd-3)))

haskell-9.2-persistent-typed-db

(define-public haskell-9.2-prometheus-wai-middleware
  (package
    (name "haskell-9.2-prometheus-wai-middleware")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-prometheus)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/prometheus-wai-middleware")
    (synopsis "Instrument a wai application with various metrics")
    (description
     "See https://github.com/bitnomial/prometheus-wai-middleware/tree/master/readme.md")
    (license license:bsd-3)))

haskell-9.2-prometheus-wai-middleware

(define-public haskell-9.2-serversession
  (package
    (name "haskell-9.2-serversession")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession/serversession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzyvz3jkv248lbq4pgy92dm054wj2s4d19rjr096ymcaznhxgfl"))))
    (properties `((upstream-name . "serversession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-nonce)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-test)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-9.2-serversession

(define-public haskell-9.2-sydtest-persistent-postgresql
  (package
    (name "haskell-9.2-sydtest-persistent-postgresql")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-persistent-postgresql/sydtest-persistent-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lrps2avkhshipip85gv8v151j3gkwxg6lfbii0085s077f8in1m"))))
    (properties `((upstream-name . "sydtest-persistent-postgresql")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-sydtest-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An persistent-postgresql companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-persistent-postgresql

(define-public haskell-9.2-sydtest-persistent-sqlite
  (package
    (name "haskell-9.2-sydtest-persistent-sqlite")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-persistent-sqlite/sydtest-persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17sb4q2lrdbi4d5h7gj5lwxszla5dbzs25ira2ddlgghs68bar3g"))))
    (properties `((upstream-name . "sydtest-persistent-sqlite")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-sydtest-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A persistent-sqlite companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-persistent-sqlite

(define-public haskell-9.2-tasty-wai
  (package
    (name "haskell-9.2-tasty-wai")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-wai/tasty-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18yw2qzzg969c99rpa8p154hxbm9i4iq64pma3jkr2gfdm6j4vvg"))))
    (properties `((upstream-name . "tasty-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tasty-wai")
    (synopsis "Test 'wai' endpoints via Test.Tasty")
    (description
     "Helper functions and runners for testing wai endpoints using the Tasty testing infrastructure.")
    (license license:bsd-3)))

haskell-9.2-tasty-wai

(define-public haskell-9.2-termonad
  (package
    (name "haskell-9.2-termonad")
    (version "4.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termonad/termonad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xyb0z0k16mpsr5nc7a4k7w04k6skfwja25f5w329w1djrkvqfyx"))))
    (properties `((upstream-name . "termonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-classy-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-dyre)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-focuslist)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-gi-gdk)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-gi-gtk)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-pango)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-gi-vte)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pretty-simple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-xml-html-qq)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages pcre) pcre2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/termonad")
    (synopsis "Terminal emulator configurable in Haskell")
    (description
     "Termonad is a terminal emulator configurable in Haskell.  It is extremely
customizable and provides hooks to modify the default behavior.  It can be
thought of as the \\\"XMonad\\\" of terminal emulators.  Termonad was featured on
an <https://www.youtube.com/watch?v=TLNr_gBv5HY episode> of
<https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg DistroTube>.  This
video gives a short overview of Termonad.

Please see <https://github.com/cdepillabout/termonad#readme README.md> for
more information.")
    (license license:bsd-3)))

haskell-9.2-termonad

(define-public haskell-9.2-tmp-proc
  (package
    (name "haskell-9.2-tmp-proc")
    (version "0.5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc/tmp-proc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "050inff8y97bzf4ajnqrxgcblj0cq0khcp1y35vwbwgm3al2l21p"))))
    (properties `((upstream-name . "tmp-proc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-doc-tests" "-f-build-the-readme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)))
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

haskell-9.2-tmp-proc

(define-public haskell-9.2-wai-app-static
  (package
    (name "haskell-9.2-wai-app-static")
    (version "3.1.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-app-static/wai-app-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8zy3dprqjxvlqxrids65yg5qf1h4f63ddspwxrbp0r9d28hwb4"))))
    (properties `((upstream-name . "wai-app-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-print" "-fcryptonite")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-http-date)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-mockery)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI application for static serving")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-app-static>.")
    (license license:expat)))

haskell-9.2-wai-app-static

(define-public haskell-9.2-wai-cli
  (package
    (name "haskell-9.2-wai-cli")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai-cli/wai-cli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fflvxfc9ibkrrgqdsr89gl77b0b706a8g7ylydaqqz6z089qbi3"))))
    (properties `((upstream-name . "wai-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftls" "-f-fastcgi" "-funixsockets")
       #:cabal-revision
       ("2" "1dv6lvfrsjpg733ssxgxghlfddqmnm8h2lp99wxyc8iiliy62vl9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-monads-tf)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-options)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.2-wai-cli

(define-public haskell-9.2-wai-enforce-https
  (package
    (name "haskell-9.2-wai-enforce-https")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-enforce-https/wai-enforce-https-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08hygyl930bwjxfvzds7wwl9yv94q7612bfg68qzmq2dfivypkfq"))))
    (properties `((upstream-name . "wai-enforce-https") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-9.2-wai-enforce-https

(define-public haskell-9.2-wai-saml2
  (package
    (name "haskell-9.2-wai-saml2")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-saml2/wai-saml2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j8qldy111q36dwr53pc6jiljfwzwi77n21mglvkpq4cfkcsch92"))))
    (properties `((upstream-name . "wai-saml2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-c14n)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xml) libxml2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/wai-saml2#readme")
    (synopsis "SAML2 assertion validation as WAI middleware")
    (description
     "A Haskell library which implements SAML2 assertion validation as WAI middleware")
    (license license:expat)))

haskell-9.2-wai-saml2

(define-public haskell-9.2-warp-tls-uid
  (package
    (name "haskell-9.2-warp-tls-uid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-9.2-warp-tls-uid

(define-public haskell-9.2-yesod-core
  (package
    (name "haskell-9.2-yesod-core")
    (version "1.6.24.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-core/yesod-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19ilgm73108ki1hvqc86kir0yrx36vp9g45na6g8dmfsvk9izr10"))))
    (properties `((upstream-name . "yesod-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1406s7is60ji6nn3h1mafkdh7729ipq3i06cqsq77hz2ilj264jl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-auto-update)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-clientsession)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-wai-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-core>")
    (license license:expat)))

haskell-9.2-yesod-core

