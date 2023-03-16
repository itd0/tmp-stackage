;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage022)
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
(define-public haskell-8.8-classy-prelude-yesod
  (package
    (name "haskell-8.8-classy-prelude-yesod")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-yesod/classy-prelude-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wz09ksn537w5z9lmj4dsfi0ygk37d5khijr8qq3py2gr2c9ywz"))))
    (properties `((upstream-name . "classy-prelude-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-classy-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-yesod)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-8.8-classy-prelude-yesod

(define-public haskell-8.8-gi-gdk
  (package
    (name "haskell-8.8-gi-gdk")
    (version "3.0.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a6qkikk31n5qc85zp8l8kcaf0804c52gp02hban3c8a9rbq1lgr"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-cairo)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-gio)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-pango)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gdk

(define-public haskell-8.8-hakyll
  (package
    (name "haskell-8.8-hakyll")
    (version "4.13.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hakyll/hakyll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gcs79jmpayndfsmmb40avrgyl4f0f1brprm2l0mvybfah84h2m3"))))
    (properties `((upstream-name . "hakyll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpreviewserver" "-fwatchserver" "-fcheckexternal" "-f-buildwebsite" "-fusepandoc")
       #:cabal-revision
       ("1" "1crs1rh886srl97xy4mgi0xgwh8wqjlal9ily2gyppwc71q4fprv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-lrucache)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pandoc)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-pandoc-citeproc)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://jaspervdj.be/hakyll")
    (synopsis "A static website compiler library")
    (description
     "Hakyll is a static website compiler library. It provides you with the tools to
create a simple or advanced static website using a Haskell DSL and formats
such as markdown or RST. You can find more information, including a tutorial,
on the website:

* <http://jaspervdj.be/hakyll>

If you seek assistance, there's:

* A google group: <http://groups.google.com/group/hakyll>

* An IRC channel, @@#hakyll@@ on freenode

Additionally, there's the Haddock documentation in the different modules,
meant as a reference.")
    (license license:bsd-3)))

haskell-8.8-hakyll

(define-public haskell-8.8-hledger-web
  (package
    (name "haskell-8.8-hledger-web")
    (version "1.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s10xyiqs77xl949m7rc71a4511i755yiv88jb0pc32xba7a2b1y"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")
       #:cabal-revision
       ("1" "01amhyjlw6xjh97zhxx8j05jszw0c0wnv7ka835n7rjnnv8199l3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-Decimal)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-clientsession)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hjsmin)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-hledger)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hledger-lib)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-cors)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-handler-launch)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-yesod)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hledger.org")
    (synopsis "Web-based user interface for the hledger accounting system")
    (description
     "A simple web-based user interface for the hledger accounting system,
providing a more modern UI than the command-line or terminal interfaces.
It can be used as a local single-user UI, or as a multi-user UI for
viewing/adding/editing on the web.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hledger-web

(define-public haskell-8.8-yesod-auth-fb
  (package
    (name "haskell-8.8-yesod-auth-fb")
    (version "1.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-fb/yesod-auth-fb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ckr3zs9bqwwskah2fd7rkpirifyl16v1xk062qx87zcwkf408r"))))
    (properties `((upstream-name . "yesod-auth-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018) haskell-8.8-fb)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-yesod-auth)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-fb)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/yesod-auth-fb")
    (synopsis "Authentication backend for Yesod using Facebook.")
    (description
     "This package allows you to use Yesod's authentication framework
with Facebook as your backend.  That is, your site's users will
log in to your site through Facebook.  Your application need to
be registered on Facebook.

This package works with both the server-side authentication
flow
(<https://developers.facebook.com/docs/authentication/server-side/>)
via the \"Yesod.Auth.Facebook.ServerSide\" module and the
client-side authentication
(<https://developers.facebook.com/docs/authentication/client-side/>)
via the \"Yesod.Auth.Facebook.ClientSide\" module.  It's up to
you to decide which one to use.  The server-side code is older
and as such has been through a lot more testing than the
client-side code.  Also, for now only the server-side code is
able to work with other authentication plugins.  The
client-side code, however, allows you to use some features that
are available only to the Facebook JS SDK (such as
automatically logging your users in, see
<https://developers.facebook.com/blog/post/2012/05/08/how-to--improve-the-experience-for-returning-users/>).")
    (license license:bsd-3)))

haskell-8.8-yesod-auth-fb

(define-public haskell-8.8-yesod-auth-hashdb
  (package
    (name "haskell-8.8-yesod-auth-hashdb")
    (version "1.7.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14isl9mwxarba14aqhidi82yci36jdws6af2jirv7z8mfnrwysbi"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
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
                     haskell-8.8-basic-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-yesod)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-yesod-auth)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/paul-rouse/yesod-auth-hashdb")
    (synopsis "Authentication plugin for Yesod.")
    (description
     "This package is the Yesod.Auth.HashDB plugin, originally included as part
of yesod-auth, but now modified to be more secure and placed in a separate
package.

It provides authentication using hashed passwords stored in a database,
and works best in situations where an administrator is involved in
setting up a user with an initial password.

The complete login process, including a default form, is implemented by
this plugin, but the application developer must design the interfaces
for setting up users and allowing them to change their own passwords,
since only the low-level password-setting functions are provided by this
package.  (Note that other authentication plugins may be more appropriate
if you wish to use email verification to set up accounts).")
    (license license:expat)))

haskell-8.8-yesod-auth-hashdb

