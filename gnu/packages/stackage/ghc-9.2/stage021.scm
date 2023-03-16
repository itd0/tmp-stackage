;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage021)
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
(define-public haskell-9.2-api-maker
  (package
    (name "haskell-9.2-api-maker")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-maker/api-maker-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b3mh2z1paizbjzh4i03qvs5r8v6rgqmbga81dnsc6kxi4s8bw2a"))))
    (properties `((upstream-name . "api-maker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-easy-logger)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage019) haskell-9.2-req)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/schnecki/api-maker#readme")
    (synopsis "Package to make APIs")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/api-maker#readme>")
    (license license:bsd-3)))

haskell-9.2-api-maker

(define-public haskell-9.2-bench-show
  (package
    (name "haskell-9.2-bench-show")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bench-show/bench-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f0zx572d54dyyjifv4p550ci90gdr4mrifhwww4z6p87fbdi32j"))))
    (properties `((upstream-name . "bench-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-charts" "-f-no-colors")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-Chart)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-Chart-diagrams)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-csv)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-optparse-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-bench-show

(define-public haskell-9.2-domain
  (package
    (name "haskell-9.2-domain")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/domain/domain-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fdpbcn2cyfpkp8qln87b27fqrsy95n7sb2x3bpwhbr5dzz55ih2"))))
    (properties `((upstream-name . "domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-domain-core)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-th-lego)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-yaml-unscrambler)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain")
    (synopsis "Codegen helping you define domain models")
    (description
     "- For introduction and demo skip to [Readme](#readme).
- For documentation and syntax reference see the \"Domain.Docs\" module.
- For API documentation refer to the \"Domain\" module,
which exports the whole API of this package.")
    (license license:expat)))

haskell-9.2-domain

(define-public haskell-9.2-gi-gdk
  (package
    (name "haskell-9.2-gi-gdk")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14271bbi1dy0r1krxg0ry3hqmqv10v55ja55a912qknsq1ya8nka"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-gi-gio)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-gi-pango)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gdk

(define-public haskell-9.2-hasql
  (package
    (name "haskell-9.2-hasql")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04d4pa248pffqsj032m69wkv11cn0mdfc21qfygk3dcb1yfh0nnj"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-network-ip)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-text-builder)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql")
    (synopsis "An efficient PostgreSQL driver with a flexible mapping API")
    (description
     "Root of the \\\"hasql\\\" ecosystem.
For details and tutorials see
<https://github.com/nikita-volkov/hasql the readme>.

The API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.")
    (license license:expat)))

haskell-9.2-hasql

(define-public haskell-9.2-hip
  (package
    (name "haskell-9.2-hip")
    (version "1.5.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hip/hip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "122zcrid9x831hlv3dvh1afzffz2xg3s3k0dn1vf4b4cpd9w50mh"))))
    (properties `((upstream-name . "hip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-disable-chart")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-Chart)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-Chart-diagrams)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-netpbm)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-repa)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/hip")
    (synopsis "Haskell Image Processing (HIP) Library.")
    (description
     "
Haskell Image Processing (HIP) Library provides an easy to use interface with a whole variaty of image manipulation capabilities.

Processing can be done sequentially as well as in parallel, with an inherited fusion capabily, all through <https://hackage.haskell.org/package/repa repa> and <https://hackage.haskell.org/package/vector vector> packages. It is highly extendable, with an ability to add various color spaces or provide implementations for underlying array like custom data structures.

It is capable of reading and writing a number of popular image formats by using <https://hackage.haskell.org/package/JuicyPixels JuciyPixels> and <https://hackage.haskell.org/package/netpbm netpbm> packages. Being a pure Haskell library it does not require any external programs, although it can display images using a program of your choice.")
    (license license:bsd-3)))

haskell-9.2-hip

