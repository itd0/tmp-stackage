;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage022)
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
(define-public haskell-8.6-MusicBrainz
  (package
    (name "haskell-8.6-MusicBrainz")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hMusicBrainz")
    (synopsis "interface to MusicBrainz XML2 and JSON web services")
    (description "interface to MusicBrainz XML2 and JSON web services")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-MusicBrainz

(define-public haskell-8.6-asif
  (package
    (name "haskell-8.6-asif")
    (version "6.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/asif/asif-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14c77hvghh6116ca29xzj1l7j95557mcfx0j9s73wxc82hl14wjg"))))
    (properties `((upstream-name . "asif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-cpu)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-ip)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-temporary-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-thyme)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/arbor/asif#readme")
    (synopsis "Library for creating and querying segmented feeds")
    (description
     "Library for creating and querying segmented feeds. Please see <https://github.com/arbor/asif#readme>")
    (license license:expat)))

haskell-8.6-asif

(define-public haskell-8.6-authenticate
  (package
    (name "haskell-8.6-authenticate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-html-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis "Authentication methods for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate>.")
    (license license:expat)))

haskell-8.6-authenticate

(define-public haskell-8.6-bench-show
  (package
    (name "haskell-8.6-bench-show")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bench-show/bench-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z1fdcdl9chwia9kd5pa9572mc5pmy5bld72axkzg20r7v53sr7k"))))
    (properties `((upstream-name . "bench-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08a95i3xwy2yz549hqfwd3j0j6gbsbc62jjmpxnk43yk5dl8dk63")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-Chart)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-Chart-diagrams)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-csv)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-optparse-simple)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-statistics)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/composewell/bench-show")
    (synopsis "Show, plot and compare benchmark results")
    (description
     "Generate text reports and graphical charts from the benchmark results generated
by @@gauge@@ or @@criterion@@ and stored in a CSV file. This tool is especially
useful when you have many benchmarks or if you want to compare benchmarks
across multiple packages. You can generate many interesting reports
including:

* Show individual reports for all the fields measured e.g. @@time taken@@, @@peak
memory usage@@, @@allocations@@, among many other fields measured by @@gauge@@
* Sort benchmark results on a specified criterion e.g. you may want to see the
biggest cpu hoggers or biggest memory hoggers on top
* Across two benchmark runs (e.g. before and after a change), show all the
operations that resulted in a regression of more than x% in descending
order, so that we can quickly identify and fix performance problems in our
application.
* Across two (or more) packages providing similar functionality, show all the
operations where the performance differs by more than 10%, so that we can
critically analyze the packages and choose the right one.

Quick Start: Use @@gauge@@ or @@criterion@@ to generate a @@results.csv@@ file, and
then use either the @@bench-show@@ executable or the library APIs to generate
textual or graphical reports.

@@
$ bench-show report results.csv
$ bench-show graph results.csv output
@@

@@
report \"results.csv\"  Nothing defaultConfig
graph  \"results.csv\" \"output\" defaultConfig
@@

There are many ways to present the reports, for example, you can show can
show % regression from a baseline in descending order textually as follows:

@@
(time)(Median)(Diff using min estimator)
Benchmark streamly(0)(μs)(base) streamly(1)(%)(-base)
\\--------- --------------------- ---------------------
zip                      644.33                +23.28
map                      653.36                 +7.65
fold                     639.96                -15.63
@@

To show the same graphically:

<<src/docs/regression-percent-descending-median-time.svg>>

See the README and the \"BenchShow.Tutorial\" module for comprehensive
documentation.")
    (license license:bsd-3)))

haskell-8.6-bench-show

