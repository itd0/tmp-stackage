;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage028)
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
(define-public haskell-8.6-yesod
  (package
    (name "haskell-8.6-yesod")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "113qm6x4q2s08l5423j1ksc3bdlbf9pxj4y9p8nf36gbz6dy6xqh"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-wai-logger)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-8.6-yesod

(define-public haskell-8.6-yesod-auth
  (package
    (name "haskell-8.6-yesod-auth")
    (version "1.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x843l5z03a563i8nc2x9c6afw213chblm7ldd7yxn5g110h5ybx"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-authenticate)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-email-validate)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-nonce)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-8.6-yesod-auth

(define-public haskell-8.6-yesod-form-bootstrap4
  (package
    (name "haskell-8.6-yesod-form-bootstrap4")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rx18ik8y55697g9mjdfpgclkny4i9d996fm874ckdmq1qwzn84k"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-8.6-yesod-form-bootstrap4

(define-public haskell-8.6-yesod-text-markdown
  (package
    (name "haskell-8.6-yesod-text-markdown")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-markdown)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.6-yesod-text-markdown

