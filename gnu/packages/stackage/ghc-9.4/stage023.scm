;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage023)
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
(define-public haskell-9.4-bcp47-orphans
  (package
    (name "haskell-9.4-bcp47-orphans")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-bcp47)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-esqueleto)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "BCP47 orphan instances")
    (description "Orphan instances for the BCP47 type")
    (license license:expat)))

haskell-9.4-bcp47-orphans

(define-public haskell-9.4-experimenter
  (package
    (name "haskell-9.4-experimenter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-HaTeX)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-vector)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-esqueleto)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-foundation)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hostname)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/experimenter#readme")
    (synopsis
     "Perform scientific experiments stored in a DB, and generate reports.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/experimenter#readme>")
    (license license:bsd-3)))

haskell-9.4-experimenter

(define-public haskell-9.4-fn
  (package
    (name "haskell-9.4-fn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)))
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

haskell-9.4-fn

(define-public haskell-9.4-genvalidity-appendful
  (package
    (name "haskell-9.4-genvalidity-appendful")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-appendful/genvalidity-appendful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "081a9m99mr1mvq9bysn3g0fq05f6zayb4401v6709jcw7szxfbwn"))))
    (properties `((upstream-name . "genvalidity-appendful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-appendful)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-genvalidity-sydtest-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/appendful#readme")
    (synopsis "")
    (description "Generators for ppend-only cooperative agreement")
    (license license:expat)))

haskell-9.4-genvalidity-appendful

(define-public haskell-9.4-genvalidity-persistent
  (package
    (name "haskell-9.4-genvalidity-persistent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-validity-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Persistent")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-persistent

(define-public haskell-9.4-gi-gdkpixbuf
  (package
    (name "haskell-9.4-gi-gdkpixbuf")
    (version "2.0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkpixbuf/gi-gdkpixbuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16j3pilr5ffcgxp598svdsbjsgh3ds9a24frkp4ph2g2sjmzdcrk"))))
    (properties `((upstream-name . "gi-gdkpixbuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gmodule)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
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
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gdkpixbuf

(define-public haskell-9.4-gi-pango
  (package
    (name "haskell-9.4-gi-pango")
    (version "1.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00v6kn1k9rzlncl867xwbis1jqy5vc12gkmbsij4hxfjr9h0h1cq"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-harfbuzz)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-pango

(define-public haskell-9.4-gi-soup
  (package
    (name "haskell-9.4-gi-soup")
    (version "2.4.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-soup/gi-soup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kxkbhllc04klg570ziwwgybsp97a7xq6gb8ggzf9hyr1ys77rq4"))))
    (properties `((upstream-name . "gi-soup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages gnome) libsoup-minimal-2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Libsoup bindings")
    (description "Bindings for Libsoup, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-soup

(define-public haskell-9.4-graphula
  (package
    (name "haskell-9.4-graphula")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-generics-eot)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/graphula#readme")
    (synopsis
     "A simple interface for generating persistent data and linking its dependencies")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-graphula

(define-public haskell-9.4-hspec-wai
  (package
    (name "haskell-9.4-hspec-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-9.4-hspec-wai

(define-public haskell-9.4-http-conduit
  (package
    (name "haskell-9.4-http-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-wai-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-9.4-http-conduit

(define-public haskell-9.4-mmark-cli
  (package
    (name "haskell-9.4-mmark-cli")
    (version "0.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-cli/mmark-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1an1rc7gdl2209d3agxx1dfl61zsc2wg5nx9cwdf50spmlgs3cr0"))))
    (properties `((upstream-name . "mmark-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "1raxvhsv3b3lni4d2fqf9b1rs7lsqha13baizpg9hv7w0f8zss8m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-mmark)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-mmark-ext)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-stache)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to the MMark markdown processor")
    (description "Command line interface to the MMark markdown processor.")
    (license license:bsd-3)))

haskell-9.4-mmark-cli

(define-public haskell-9.4-persistent-mtl
  (package
    (name "haskell-9.4-persistent-mtl")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mtl/persistent-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17sxwa8p95nrkacjr1wnpihwfq121z1pkyh1nvlfjy76b4aalqhi"))))
    (properties `((upstream-name . "persistent-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1aq30hqpdcsf7llmfwnn061qa2id4b8fncd9k0f53kmgvys2xivd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-esqueleto)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-tasty-autocollect)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-unliftio-pool)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/brandonchinn178/persistent-mtl#readme")
    (synopsis "Monad transformer for the persistent API")
    (description "A monad transformer and mtl-style type class for using the
persistent API directly in your monad transformer stack.")
    (license license:bsd-3)))

haskell-9.4-persistent-mtl

(define-public haskell-9.4-persistent-pagination
  (package
    (name "haskell-9.4-persistent-pagination")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-esqueleto)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-9.4-persistent-pagination

(define-public haskell-9.4-persistent-qq
  (package
    (name "haskell-9.4-persistent-qq")
    (version "2.12.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-qq/persistent-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mkgrczllayf8mq773rqp11d677fqjxcblmb3l97m0k1qyvpjq1h"))))
    (properties `((upstream-name . "persistent-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/persistent#readme")
    (synopsis "Provides a quasi-quoter for raw SQL for persistent")
    (description
     "Please see README and API docs at <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.4-persistent-qq

(define-public haskell-9.4-persistent-typed-db
  (package
    (name "haskell-9.4-persistent-typed-db")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-esqueleto)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-typed-db#readme")
    (synopsis "Type safe access to multiple database schemata.")
    (description "See README.md for more details, examples, and fun.")
    (license license:bsd-3)))

haskell-9.4-persistent-typed-db

(define-public haskell-9.4-serversession
  (package
    (name "haskell-9.4-serversession")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-nonce)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-test)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-9.4-serversession

(define-public haskell-9.4-sydtest-amqp
  (package
    (name "haskell-9.4-sydtest-amqp")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-amqp/sydtest-amqp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "122n2nf0z2s925yjg6zlp3bvl70yprip57v6775vqglhbr959v8m"))))
    (properties `((upstream-name . "sydtest-amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-amqp)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-rabbitmq)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An amqp companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-amqp

(define-public haskell-9.4-sydtest-persistent-postgresql
  (package
    (name "haskell-9.4-sydtest-persistent-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-postgresql)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An persistent-postgresql companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-persistent-postgresql

(define-public haskell-9.4-sydtest-persistent-sqlite
  (package
    (name "haskell-9.4-sydtest-persistent-sqlite")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A persistent-sqlite companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-persistent-sqlite

(define-public haskell-9.4-sydtest-webdriver
  (package
    (name "haskell-9.4-sydtest-webdriver")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-webdriver/sydtest-webdriver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rf12cg494z302bd7yanylzayakqj8xwbj8blb0f512wvfy63cia"))))
    (properties `((upstream-name . "sydtest-webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-port-utils)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-sydtest-wai)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-webdriver)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/sydtest-webdriver")
    (synopsis "A webdriver companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-webdriver

(define-public haskell-9.4-tmp-proc
  (package
    (name "haskell-9.4-tmp-proc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
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
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-req)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)))
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

haskell-9.4-tmp-proc

(define-public haskell-9.4-wai-app-static
  (package
    (name "haskell-9.4-wai-app-static")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-date)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mockery)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI application for static serving")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-app-static>.")
    (license license:expat)))

haskell-9.4-wai-app-static

(define-public haskell-9.4-wai-cli
  (package
    (name "haskell-9.4-wai-cli")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-monads-tf)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-options)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)))
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

haskell-9.4-wai-cli

(define-public haskell-9.4-wai-enforce-https
  (package
    (name "haskell-9.4-wai-enforce-https")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-9.4-wai-enforce-https

(define-public haskell-9.4-warp-tls-uid
  (package
    (name "haskell-9.4-warp-tls-uid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-warp-tls)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-9.4-warp-tls-uid

(define-public haskell-9.4-yesod-core
  (package
    (name "haskell-9.4-yesod-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-clientsession)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-core>")
    (license license:expat)))

haskell-9.4-yesod-core