(define-public haskell-8.6-cabal-rpm
  (package
    (name "haskell-8.6-cabal-rpm")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-rpm/cabal-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j0m5x3bgr5krjqfdmllsplhw4vh1vbmiq89v1x87zi1mgn3yf6m"))))
    (properties `((upstream-name . "cabal-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-fhttps")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-simple-cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-cmd)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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
packages. Standalone packages can also be packaged built with cabal-install.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-cabal-rpm

(define-public haskell-8.6-cabal2nix
  (package
    (name "haskell-8.6-cabal2nix")
    (version "2.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pxqdwxqc5siqrp7mqvz6g380wx4xn3y3mph8vjywvycvpqg2gqh"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hy50bhcyh5z5bd8yr44l40nmmwa3kqarbafs5b6w9nk83dgijpa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hackage-db)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hopenssl)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hpack)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-language-nix)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monad-par)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-tasty-golden)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the latest
version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-8.6-cabal2nix

(define-public haskell-8.6-cayley-client
  (package
    (name "haskell-8.6-cayley-client")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cayley-client/cayley-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05i032xqi4hplchf9dklxqi0fh5byw2ibyf1ba2wnxql2j7y177z"))))
    (properties `((upstream-name . "cayley-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/MichelBoucey/cayley-client")
    (synopsis "A Haskell client for the Cayley graph database")
    (description
     "cayley-client implements the RESTful API of the Cayley graph database.")
    (license license:bsd-3)))

haskell-8.6-cayley-client

(define-public haskell-8.6-colonnade
  (package
    (name "haskell-8.6-colonnade")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colonnade/colonnade-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1asjx71gp26a15v7g3p8bfddb5nnzky6672c35xx35hq73mhykr4"))))
    (properties `((upstream-name . "colonnade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1f4m7lqksb7lvzs3j5v8c04l2mmq7pq1d8w7p8y9chy595rrb1kn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/andrewthad/colonnade#readme")
    (synopsis "Generic types and functions for columnar encoding and decoding")
    (description
     "The `colonnade` package provides a way to talk about
columnar encodings and decodings of data. This package provides
very general types and does not provide a way for the end-user
to actually apply the columnar encodings they build to data.
Most users will also want to one a companion packages
that provides (1) a content type and (2) functions for feeding
data into a columnar encoding:

* <https://hackage.haskell.org/package/lucid-colonnade lucid-colonnade> for `lucid` html tables

* <https://hackage.haskell.org/package/blaze-colonnade blaze-colonnade> for `blaze` html tables

* <https://hackage.haskell.org/package/reflex-dom-colonnade reflex-dom-colonnade> for reactive `reflex-dom` tables

* <https://hackage.haskell.org/package/yesod-colonnade yesod-colonnade> for `yesod` widgets

* <http://hackage.haskell.org/package/siphon siphon> for encoding and decoding CSVs")
    (license license:bsd-3)))

haskell-8.6-colonnade

(define-public haskell-8.6-cryptocompare
  (package
    (name "haskell-8.6-cryptocompare")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptocompare/cryptocompare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cqnhg1ww79k3f6yisdir1fqiil13niv002p5s2kir9ks5phybni"))))
    (properties `((upstream-name . "cryptocompare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-MissingH)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aviaviavi/cryptocompare")
    (synopsis "Haskell wrapper for the cryptocompare API")
    (description
     "Haskell wrapper for the cryptocompare API, a source of information and pricing of different crypto-currencies.")
    (license license:expat)))

haskell-8.6-cryptocompare

(define-public haskell-8.6-datasets
  (package
    (name "haskell-8.6-datasets")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/datasets/datasets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ifml0gh7qm9anknqq0r0fi561b8zn7g1sqdlv718pyhx9y7g6i0"))))
    (properties `((upstream-name . "datasets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage021) haskell-8.6-req)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-streaming)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-streaming-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-streaming-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-streaming-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stringsearch)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DataHaskell/dh-core")
    (synopsis "Classical data sets for statistics and machine learning")
    (description
     "Classical machine learning and statistics datasets from
the UCI Machine Learning Repository and other sources.

The @@datasets@@ package defines two different kinds of datasets:

* small data sets which are directly (or indirectly with `file-embed`)
embedded in the package as pure values and do not require network or IO to download
the data set. This includes Iris, Anscombe and OldFaithful.

* other data sets which need to be fetched over the network with
`Numeric.Datasets.getDataset` and are cached in a local temporary directory.

The @@datafiles/@@ directory of this package includes copies of a few famous datasets, such as Titanic, Nightingale and Michelson.

Example :

> import Numeric.Datasets (getDataset)
> import Numeric.Datasets.Iris (iris)
> import Numeric.Datasets.Abalone (abalone)
>
> main = do
>   -- The Iris data set is embedded
>   print (length iris)
>   print (head iris)
>   -- The Abalone dataset is fetched
>   abas <- getDataset abalone
>   print (length abas)
>   print (head abas)")
    (license license:expat)))

haskell-8.6-datasets

(define-public haskell-8.6-dhall-bash
  (package
    (name "haskell-8.6-dhall-bash")
    (version "1.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06rv0wrs1ym6szy78wg3nyfwaqm279vy6m7zny9s90lnpa6dc098"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-dhall)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-optparse-generic)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-dhall-bash

(define-public haskell-8.6-dhall-json
  (package
    (name "haskell-8.6-dhall-json")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "176i30shaklranbhmb4m4zqn13cn9hd6lqiqdjv9qmckkapbkjpi"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-yaml-pre-0_11")
       #:cabal-revision
       ("1" "101xfp3zg9i7qyibknjpcdhha8sc024xmylphiwb509h3fjy3yks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-dhall)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-libyaml)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-json")
    (synopsis "Convert between Dhall and JSON or YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and JSON
or YAML. You can use this package as a library or an executable:

* See the \"Dhall.JSON\" module if you want to use this package as a library

* Use the @@dhall-to-json@@ or @@dhall-to-yaml@@ programs from this package if
you want an executable

The \"Dhall.JSON\" module also contains instructions for how to use this
package")
    (license license:bsd-3)))

haskell-8.6-dhall-json

(define-public haskell-8.6-dl-fedora
  (package
    (name "haskell-8.6-dl-fedora")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dl-fedora/dl-fedora-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zfdf2s8cq171ik3iwq0zcha60i3czpjiy9bqa5wxczbwp0jpaxa"))))
    (properties `((upstream-name . "dl-fedora") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-directory)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-cmd)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-xdg-userdirs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/dl-fedora")
    (synopsis "Fedora image download tool")
    (description "Tool to download Fedora iso and image files")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-dl-fedora

(define-public haskell-8.6-elm2nix
  (package
    (name "haskell-8.6-elm2nix")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elm2nix/elm2nix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fbxr1k6iarmzx7xam3bvgayhxmgq1yn47crckgka4s667dgsnjd"))))
    (properties `((upstream-name . "elm2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-here)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage021) haskell-8.6-req)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/domenkozar/elm2nix#readme")
    (synopsis "Turn your Elm project into buildable Nix project")
    (description
     "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>")
    (license license:bsd-3)))

haskell-8.6-elm2nix

(define-public haskell-8.6-gi-gdkpixbuf
  (package
    (name "haskell-8.6-gi-gdkpixbuf")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-gi-gio)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-gi-gobject)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-gdkpixbuf

(define-public haskell-8.6-google-isbn
  (package
    (name "haskell-8.6-google-isbn")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/google-isbn#readme")
    (synopsis "")
    (description
     "Basic utility to search an ISBN using the Google Books webservice")
    (license license:bsd-3)))

haskell-8.6-google-isbn

(define-public haskell-8.6-http-download
  (package
    (name "haskell-8.6-http-download")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-download/http-download-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f1haybqflprm3gwnxsyi6pyz7k4b5qyiq4wqq81wb7nsrr4h943"))))
    (properties `((upstream-name . "http-download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-rio-prettyprint)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/http-download#readme")
    (synopsis "Verified downloads with retries")
    (description
     "Higher level HTTP download APIs include verification of content and retries")
    (license license:bsd-3)))

haskell-8.6-http-download

(define-public haskell-8.6-http2
  (package
    (name "haskell-8.6-http2")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/http2/http2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14qh1g0f0m0gj8ciww7rh9mcsxxjyvp5sv3ggyyxb0qf3prhalds"))))
    (properties `((upstream-name . "http2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")
       #:cabal-revision
       ("1" "0x5k0nllfgbjsl0x6y04f6jvrf2r5qfyc3zr2702z5bahvyfqccl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-network-byte-order)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-psqueues)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-time-manager)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (home-page "https://github.com/kazu-yamamoto/http2")
    (synopsis "HTTP/2 library")
    (description
     "HTTP/2 library including frames, priority queues, HPACK and server.")
    (license license:bsd-3)))

haskell-8.6-http2

(define-public haskell-8.6-hw-excess
  (package
    (name "haskell-8.6-hw-excess")
    (version "0.2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-excess/hw-excess-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rlw53nbhjdvjqb1f0kacnmiiwhx04az6p4mf0iv5fwxcjh94q2r"))))
    (properties `((upstream-name . "hw-excess") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bll4amizah25w4c6xplndig77hd6jh65q6zjyr5x4vr11vg6xbx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-excess

(define-public haskell-8.6-irc-client
  (package
    (name "haskell-8.6-irc-client")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-client/irc-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08s1qb9dc6icz9fxfp5swcx817685vj833l8ijpf1gdgyzw6wfdq"))))
    (properties `((upstream-name . "irc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-irc-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-irc-client

(define-public haskell-8.6-kawhi
  (package
    (name "haskell-8.6-kawhi")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/thunky-monk/kawhi")
    (synopsis "stats.NBA.com library")
    (description "Functions and types for interacting with stats.NBA.com")
    (license license:expat)))

haskell-8.6-kawhi

(define-public haskell-8.6-logger-thread
  (package
    (name "haskell-8.6-logger-thread")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logger-thread/logger-thread-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ajaq3mfvzy58b3nmbdhkgsqxdcz76flv710fpwzdkv9380582mc"))))
    (properties `((upstream-name . "logger-thread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page "https://github.com/joe9/logger-thread#readme")
    (synopsis
     "Run FastLogger in a thread and direct all queued messages to it.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-logger-thread

(define-public haskell-8.6-mime-mail-ses
  (package
    (name "haskell-8.6-mime-mail-ses")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-mail-ses/mime-mail-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6k4cm5yab9dhg7yn6mp7jzk1zdwpnzc6c1xb3vz3rdwp8jjvx7"))))
    (properties `((upstream-name . "mime-mail-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-mime-mail)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Send mime-mail messages via Amazon SES")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail-ses>.")
    (license license:expat)))

haskell-8.6-mime-mail-ses

(define-public haskell-8.6-minio-hs
  (package
    (name "haskell-8.6-minio-hs")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-digest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-ini)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/minio/minio-hs#readme")
    (synopsis "A MinIO Haskell Library for Amazon S3 compatible cloud
storage.")
    (description "The MinIO Haskell client library provides simple APIs to
access MinIO, Amazon S3 and other API compatible cloud
storage servers.")
    (license license:asl2.0)))

haskell-8.6-minio-hs

(define-public haskell-8.6-mmtf
  (package
    (name "haskell-8.6-mmtf")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmtf/mmtf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xkgj8x8ql5a51r6dfnfw9538hrr6ylp6nvgqbpcwf3xdzln0hic"))))
    (properties `((upstream-name . "mmtf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-data-msgpack)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/zmactep/mmtf#readme")
    (synopsis "Macromolecular Transmission Format implementation")
    (description "Haskell implementation of MMTF biological structure format.")
    (license license:bsd-3)))

haskell-8.6-mmtf

(define-public haskell-8.6-monad-logger
  (package
    (name "haskell-8.6-monad-logger")
    (version "0.3.31")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0awr06bh5d51kci2w2xsj34qvh98sb6dm48a4k05k8awv8hrrpmd"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("2" "18hs14101w2vymhzp4p2p0aglva9mz0y9iq7na5f6876lnamdh77")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-8.6-monad-logger

(define-public haskell-8.6-nuxeo
  (package
    (name "haskell-8.6-nuxeo")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001) haskell-8.6-url)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/apeyroux/nuxeo#readme")
    (synopsis "")
    (description "Nuxeo tools")
    (license license:bsd-3)))

haskell-8.6-nuxeo

(define-public haskell-8.6-oeis2
  (package
    (name "haskell-8.6-oeis2")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis2/oeis2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04dbly6ggadmy1bi10x9bbsa6dvynb5g1m5hdrlzv3mpyfahxvwp"))))
    (properties `((upstream-name . "oeis2") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/23prime/oeis2#readme")
    (synopsis "Interface for Online Encyclopedia of Integer Sequences (OEIS).")
    (description
     "Release notes are here https://github.com/23prime/oeis2/releases")
    (license license:bsd-3)))

haskell-8.6-oeis2

(define-public haskell-8.6-pandoc-citeproc
  (package
    (name "haskell-8.6-pandoc-citeproc")
    (version "0.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-citeproc/pandoc-citeproc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15mm17awgi1b5yazwhr5nh8b59qml1qk6pz6gpyijks70fq2arsv"))))
    (properties `((upstream-name . "pandoc-citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbibutils" "-f-embed_data_files" "-f-unicode_collation" "-f-test_citeproc" "-f-debug" "-f-static")
       #:cabal-revision
       ("3" "07bi7fg4pjcb1nj9lkpr2mzd4smzy7vk155cqfbsgdwxl5dhmww5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-hs-bibutils)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-libyaml)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-pandoc)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-rfc5051)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-setenv)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-pandoc-citeproc

(define-public haskell-8.6-pandoc-csv2table
  (package
    (name "haskell-8.6-pandoc-csv2table")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-csv)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-pandoc)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/baig/pandoc-csv2table-filter")
    (synopsis "Convert CSV to Pandoc Table Markdown")
    (description "A Pandoc filter that replaces image inline or fenced code
blocks with pandoc table markdown. CSV contents will be
parsed by the pandoc markdown reader.")
    (license license:expat)))

haskell-8.6-pandoc-csv2table

(define-public haskell-8.6-pandoc-markdown-ghci-filter
  (package
    (name "haskell-8.6-pandoc-markdown-ghci-filter")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-markdown-ghci-filter/pandoc-markdown-ghci-filter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m5hiqwkn1a0y3awrk8s7b9wwasspjaa3gdnck6w9xf7vgb5bgza"))))
    (properties `((upstream-name . "pandoc-markdown-ghci-filter")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-ghcid)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-pandoc)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/gdevanla/pandoc-markdown-ghci-filter#readme")
    (synopsis
     "Pandoc-filter to evaluate `code` section in markdown and auto-embed output.")
    (description
     "Please see the README on GitHub at <https://github.com/gdevanla/pandoc-markdown-ghci-filter#readme>")
    (license license:expat)))

haskell-8.6-pandoc-markdown-ghci-filter

(define-public haskell-8.6-pandoc-pyplot
  (package
    (name "haskell-8.6-pandoc-pyplot")
    (version "2.1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-pyplot/pandoc-pyplot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "100mn7q5nz7xvhbnhjsfmcf9n6x1gjl71akrnc5j8k2j57bk1kkf"))))
    (properties `((upstream-name . "pandoc-pyplot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-open-browser)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-pandoc)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LaurentRDC/pandoc-pyplot#readme")
    (synopsis
     "A Pandoc filter to include figures generated from Python code blocks")
    (description
     "A Pandoc filter to include figures generated from Python code blocks. Keep the document and Python code in the same location. Output from Matplotlib is captured and included as a figure.")
    (license license:expat)))

haskell-8.6-pandoc-pyplot

(define-public haskell-8.6-pencil
  (package
    (name "haskell-8.6-pencil")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pencil/pencil-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a1lb0dclv6p6qkd6nd3zp665n6spkv10yd1i2m67rrqabg802cl"))))
    (properties `((upstream-name . "pencil") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "012afvs4wghdw7adz0hw01pmi8ai89r8jhpykdwfyf4ignbrfpvq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-edit-distance)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-hsass)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-pandoc)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages web) libsass)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/elben/pencil")
    (synopsis "Static site generator")
    (description
     "Pencil is a static site generator. Use Pencil to build a personal website, a
blog, and more. Pencil comes pre-loaded with goodies such as Markdown and
Sass/Scss support, templating, blogging, and tagging. Designed with the
Haskell beginner in mind, but flexible enough to extend for your own needs.")
    (license license:bsd-3)))

haskell-8.6-pencil

(define-public haskell-8.6-ratel-wai
  (package
    (name "haskell-8.6-ratel-wai")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qpbhi1g7j5qbn15s0h8vdhc6zisz5j2hgr6qwg2kipi4kvvsgy9"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-ratel)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/ratel-wai#readme")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-8.6-ratel-wai

(define-public haskell-8.6-reanimate
  (package
    (name "haskell-8.6-reanimate")
    (version "0.1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate/reanimate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vr0cqn47gl7810clqvn1wgkz3glzd216jmyvxfp6q1i5jhbizvw"))))
    (properties `((upstream-name . "reanimate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-chiphunk)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cubicbezier)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-diagrams)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-contrib)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-diagrams-svg)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-fsnotify)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-here)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-matrix)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-open-browser)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-palette)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-reanimate-svg)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-svg-builder)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Lemmih/reanimate")
    (synopsis "Animation library based on SVGs.")
    (description
     "Animation library based on SVGs. Can import (and manipulate) SVGs from
LaTeX and diagrams. Exports gifs, mp4s, and more. Ships with a webbased
viewer and auto-reloader.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-reanimate

(define-public haskell-8.6-req-conduit
  (package
    (name "haskell-8.6-req-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021) haskell-8.6-req)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-8.6-req-conduit

(define-public haskell-8.6-stripe-wreq
  (package
    (name "haskell-8.6-stripe-wreq")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-wreq/stripe-wreq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i5d0c9zha4v9361p92kq5bpma5dq5aqdkqdrghwpzx0pppfpx3y"))))
    (properties `((upstream-name . "stripe-wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stripe-concepts)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage021) haskell-8.6-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Use the Stripe API via Wreq")
    (description "This package helps you make requests to the
<https://stripe.com/ Stripe> API in conjunction with
the <https://hackage.haskell.org/package/wreq wreq> package.
This is a minimal library that makes no attempt obscure
either its underpinnings in Wreq or any of the details of the
Stripe API. Responses are returned as
<https://hackage.haskell.org/package/aeson aeson> values.")
    (license license:expat)))

haskell-8.6-stripe-wreq

(define-public haskell-8.6-textlocal
  (package
    (name "haskell-8.6-textlocal")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-unix-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/just-chow/textlocal")
    (synopsis "Haskell wrapper for textlocal SMS gateway")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-textlocal

(define-public haskell-8.6-tinylog
  (package
    (name "haskell-8.6-tinylog")
    (version "0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tinylog/tinylog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pwdymx4kx3im9pzah0lmh64x7agdklf6dwqpjx93ybswi61cwfb"))))
    (properties `((upstream-name . "tinylog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-double-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-unix-time)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://gitlab.com/twittner/tinylog/")
    (synopsis "Simplistic logging using fast-logger.")
    (description "Trivial logger on top of fast-logger.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.6-tinylog

(define-public haskell-8.6-verbosity
  (package
    (name "haskell-8.6-verbosity")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/verbosity/verbosity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wzhkzgd6yxzdkmd2n8hwhrfyh5n88xs0hkil9l98wjh3mnn1qja"))))
    (properties `((upstream-name . "verbosity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fbinary" "-fdata-default" "-fdeepseq" "-f-cereal" "-f-safecopy" "-f-lattices" "-fdhall" "-fserialise")
       #:cabal-revision
       ("1" "11nw7xwvfc4aqnl9wibgfx0adzpnfbz58cjhcanf04j8pjk609lf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-dhall)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-8.6-verbosity

(define-public haskell-8.6-wai-logger
  (package
    (name "haskell-8.6-wai-logger")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05gbipyw0672irynsc3wqvvgzqixhmq69ay2mxh2phb734r8bcmm"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1625gk6vi687ld0kykhx6rkwj1qjw2krj4pmg8nkf5s3m8yz8nbq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteorder)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-8.6-wai-logger

