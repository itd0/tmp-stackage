;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage021)
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
(define-public haskell-8.8-antiope-dynamodb
  (package
    (name "haskell-8.8-antiope-dynamodb")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-dynamodb/antiope-dynamodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9g36c33virrnsqxrggnx2283nw9bp0i256vgq4z92h1z76kfz0"))))
    (properties `((upstream-name . "antiope-dynamodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-dynamodb)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-antiope-core)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-dynamodb

(define-public haskell-8.8-antiope-s3
  (package
    (name "haskell-8.8-antiope-s3")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-s3/antiope-s3-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wwh17vzrbg20jmbgf9xdx8vn5qkx8azzczzlyb2s2k3ldlh8s0c"))))
    (properties `((upstream-name . "antiope-s3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-s3)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-antiope-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-antiope-messages)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-s3

(define-public haskell-8.8-antiope-sns
  (package
    (name "haskell-8.8-antiope-sns")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-sns/antiope-sns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01saqspi2033y423nyw4k0km3ggmypp3zzhkr7ha51r717bj6sii"))))
    (properties `((upstream-name . "antiope-sns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-sns)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-sns

(define-public haskell-8.8-antiope-sqs
  (package
    (name "haskell-8.8-antiope-sqs")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-sqs/antiope-sqs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18wz0ajnh5hib7srwksbwsyqrnp4slzcd2i30p98gnh1plqgbx5p"))))
    (properties `((upstream-name . "antiope-sqs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-sqs)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-sqs

(define-public haskell-8.8-gi-gdkpixbuf
  (package
    (name "haskell-8.8-gi-gdkpixbuf")
    (version "2.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkpixbuf/gi-gdkpixbuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jphrxqdbls3l73is1k93fizghbxgkf14q57l4w3m559vgk34anp"))))
    (properties `((upstream-name . "gi-gdkpixbuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-gio)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gdkpixbuf

(define-public haskell-8.8-miso
  (package
    (name "haskell-8.8-miso")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/miso/miso-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mzsih2hga62sf33m4cwf1v0107p2ydc32wq7n3hsapzx69sm2j3"))))
    (properties `((upstream-name . "miso") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tests" "-f-jsaddle" "-f-ios")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-servant-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/dmjio/miso")
    (synopsis "A tasty Haskell front-end framework")
    (description
     "Miso is a small, production-ready, \"isomorphic\" Haskell front-end framework featuring a virtual-dom, recursive diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, type-safe servant-style routing and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. Miso is pure by default, but side effects (like XHR) can be introduced into the system via the Effect data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.")
    (license license:bsd-3)))

haskell-8.8-miso

(define-public haskell-8.8-pandoc-citeproc
  (package
    (name "haskell-8.8-pandoc-citeproc")
    (version "0.17.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-citeproc/pandoc-citeproc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hi31h4jxamnyw0jsbwnbzy9gkp3a03mhsgwy9w73hi13lywxrgk"))))
    (properties `((upstream-name . "pandoc-citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbibutils" "-f-embed_data_files" "-f-unicode_collation" "-f-test_citeproc" "-f-debug" "-f-static")
       #:cabal-revision
       ("1" "0z1gnaagylsjx8f1i49bp4zhcx2hlkc3w9wkwzsvvjq0qcfgzis0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hs-bibutils)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-libyaml)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pandoc)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-rfc5051)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-setenv)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jgm/pandoc-citeproc")
    (synopsis "Supports using pandoc with citeproc")
    (description "The pandoc-citeproc library supports automatic
generation of citations and a bibliography in pandoc
documents using the Citation Style Language (CSL)
macro language. More details on CSL can be found at
<http://citationstyles.org/>.

In addition to a library, the package includes
an executable, pandoc-citeproc, which works as a pandoc
filter and also has a mode for converting bibliographic
databases into CSL JSON and pandoc YAML metadata formats.

pandoc-citeproc originated as a fork of Andrea
Rossato's citeproc-hs.")
    (license license:bsd-3)))

haskell-8.8-pandoc-citeproc

(define-public haskell-8.8-pandoc-csv2table
  (package
    (name "haskell-8.8-pandoc-csv2table")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-csv2table/pandoc-csv2table-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sf0af2cx5fi3a2iixkjjdpzp0153hxsjzs5wwqssby39g7s24gb"))))
    (properties `((upstream-name . "pandoc-csv2table") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-csv)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pandoc)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/baig/pandoc-csv2table-filter")
    (synopsis "Convert CSV to Pandoc Table Markdown")
    (description "A Pandoc filter that replaces image inline or fenced code
blocks with pandoc table markdown. CSV contents will be
parsed by the pandoc markdown reader.")
    (license license:expat)))

haskell-8.8-pandoc-csv2table

(define-public haskell-8.8-pandoc-plot
  (package
    (name "haskell-8.8-pandoc-plot")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-plot/pandoc-plot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jyhb1ab6h990r159a3gdw0cbxxvjrjsd35yyca5bd5rqxzlvnay"))))
    (properties `((upstream-name . "pandoc-plot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kn5k6xrjs1gh273hc8zrp85w8g72g3rz79v5n4qk33n0pg6ydvw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-githash)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-open-browser)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pandoc)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-turtle)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/LaurentRDC/pandoc-plot#readme")
    (synopsis
     "A Pandoc filter to include figures generated from code blocks using your plotting toolkit of choice.")
    (description
     "A Pandoc filter to include figures generated from code blocks. Keep the document and code in the same location. Output is captured and included as a figure.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-pandoc-plot

(define-public haskell-8.8-pandoc-pyplot
  (package
    (name "haskell-8.8-pandoc-pyplot")
    (version "2.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-pyplot/pandoc-pyplot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jpf1fvn3qqaw7094sa79k12v7a7nbqcr6cambl6jr0mk307zm0a"))))
    (properties `((upstream-name . "pandoc-pyplot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-open-browser)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pandoc)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/LaurentRDC/pandoc-pyplot#readme")
    (synopsis
     "A Pandoc filter to include figures generated from Python code blocks")
    (description
     "A Pandoc filter to include figures generated from Python code blocks. Keep the document and Python code in the same location. Output is captured and included as a figure.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-pandoc-pyplot

(define-public haskell-8.8-servant-purescript
  (package
    (name "haskell-8.8-servant-purescript")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-purescript/servant-purescript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07q4nvdhhzyc3xkad130nkv7ckgmj6fmhrpryzpjdvddgq9320b4"))))
    (properties `((upstream-name . "servant-purescript") (hidden? . #f)))
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
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mainland-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-purescript-bridge)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-foreign)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-servant-subscriber)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/eskimor/servant-purescript#readme")
    (synopsis "Generate PureScript accessor functions for you servant API")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-servant-purescript

(define-public haskell-8.8-servant-swagger-ui
  (package
    (name "haskell-8.8-servant-swagger-ui")
    (version "0.3.4.3.37.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kx8i2x3ffbwbjh2i2ljha2cl6vfj1fcad9wkmc9ll9mbj6cpl8v"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

https://github.com/swagger-api/swagger-ui")
    (license license:bsd-3)))

haskell-8.8-servant-swagger-ui

(define-public haskell-8.8-servant-swagger-ui-redoc
  (package
    (name "haskell-8.8-servant-swagger-ui-redoc")
    (version "0.3.3.1.22.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-redoc/servant-swagger-ui-redoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bzkrh1hf29vfa1r1sgifb9j2zcg6i43fal4abbx4lcqvf155pzv"))))
    (properties `((upstream-name . "servant-swagger-ui-redoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1csz8gzmrrjbjvr6kx4vmyp419i5vbzk84a01vh5zr6ncrpx5nf3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui: ReDoc theme")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

ReDoc theme: https://github.com/Rebilly/ReDoc")
    (license license:bsd-3)))

haskell-8.8-servant-swagger-ui-redoc

(define-public haskell-8.8-serverless-haskell
  (package
    (name "haskell-8.8-serverless-haskell")
    (version "0.11.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serverless-haskell/serverless-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14jaykiwi5xzf9cvkkk35gqgk203yah1ln0skr7gi847bh95v7qf"))))
    (properties `((upstream-name . "serverless-haskell") (hidden? . #f)))
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
                     haskell-8.8-aeson-casing)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-kinesis)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-amazonka-s3)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-iproute)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/seek-oss/serverless-haskell#readme")
    (synopsis "Deploying Haskell code onto AWS Lambda using Serverless")
    (description
     "Utilities to help process the events from AWS Lambda when deployed with the serverless-haskell plugin.")
    (license license:expat)))

haskell-8.8-serverless-haskell

(define-public haskell-8.8-stack
  (package
    (name "haskell-8.8-stack")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stack/stack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j2z8cgb9c56g39dh5ff2sri3r3vxddy6ymznkywn6d7c1z4j7qs"))))
    (properties `((upstream-name . "stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer-mode" "-f-disable-git-info" "-f-hide-dependency-versions" "-f-integration-tests" "-f-static" "-f-supported-build")
       #:cabal-revision
       ("1" "0zlz3k4f94mxmi8cs6acs3jrgxwqjsrqli0wl216im39va960ac1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-casa-client)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-casa-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-echo)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-filelock)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-githash)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hackage-security)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hi-file-parser)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hpack)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-http-download)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mintty)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-mustache)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-open-browser)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-optparse-generic)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-optparse-simple)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-pantry)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-project-template)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-regex-applicative-text)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tar)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-metrics)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-th-reify-many)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskellstack.org")
    (synopsis "The Haskell Tool Stack")
    (description
     "Please see the documentation at <https://docs.haskellstack.org>
for usage information.

If building a 'stack' executable for distribution, please download the
source code from <https://github.com/commercialhaskell/stack/releases>
and build it using Stack itself in order to ensure identical behaviour
to official binaries.  This package on Hackage is provided for convenience
and bootstrapping purposes.

Note that the API for the library is not currently stable, and may
change significantly, even between minor releases. It is
currently only intended for use by the executable.")
    (license license:bsd-3)))

haskell-8.8-stack

(define-public haskell-8.8-yesod
  (package
    (name "haskell-8.8-yesod")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jk55fm58ywp69khacw8n3qk2aybsrlh4bkinjgrah3w01kflmyw"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-8.8-yesod

(define-public haskell-8.8-yesod-auth
  (package
    (name "haskell-8.8-yesod-auth")
    (version "1.6.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12bnadmf3afbkni3k8gc1srv2makssy62zciygg4dh8q7rr2pw2s"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-authenticate)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-email-validate)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-nonce)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-8.8-yesod-auth

(define-public haskell-8.8-yesod-form-bootstrap4
  (package
    (name "haskell-8.8-yesod-form-bootstrap4")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19lnn0xw13gcvp2jzw01pq47jfhxgwm1c84px3xm582p9vqyygx7"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-8.8-yesod-form-bootstrap4

(define-public haskell-8.8-yesod-recaptcha2
  (package
    (name "haskell-8.8-yesod-recaptcha2")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-recaptcha2/yesod-recaptcha2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mf9n016jxiq6ayq80fv9zldfjh9yskcq8p9grfr0dl8njj88yn5"))))
    (properties `((upstream-name . "yesod-recaptcha2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-classy-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-recaptcha2#readme")
    (synopsis "yesod recaptcha2")
    (description "recaptcha2 for yesod-form")
    (license license:expat)))

haskell-8.8-yesod-recaptcha2