(define-public haskell-9.2-http2
  (package
    (name "haskell-9.2-http2")
    (version "3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/http2/http2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kv99i3pnnx31xndlkaczrpd2j5mvzbqlfz1kaw6cwlwkdnl5bhv"))))
    (properties `((upstream-name . "http2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-devel" "-f-h2spec" "-f-doc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-network-byte-order)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-run)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-time-manager)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unix-time)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kazu-yamamoto/http2")
    (synopsis "HTTP/2 library")
    (description
     "HTTP/2 library including frames, priority queues, HPACK, client and server.")
    (license license:bsd-3)))

haskell-9.2-http2

(define-public haskell-9.2-hw-excess
  (package
    (name "haskell-9.2-hw-excess")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-excess/hw-excess-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xiyf3xyg6f4kgkils9ycx6q0qcsbd6rw4m9lizw9295mnp05s3g"))))
    (properties `((upstream-name . "hw-excess") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "09c7x1qkmjs8bl9gzcb6ykls3jjj75i8hvwdfcx1zgiwg79w1g1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
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
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-excess

(define-public haskell-9.2-katip-logstash
  (package
    (name "haskell-9.2-katip-logstash")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/katip-logstash/katip-logstash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hd277cvgs83aqr70g3c59nb5jc81fxhv7ngkk80gx4gc62q6l19"))))
    (properties `((upstream-name . "katip-logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-katip)
                  (@ (gnu packages stackage ghc-9.2 stage019)
                     haskell-9.2-logstash)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash backend for katip.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.2-katip-logstash

(define-public haskell-9.2-logger-thread
  (package
    (name "haskell-9.2-logger-thread")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/joe9/logger-thread#readme")
    (synopsis
     "Run FastLogger in a thread and direct all queued messages to it.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-logger-thread

(define-public haskell-9.2-logging
  (package
    (name "haskell-9.2-logging")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logging/logging-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cd00pjxjdq69n6hxa01x31s2vdfd39kkvj0d0ssqj3n6ahssbxi"))))
    (properties `((upstream-name . "logging") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-regex-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/logging")
    (synopsis "Simplified logging in IO for application writers.")
    (description
     "@@logging@@ is a wrapper around @@fast-logger@@ which makes
it easy to log from 'IO'. It provides the following conveniences on top of
those libraries:

- A set of shorter functions to type: 'debug', 'log', 'warn', plus others
that flush after each message, or which allow providing a message source
string.

- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',
'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as
direct replacements, so the usual caveats apply.

- A global function, 'setDebugLevel', which uses a global 'IORef' to record
the logging level, saving you from having to carry around the notion of
\"verbosity level\" in a Reader environment.

- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how
long the specified action took to execute in wall-clock time.")
    (license license:expat)))

haskell-9.2-logging

(define-public haskell-9.2-monad-logger
  (package
    (name "haskell-9.2-monad-logger")
    (version "0.3.37")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z275a428zcj73zz0cpfha2adwiwqqqp7klx3kbd3i9rl20xa106"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("3" "1dzkw08b4ijacdw0vcfxlr13rd819x2yj7b6sr9jrrwicd45zm1z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-9.2-monad-logger

(define-public haskell-9.2-mongoDB
  (package
    (name "haskell-9.2-mongoDB")
    (version "2.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0csjhvsvy534lq7lvqx96dw6ia3737rg7q96174067k7mhkxwf9m"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")
       #:cabal-revision
       ("1" "06kdgrg2p2c9n6im1fy04y0rvlwc4xssmk9wvw33k9svhzld7afr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008) haskell-9.2-bson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage020) haskell-9.2-dns)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-nonce)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-mongoDB

(define-public haskell-9.2-morpheus-graphql-code-gen
  (package
    (name "haskell-9.2-morpheus-graphql-code-gen")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-code-gen/morpheus-graphql-code-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aw9fl0hzl657w2arybyk0zqxvbdz897kiqwsv52r50dnb5x2izf"))))
    (properties `((upstream-name . "morpheus-graphql-code-gen")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-morpheus-graphql-client)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-morpheus-graphql-code-gen-utils)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-morpheus-graphql-server)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL CLI")
    (description "code generator for Morpheus GraphQL")
    (license license:bsd-3)))

haskell-9.2-morpheus-graphql-code-gen

(define-public haskell-9.2-network-simple-tls
  (package
    (name "haskell-9.2-network-simple-tls")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple-tls/network-simple-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5xxqp2xw1q046sngd5gnwp7gn0ima9wm8drxxry13l0i0bnmn1"))))
    (properties `((upstream-name . "network-simple-tls") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-simple)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/network-simple-tls")
    (synopsis "Simple interface to TLS secured network sockets.")
    (description "Simple interface to TLS secured network sockets.")
    (license license:bsd-3)))

haskell-9.2-network-simple-tls

(define-public haskell-9.2-opentelemetry-lightstep
  (package
    (name "haskell-9.2-opentelemetry-lightstep")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-lightstep/opentelemetry-lightstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nvfyd2m393szvvsrpfv8f59xx55xk1mr4gv46idwr43mvqxdz84"))))
    (properties `((upstream-name . "opentelemetry-lightstep") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ghc-events)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-opentelemetry)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-opentelemetry-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-lightstep")
    (synopsis "")
    (description
     "The OpenTelemetry Haskell Client (Lightstep exporter) https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.2-opentelemetry-lightstep

(define-public haskell-9.2-optima
  (package
    (name "haskell-9.2-optima")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optima/optima-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pah3p4f5j8ah2ccb5mpq1dcjrlzvwg6pf0yfqhnq4m7j1nqhzlj"))))
    (properties `((upstream-name . "optima") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-attoparsec-data)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-text-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/optima")
    (synopsis "Simple command line interface arguments parser")
    (description "")
    (license license:expat)))

haskell-9.2-optima

(define-public haskell-9.2-pontarius-xmpp
  (package
    (name "haskell-9.2-pontarius-xmpp")
    (version "0.5.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pontarius-xmpp/pontarius-xmpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k01mmd19wcv5gzavnh81fhdiq8rlhvnv63f6n3s582qlsdc2lhi"))))
    (properties `((upstream-name . "pontarius-xmpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-th")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash-cryptoapi)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage020) haskell-9.2-dns)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-stringprep)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-xml-picklers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/l29ah/pontarius-xmpp/")
    (synopsis "An XMPP client library")
    (description
     "Pontarius XMPP is a work in progress implementation of RFC 6120
(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").
While in alpha, Pontarius XMPP works quite well and fulfills most
requirements of the RFCs.")
    (license license:bsd-3)))

haskell-9.2-pontarius-xmpp

(define-public haskell-9.2-postgresql-syntax
  (package
    (name "haskell-9.2-postgresql-syntax")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-syntax/postgresql-syntax-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ls3jjgbvdy0x3110lgjd3icas187qyd31cwvi858l6ayhwf9kck"))))
    (properties `((upstream-name . "postgresql-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-headed-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-text-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-syntax")
    (synopsis "PostgreSQL AST parsing and rendering")
    (description
     "Postgres syntax tree and related utils extracted from the \\\"hasql-th\\\" package.
The API is in a rather raw \\\"guts out\\\" state with most documentation lacking,
but the codebase is well tested.")
    (license license:expat)))

haskell-9.2-postgresql-syntax

(define-public haskell-9.2-spacecookie
  (package
    (name "haskell-9.2-spacecookie")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spacecookie/spacecookie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f60ak4i6msyxk4bypgiijsm8wg2qvj96lr7chy20kdy44wghnxp"))))
    (properties `((upstream-name . "spacecookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-download-curl)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-filepath-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-socket)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-systemd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/sternenseemann/spacecookie")
    (synopsis "Gopher server library and daemon")
    (description "Simple gopher library that allows writing custom gopher
applications. Also includes a fully-featured gopher server
daemon complete with gophermap-support built on top of it.")
    (license license:gpl3)))

haskell-9.2-spacecookie

(define-public haskell-9.2-stm-containers
  (package
    (name "haskell-9.2-stm-containers")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-containers/stm-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yhpnxj7v880fy7vgjz5idpqfg2sm4dflp13k7fs0bqqlfv9hkbc"))))
    (properties `((upstream-name . "stm-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-focus)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-list-t)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-stm-hamt)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/stm-containers")
    (synopsis "Containers for STM")
    (description
     "This library is based on an STM-specialized implementation of
Hash Array Mapped Trie.
It provides efficient implementations of @@Map@@, @@Set@@
and other data structures,
which starting from version @@1@@ perform even better than their counterparts from \\\"unordered-containers\\\",
but also scale well on concurrent access patterns.

For details on performance of the library, which are a bit outdated, see
<http://nikita-volkov.github.io/stm-containers/ this blog post>.")
    (license license:expat)))

haskell-9.2-stm-containers

(define-public haskell-9.2-text-ansi
  (package
    (name "haskell-9.2-text-ansi")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ansi/text-ansi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s0ad0nap9z0pzwl3nm2vglkz148qv120bngwy08bqb6vbs8w90p"))))
    (properties `((upstream-name . "text-ansi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-text-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/text-ansi")
    (synopsis "Text styling for ANSI terminals.")
    (description
     "Text styling for ANSI terminals using SGR codes, as defined by the
<https://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf ECMA-48>
standard.

Supports foreground\\/background color, bold\\/faint intensity, italic,
single\\/double underline, strikethrough, frame, encircle, and overline escape
sequences. Some styles may not work on your terminal.

Also features terminal detection, so redirecting styled output to a file will
automatically strip the ANSI escape sequences.")
    (license license:bsd-3)))

haskell-9.2-text-ansi

(define-public haskell-9.2-tls-debug
  (package
    (name "haskell-9.2-tls-debug")
    (version "0.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-debug/tls-debug-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x6yjk0m1jrkcy1y6ggrmnhkdrf0kbgvdry6p5i7f4bvfj432qvl"))))
    (properties `((upstream-name . "tls-debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-tls-session-manager)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "Set of programs for TLS testing and debugging")
    (description
     "A set of program to test and debug various aspect of the TLS package.
")
    (license license:bsd-3)))

haskell-9.2-tls-debug

(define-public haskell-9.2-wai-logger
  (package
    (name "haskell-9.2-wai-logger")
    (version "2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02i9jsy5gdglqwwk5gcvax8y498lz9flrfp4v9nrv8rmrmd66zh5"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteorder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-9.2-wai-logger

(define-public haskell-9.2-wss-client
  (package
    (name "haskell-9.2-wss-client")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wss-client/wss-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1licynhnyhfdq4gxpsya3gaypjs9inqzr2xqmjs9f99ymbvin8d8"))))
    (properties `((upstream-name . "wss-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-sample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-envy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-skews)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/wss-client")
    (synopsis "A-little-higher-level WebSocket client.")
    (description
     "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.")
    (license license:bsd-3)))

haskell-9.2-wss-client

(define-public haskell-9.2-xml-parser
  (package
    (name "haskell-9.2-xml-parser")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-parser/xml-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13af7yfxn1m7clhzxsbkd6q1nr8dslv39w4hvyhca0l7adplyyw3"))))
    (properties `((upstream-name . "xml-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-text-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nikita-volkov/xml-parser")
    (synopsis "XML parser with informative error-reporting and simple API")
    (description "")
    (license license:expat)))

haskell-9.2-xml-parser

