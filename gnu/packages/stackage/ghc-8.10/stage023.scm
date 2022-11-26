;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage023)
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
(define-public haskell-8.10-amazonka-test
  (package
    (name "haskell-8.10-amazonka-test")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-test/amazonka-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a92y92gwn4143z73fwrm03vi5wdxgl2i1myvb8qsk9c621xa7km"))))
    (properties `((upstream-name . "amazonka-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-groom)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Common functionality for Amazonka library test-suites.")
    (description
     "Common functionality depended upon by test suites of the various @@amazonka-*@@
service libraries.

The external interface of this library is stable with respect to the
downstream Amazonka libraries, only, and as such is not suitable
for use in non-Amazonka projects.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-test

(define-public haskell-8.10-bodhi
  (package
    (name "haskell-8.10-bodhi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bodhi/bodhi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jgvfys9wigkhavl17n6pq06nxfnaw0r3bpk93phvhb0vrxdl4wl"))))
    (properties `((upstream-name . "bodhi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/bodhi-hs")
    (synopsis "Fedora Bodhi REST client library")
    (description
     "A REST client library for the Fedora Bodhi updates server.
The binding is currently fairly low-level returning JSON Objects.
So far it covers nearly all of the GET part of the API.")
    (license license:expat)))

haskell-8.10-bodhi

(define-public haskell-8.10-butcher
  (package
    (name "haskell-8.10-butcher")
    (version "1.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butcher/butcher-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06qgqjc8h7dd786wkcwrxpl6bsd66jzywwcnhm52q0cb9678w3qx"))))
    (properties `((upstream-name . "butcher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c9rhsnzdpnxhs3l7yq6fh8p9lq177fmdn23khcl72n5m6xx64wm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-deque)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-multistate)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unsafe)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-8.10-butcher

(define-public haskell-8.10-cached-json-file
  (package
    (name "haskell-8.10-cached-json-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cached-json-file/cached-json-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03pxi16byayjzqj1v930939bnbs2ldv4lvn0c0gyq2xfnmalbhw7"))))
    (properties `((upstream-name . "cached-json-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-query)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/cached-json-file")
    (synopsis "Locally cache a json file obtained by http")
    (description
     "A small library for caching a slow-changing remote json file in
a specified directory (under \"~\\/.cache\\/\").  When the json is requested
and the cache file is still fresh enough it is read directly from
the local cache, otherwise the cached file is refreshed first.")
    (license license:bsd-3)))

haskell-8.10-cached-json-file

(define-public haskell-8.10-captcha-2captcha
  (package
    (name "haskell-8.10-captcha-2captcha")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/captcha-2captcha/captcha-2captcha-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19r7977vkbyd6if9bvh9m2vv2wmhynly6qzsq7ndckn4yw4xc5wx"))))
    (properties `((upstream-name . "captcha-2captcha") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16rvzkg7wy82crgmlz68y9gljp5vv1dldwp3gdn61y95cmi9pybi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-captcha-core)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-o-clock)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-captcha-2captcha

(define-public haskell-8.10-captcha-capmonster
  (package
    (name "haskell-8.10-captcha-capmonster")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/captcha-capmonster/captcha-capmonster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ps7dwbkafi92a408c0fcc15vjp8b2gf400ijbx4vz5vm0s9dzvl"))))
    (properties `((upstream-name . "captcha-capmonster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14dl2762c0n4h3492252l3y3gyw9ds44hhw2123hlaq542apqvff")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-captcha-core)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-o-clock)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-captcha-capmonster

(define-public haskell-8.10-copr-api
  (package
    (name "haskell-8.10-copr-api")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/copr-api/copr-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v28y0xnjk9hl66hsi17g5h6mrsg1a6b9p6r05r41cnd8a093vb0"))))
    (properties `((upstream-name . "copr-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-query)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/copr-api-hs")
    (synopsis "Copr API client libary")
    (description "Fedora Copr buildsystem client api library")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-copr-api

(define-public haskell-8.10-dhall-lsp-server
  (package
    (name "haskell-8.10-dhall-lsp-server")
    (version "1.0.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-lsp-server/dhall-lsp-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1flcxc4qbbksyd50pdjqgjzvd5dm111ihbfb05czzsh4r8r32ypj"))))
    (properties `((upstream-name . "dhall-lsp-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-dhall-json)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-lsp)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-uri-encode)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/dhall-lang/dhall-haskell/tree/master/dhall-lsp-server#readme")
    (synopsis "Language Server Protocol (LSP) server for Dhall")
    (description "")
    (license license:expat)))

haskell-8.10-dhall-lsp-server

(define-public haskell-8.10-dhall-yaml
  (package
    (name "haskell-8.10-dhall-yaml")
    (version "1.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-yaml/dhall-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17fpxjlhmjnra92l8iv4k40bxbx1plmhkijf6axxkjyhfh0ax303"))))
    (properties `((upstream-name . "dhall-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-HsYAML)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-dhall-json)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/dhall-yaml")
    (synopsis "Convert between Dhall and YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and YAML.
You can use this package as a library or an executable:

* See the \"Dhall.Yaml\" module if you want to use this package as a library

* Use the @@dhall-to-yaml-ng@@ program from this package if you want an executable")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-dhall-yaml

(define-public haskell-8.10-elynx
  (package
    (name "haskell-8.10-elynx")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elynx/elynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jh46yy7i45bym0cgvj4nik0a7yv82grncfmn3dk4rr70r9wvdwa"))))
    (properties `((upstream-name . "elynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-elynx-tools)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-slynx)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-tlynx)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Validate and (optionally) redo ELynx analyses")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-elynx

(define-public haskell-8.10-gi-gdkpixbuf
  (package
    (name "haskell-8.10-gi-gdkpixbuf")
    (version "2.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkpixbuf/gi-gdkpixbuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g11pyrf1bzn0qrd9w52qhjq6qas4d3ycnprhwrglaffmaf0p9s8"))))
    (properties `((upstream-name . "gi-gdkpixbuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-gi-gio)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gmodule)
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
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-gdkpixbuf

(define-public haskell-8.10-gi-pango
  (package
    (name "haskell-8.10-gi-pango")
    (version "1.0.24")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qvz1r3xc4rz2fvaw1mimwn39xim55zn6zhbkavw2n5jm6xnydkh"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-gi-harfbuzz)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-pango

(define-public haskell-8.10-hasql
  (package
    (name "haskell-8.10-hasql")
    (version "1.4.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r69h8qbbylj56jl8yl7gyp7bx3mf95wmy1ilpxzidfrjrr9pc0a"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-text-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/nikita-volkov/hasql")
    (synopsis "An efficient PostgreSQL driver with a flexible mapping API")
    (description
     "Root of the \\\"hasql\\\" ecosystem.
For details and tutorials see
<https://github.com/nikita-volkov/hasql the readme>.

The API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.")
    (license license:expat)))

haskell-8.10-hasql

(define-public haskell-8.10-hpack-dhall
  (package
    (name "haskell-8.10-hpack-dhall")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpack-dhall/hpack-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1prpk9lppz8h5bp6slhl7lm28jw6jf746py9vras0m0g6mrcc3l7"))))
    (properties `((upstream-name . "hpack-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-dhall)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-dhall-json)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-hpack)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/blockscope/hpack-dhall#readme")
    (synopsis "hpack's dhalling")
    (description
     "Use hpack phrasing in dhall to write cabal files.

There are two main reasons why you'd use hpack-dhall, convenience and safety.

Get the convenience of hpack. Don't bother to state what can be inferred or
defaulted, easing the burden of completing a package description by hand.  For
example `other-modules` can be inferred by taking the set difference between
modules on disk and the set of `exposed-modules`.

Get the safety of dhall's programmable configuration: typed fields, safe imports
and functions.")
    (license license:bsd-3)))

haskell-8.10-hpack-dhall

(define-public haskell-8.10-hspec-tmp-proc
  (package
    (name "haskell-8.10-hspec-tmp-proc")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-tmp-proc/hspec-tmp-proc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zn0q3cvszpnb0lqlnizfh8v0z2kasjl414ny4pzni6yf13m2jfh"))))
    (properties `((upstream-name . "hspec-tmp-proc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/adetokunbo/tmp-proc/tree/master/tmp-proc#tmp-proc")
    (synopsis "Simplify use of tmp-proc from hspec tests")
    (description "Reduces boilerplate when using tmp-proc with hspec")
    (license license:bsd-3)))

haskell-8.10-hspec-tmp-proc

(define-public haskell-8.10-nri-env-parser
  (package
    (name "haskell-8.10-nri-env-parser")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nri-env-parser/nri-env-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hwl363iya38hi021an2l4cinclz1p96n4lck2x9yi9cf4yfqzk8"))))
    (properties `((upstream-name . "nri-env-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-modern-uri)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-nri-prelude)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-env-parser#readme")
    (synopsis
     "Read environment variables as settings to build 12-factor apps.")
    (description
     "Please see the README at <https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-env-parser#readme>.")
    (license license:bsd-3)))

haskell-8.10-nri-env-parser

(define-public haskell-8.10-opentelemetry-extra
  (package
    (name "haskell-8.10-opentelemetry-extra")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-extra/opentelemetry-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11lwhm3rpajmch7kjb4qwngram5ka8fbd3c0mxszlf4a9dlqag32"))))
    (properties `((upstream-name . "opentelemetry-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ghc-events)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hvega)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-jsonifier)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-opentelemetry)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-text-show)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-extra")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-8.10-opentelemetry-extra

(define-public haskell-8.10-pagure
  (package
    (name "haskell-8.10-pagure")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pagure/pagure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02212akphmldpnbih2zip750iavappzlqs5hf9mamzjaramx2bsy"))))
    (properties `((upstream-name . "pagure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pagure-hs")
    (synopsis "Pagure REST client library")
    (description "A library for querying Pagure gitforges via REST.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-pagure

(define-public haskell-8.10-pantry
  (package
    (name "haskell-8.10-pantry")
    (version "0.5.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17r9fgs83dp0s9wq14q5hvf5vnl8d7cg9p9dnbixgsysq6g6d29g"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0932gfrksfip8bppai5qh5rr9xyddqxrrz4byvnjpwrh5dxsyrg8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-casa-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-casa-types)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-digest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-filelock)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hackage-security)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-hpack)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-download)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-rio-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-tar-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-metrics)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-8.10-pantry

(define-public haskell-8.10-pdc
  (package
    (name "haskell-8.10-pdc")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdc/pdc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1013nvvsrajjp38kb78gzhkjgav80lrlq966nijxhqd4k6bsm7qc"))))
    (properties `((upstream-name . "pdc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/pdc")
    (synopsis "Fedora Product Definition Center service")
    (description "A http query library for Fedora's PDC service.")
    (license license:expat)))

haskell-8.10-pdc

(define-public haskell-8.10-pkgtreediff
  (package
    (name "haskell-8.10-pkgtreediff")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pkgtreediff/pkgtreediff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yj0wpwpryavy09264xh82kxi52gc5ipyrgwpxh3m9gv1264gip0"))))
    (properties `((upstream-name . "pkgtreediff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-directory)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-koji)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-simple-cmd)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pkgtreediff")
    (synopsis "Package tree diff tool")
    (description
     "Tool for comparing RPM packages and versions in OS dist trees or instances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-pkgtreediff

(define-public haskell-8.10-servant-auth-client
  (package
    (name "haskell-8.10-servant-auth-client")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-client/servant-auth-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16rmwdrx0qyqa821ipayczzl3gv8gvqgx8k9q8qaw19w87hwkh83"))))
    (properties `((upstream-name . "servant-auth-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0d6mi3w3gx9h21awf1gy2wx7dwh5l9ichww21a3p5rfd8a8swypf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-jose)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-servant-auth)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-servant-auth-server)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-client)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-client-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-client/servant-auth compatibility")
    (description
     "This package provides instances that allow generating clients from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.10-servant-auth-client

(define-public haskell-8.10-servant-swagger-ui
  (package
    (name "haskell-8.10-servant-swagger-ui")
    (version "0.3.5.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12w75z23bnygyr3ki9w3zfy9nhxyjawf9pyzhfg6rp2mq3nji9gg"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05g4gnvr8ljg5mszan5cr9zzi40p6d8sr7343mm2yc3ps45vy9g1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-servant-server)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-servant-swagger-ui-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

https://github.com/swagger-api/swagger-ui")
    (license license:bsd-3)))

haskell-8.10-servant-swagger-ui

(define-public haskell-8.10-skews
  (package
    (name "haskell-8.10-skews")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/skews/skews-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rwliykb87mvkpajzkx1fh4qlh7fgh6y5z5np1jrdi0rv3ki7hsn"))))
    (properties `((upstream-name . "skews") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-deque)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-8.10-skews

(define-public haskell-8.10-wai-middleware-auth
  (package
    (name "haskell-8.10-wai-middleware-auth")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-auth/wai-middleware-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch9vh14bhnf7g789rbqqgnn3q2nc892xs73kf7k6l8n9p2md0yd"))))
    (properties `((upstream-name . "wai-middleware-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1sxrqbjs52gkp1agnbq0bp57fjczvfb30p9p2d8b5ik9zw2j51sq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-clientsession)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-hoauth2)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-jose)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-optparse-simple)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-app-static)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/wai-middleware-auth")
    (synopsis "Authentication middleware that secures WAI application")
    (description
     "Please see the README and Haddocks at <https://www.stackage.org/package/wai-middleware-auth>")
    (license license:expat)))

haskell-8.10-wai-middleware-auth

(define-public haskell-8.10-webex-teams-conduit
  (package
    (name "haskell-8.10-webex-teams-conduit")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ig4krcvc256lyrqvj6g4kjklln5m7sm44c4bvbgkgr3lmrpfkr7"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
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
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.10-webex-teams-conduit

(define-public haskell-8.10-webex-teams-pipes
  (package
    (name "haskell-8.10-webex-teams-pipes")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-pipes/webex-teams-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "094wvrnv0609gp0iya34pciw2hc5wi7fax5wjwr3n1lmwdgf7i4g"))))
    (properties `((upstream-name . "webex-teams-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
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
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Pipes wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.10-webex-teams-pipes

(define-public haskell-8.10-yesod
  (package
    (name "haskell-8.10-yesod")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0krvg1ykzqg1aaj385rnrqr0a5ga3z5xl1s422q05y9csj0w1ami"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-wai-logger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-form)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-8.10-yesod

(define-public haskell-8.10-yesod-auth
  (package
    (name "haskell-8.10-yesod-auth")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fdahk5mc63g0zsafk8axry01qaxahmclpmmwygp2lhfsjy8mby2"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-authenticate)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-email-validate)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-nonce)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-form)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-8.10-yesod-auth

(define-public haskell-8.10-yesod-bin
  (package
    (name "haskell-8.10-yesod-bin")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12dwix5q3xk83d0d4715h680dbalbz4556wk3r89gps3rp9pib7f"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-project-template)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-say)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-8.10-yesod-bin

(define-public haskell-8.10-yesod-fb
  (package
    (name "haskell-8.10-yesod-fb")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nyi5jp85ysabljkds6h4w8ndrb12ac76awsih52amf60k4n7afl"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage022) haskell-8.10-fb)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-8.10-yesod-fb

(define-public haskell-8.10-yesod-markdown
  (package
    (name "haskell-8.10-yesod-markdown")
    (version "0.12.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-markdown/yesod-markdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ha06wbzdy040wdimqzpw71hvy5z0pg0b4q524lln05gb26wdlsn"))))
    (properties `((upstream-name . "yesod-markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-pandoc)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-xss-sanitize)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/pbrisbin/yesod-markdown")
    (synopsis "Tools for using markdown in a yesod application")
    (description
     "A subset of Pandoc functionality useful for markdown processing in yesod applications")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-yesod-markdown

