;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage027)
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
(define-public haskell-9.2-Spock-lucid
  (package
    (name "haskell-9.2-Spock-lucid")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-lucid/Spock-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15r3vk78vbhqi09liq0a3zabya845zfmblqahgw6r2jjx49da9ii"))))
    (properties `((upstream-name . "Spock-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-Spock)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/aelve/Spock-lucid")
    (synopsis "Lucid support for Spock")
    (description "Functions to use Lucid-generated HTML in Spock responses.")
    (license license:bsd-3)))

haskell-9.2-Spock-lucid

(define-public haskell-9.2-Spock-worker
  (package
    (name "haskell-9.2-Spock-worker")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-worker/Spock-worker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jywfrfdaklncp0dwl5mhppa9a10yy980yw8xqxsna75kzahkh7d"))))
    (properties `((upstream-name . "Spock-worker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-Spock)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/agrafix/Spock-worker")
    (synopsis "Background workers for Spock")
    (description "Adds a background-job queue to Spock")
    (license license:expat)))

haskell-9.2-Spock-worker

(define-public haskell-9.2-advent-of-code-api
  (package
    (name "haskell-9.2-advent-of-code-api")
    (version "0.2.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/advent-of-code-api/advent-of-code-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l7bl0aqn5d6ph730jpwb5h0lwhvrkcw4vla0l73sxrm52j9ma58"))))
    (properties `((upstream-name . "advent-of-code-api") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-finite-typelits)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mstksg/advent-of-code-api#readme")
    (synopsis "Advent of Code REST API bindings and servant API")
    (description
     "Haskell bindings for Advent of Code REST API and a servant API.  Please use
responsibly! See README.md or \"Advent\" module for an introduction and
tutorial.")
    (license license:bsd-3)))

haskell-9.2-advent-of-code-api

(define-public haskell-9.2-blank-canvas
  (package
    (name "haskell-9.2-blank-canvas")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blank-canvas/blank-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g10959ly5nv2xfhax4pamzxnxkqbniahplc5za8k5r4nq1vjrm2"))))
    (properties `((upstream-name . "blank-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("11" "1dyg4f4ji23lvq8ma7j7423z5ssd4ahbb1qgw1w586abbhziicn2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-kansas-comet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-text-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ku-fpg/blank-canvas/wiki")
    (synopsis "HTML5 Canvas Graphics Library")
    (description
     "@@blank-canvas@@ is a Haskell binding to the complete
<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.
@@blank-canvas@@ allows Haskell users to write, in Haskell,
interactive images onto their web browsers. @@blank-canvas@@
gives the user a single full-window canvas, and provides
many well-documented functions for rendering
images.

@@
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
module Main where
import Graphics.Blank                     -- import the blank canvas

main = blankCanvas 3000 $ \\\\ context -> do -- start blank canvas on port 3000
&#32;&#32;send context $ do                       -- send commands to this specific context
&#32;&#32;&#32;&#32;moveTo(50,50)
&#32;&#32;&#32;&#32;lineTo(200,100)
&#32;&#32;&#32;&#32;lineWidth 10
&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"
&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas
@@

<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>

For more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.
")
    (license license:bsd-3)))

haskell-9.2-blank-canvas

(define-public haskell-9.2-fedora-dists
  (package
    (name "haskell-9.2-fedora-dists")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-dists/fedora-dists-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0790akym2rrcch9jjky9v4qc6y22vg1w6ffi9nbx42zijkqmsm1f"))))
    (properties `((upstream-name . "fedora-dists") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-cached-json-file)
                  (@ (gnu packages stackage ghc-9.2 stage026) haskell-9.2-pdc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/fedora-dists")
    (synopsis "Library for Fedora distribution versions")
    (description "This library provides the Dist and Branch datatypes
and various associated metadata functions for
Red Hat distributions (Fedora, EPEL, RHEL) needed for
packaging development and building.
It uses current release data from Fedora PDC.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-fedora-dists

(define-public haskell-9.2-hakyll
  (package
    (name "haskell-9.2-hakyll")
    (version "4.15.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hakyll/hakyll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b3bw275q1xbx8qs9a6gzzs3c9z3qdj7skqhpp09jkchi5kdvhvi"))))
    (properties `((upstream-name . "hakyll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpreviewserver" "-fwatchserver" "-fcheckexternal" "-f-buildwebsite" "-fusepandoc")
       #:cabal-revision
       ("9" "11zdqxmmykw2nbd8isc638cj03vrz8nkicyv35sn7jdw2p690ybh")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages base) coreutils)
                         (@ (gnu packages linux) util-linux)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-lrucache)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-wai-app-static)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

* An IRC channel, @@#hakyll@@ on irc.libera.chat (we *do not* have a channel on Freenode anymore)

Additionally, there's the Haddock documentation in the different modules,
meant as a reference.")
    (license license:bsd-3)))

haskell-9.2-hakyll

(define-public haskell-9.2-mega-sdist
  (package
    (name "haskell-9.2-mega-sdist")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mega-sdist/mega-sdist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00c1cc2cgwr6p01xc8sf570aly5hw6p932anjjra7rw7a3mcmc96"))))
    (properties `((upstream-name . "mega-sdist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-optparse-simple)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pantry)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-rio-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mega-sdist#readme")
    (synopsis "Handles uploading to Hackage from mega repos")
    (description
     "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>")
    (license license:expat)))

haskell-9.2-mega-sdist

(define-public haskell-9.2-pagure-cli
  (package
    (name "haskell-9.2-pagure-cli")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagure-cli/pagure-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w0z6c3i91di9ixbpiwp610xyfp26g325571c0j5abscr1d2fbv7"))))
    (properties `((upstream-name . "pagure-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pagure)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pagure-cli")
    (synopsis "Pagure client")
    (description
     "A command-line Pagure client for querying projects and users.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-pagure-cli

(define-public haskell-9.2-pandoc-csv2table
  (package
    (name "haskell-9.2-pandoc-csv2table")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-csv2table/pandoc-csv2table-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14ln4i75cpqpjyzhqx0wvsrggvm6ak8rif514r5qwnckjl97v79l"))))
    (properties `((upstream-name . "pandoc-csv2table") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-csv)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/baig/pandoc-csv2table-filter")
    (synopsis "Convert CSV to Pandoc Table Markdown")
    (description "A Pandoc filter that replaces image inline or fenced code
blocks with pandoc table markdown. CSV contents will be
parsed by the pandoc markdown reader.")
    (license license:expat)))

haskell-9.2-pandoc-csv2table

(define-public haskell-9.2-pandoc-dhall-decoder
  (package
    (name "haskell-9.2-pandoc-dhall-decoder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-dhall-decoder")
    (synopsis "Decodes pandoc to dhall.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-pandoc-dhall-decoder

(define-public haskell-9.2-pandoc-plot
  (package
    (name "haskell-9.2-pandoc-plot")
    (version "1.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-plot/pandoc-plot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gcs6sh8fhlmaiha5wn60z2s5an7gnawgkyzlalf8grwnjqkm77h"))))
    (properties `((upstream-name . "pandoc-plot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lifted-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
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

haskell-9.2-pandoc-plot

(define-public haskell-9.2-pandoc-throw
  (package
    (name "haskell-9.2-pandoc-throw")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pandoc-throw")
    (synopsis "MonadThrow behaviour for Pandoc.")
    (description "Adds MonadThrow runners for PandocPure and PandocIO.")
    (license license:expat)))

haskell-9.2-pandoc-throw

(define-public haskell-9.2-servant-auth-client
  (package
    (name "haskell-9.2-servant-auth-client")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-jose)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-servant-auth)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-auth-server)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-client/servant-auth compatibility")
    (description
     "This package provides instances that allow generating clients from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.2-servant-auth-client

(define-public haskell-9.2-servant-checked-exceptions
  (package
    (name "haskell-9.2-servant-checked-exceptions")
    (version "2.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions/servant-checked-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0md5ck09phkplf0kqzj79sac92s8pw1pmic3bxcwcda80h26ck2j"))))
    (properties `((upstream-name . "servant-checked-exceptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-hspec-wai)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-servant-checked-exceptions-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-world-peace)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-servant-checked-exceptions

(define-public haskell-9.2-servant-conduit
  (package
    (name "haskell-9.2-servant-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-9.2-servant-conduit

(define-public haskell-9.2-servant-machines
  (package
    (name "haskell-9.2-servant-machines")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-machines)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-9.2-servant-machines

(define-public haskell-9.2-servant-multipart-client
  (package
    (name "haskell-9.2-servant-multipart-client")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart-client/servant-multipart-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07haaf9nq96lfv2dhqf4319vl321f53v0mypbbg3swzb6rrfkw9h"))))
    (properties `((upstream-name . "servant-multipart-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1jq89aizhkdivmgj9gispipf2mdyq1fnlq102lr5jm1vgrmfmbpx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-multipart)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-multipart-api)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package adds client-side support for file upload to the servant ecosystem.")
    (license license:bsd-3)))

haskell-9.2-servant-multipart-client

(define-public haskell-9.2-servant-pipes
  (package
    (name "haskell-9.2-servant-pipes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-safe)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for pipes")
    (description
     "Servant Stream support for pipes.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.")
    (license license:bsd-3)))

haskell-9.2-servant-pipes

(define-public haskell-9.2-servant-rate-limit
  (package
    (name "haskell-9.2-servant-rate-limit")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rate-limit/servant-rate-limit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l4kawmb5c6s3hlcfgn14nmcwqncz158njmy1fmdrgar0sd1i92"))))
    (properties `((upstream-name . "servant-rate-limit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fclient" "-fserver")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-units)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-time-units-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-rate-limit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Rate limiting for Servant")
    (description
     "A Haskell library which implements rate limiting for Servant")
    (license license:expat)))

haskell-9.2-servant-rate-limit

(define-public haskell-9.2-servant-static-th
  (package
    (name "haskell-9.2-servant-static-th")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iky6bk92vzhsw31hfdhgclr4nq1kmic6w9mwd5fzjhbs5vcmm15"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-blaze)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-servant-static-th

(define-public haskell-9.2-servant-swagger-ui-core
  (package
    (name "haskell-9.2-servant-swagger-ui-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-blaze)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-wai-app-static)))
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

haskell-9.2-servant-swagger-ui-core

(define-public haskell-9.2-stack
  (package
    (name "haskell-9.2-stack")
    (version "2.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stack/stack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01020dx89m07qmjs58vs2kidhkzq3106md08w6c65bzxvlf6kcwk"))))
    (properties `((upstream-name . "stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer-mode" "-f-disable-git-info" "-f-hide-dependency-versions" "-f-integration-tests" "-f-static" "-f-supported-build")
       #:cabal-revision
       ("4" "1ixa4k1jcsrq8i6zd5g483sp86kp87i2bifd5vfvpjyfzayb1n3d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-casa-client)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-casa-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-echo)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-filelock)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-githash)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hackage-security)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-hi-file-parser)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hpack)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-download)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mintty)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-mustache)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-open-browser)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-optparse-generic)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-optparse-simple)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pantry)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-project-template)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-rio-prettyprint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-metrics)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-th-reify-many)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-zip-archive)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-stack

(define-public haskell-9.2-stack-all
  (package
    (name "haskell-9.2-stack-all")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-all/stack-all-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aw5bx737cg0isdnnrhlwba0ddjki57p4ygav4piv5d3ffzhrfzm"))))
    (properties `((upstream-name . "stack-all") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-cached-json-file)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-config-ini)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/stack-all")
    (synopsis "CLI tool for building across Stackage major versions")
    (description
     "Build your Haskell project over Stackage major LTS versions.")
    (license license:bsd-3)))

haskell-9.2-stack-all

(define-public haskell-9.2-sydtest-servant
  (package
    (name "haskell-9.2-sydtest-servant")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-servant/sydtest-servant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gmaf1p7f588mvcf486wb32qjh74gvqyf965wczh5h0phgyg2f8z"))))
    (properties `((upstream-name . "sydtest-servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-sydtest-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A servant companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-servant

(define-public haskell-9.2-yesod
  (package
    (name "haskell-9.2-yesod")
    (version "1.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qglaxqx96c7wi4817ff67c9g2fxlnjzdpgic458i80khpdlmb5c"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-wai-logger)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-9.2-yesod

(define-public haskell-9.2-yesod-auth
  (package
    (name "haskell-9.2-yesod-auth")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-authenticate)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-nonce)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-9.2-yesod-auth

(define-public haskell-9.2-yesod-form-bootstrap4
  (package
    (name "haskell-9.2-yesod-form-bootstrap4")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yf4b14y8b5066lwdr7r2ayiavsnkar3s8q984yb1nrz5956f7qd"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-9.2-yesod-form-bootstrap4

(define-public haskell-9.2-yesod-markdown
  (package
    (name "haskell-9.2-yesod-markdown")
    (version "0.12.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-markdown/yesod-markdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wk7pmg0rxb28vkplm3npcrr2mkxaailvvf7scgsggczqslfszq9"))))
    (properties `((upstream-name . "yesod-markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-pandoc)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-xss-sanitize)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/pbrisbin/yesod-markdown")
    (synopsis "Tools for using markdown in a yesod application")
    (description
     "A subset of Pandoc functionality useful for markdown processing in yesod applications")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-yesod-markdown

(define-public haskell-9.2-yesod-recaptcha2
  (package
    (name "haskell-9.2-yesod-recaptcha2")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-recaptcha2/yesod-recaptcha2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ql05yxq3k8sywncaz3cf3xaihf4pd0ijn139ms8snyps36k6l8h"))))
    (properties `((upstream-name . "yesod-recaptcha2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-string-transform)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ncaq/yesod-recaptcha2#readme")
    (synopsis "yesod recaptcha2")
    (description "recaptcha2 for yesod-form")
    (license license:expat)))

haskell-9.2-yesod-recaptcha2

(define-public haskell-9.2-yesod-test
  (package
    (name "haskell-9.2-yesod-test")
    (version "1.6.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q4f1l3m4l8iy5vmaa8c0vm2iiqhpghf3kykymlh41xy96mqpn3"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-html-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-9.2-yesod-test

