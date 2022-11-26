;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage020)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.0))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.0-Frames
  (package
    (name "haskell-9.0-Frames")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Frames/Frames-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pn2i7qbjbmnzvj2ns3sh2m8i1yhc5w0y6lbzc4dsn2lqv5zpi0c"))))
    (properties `((upstream-name . "Frames") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-discrimination)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-pipes-group)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-parse)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-safe)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-readable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Frames")
    (synopsis "Data frames For working with tabular data files")
    (description "User-friendly, type safe, runtime efficient tooling for
working with tabular data deserialized from
comma-separated values (CSV) files. The type of
each row of data is inferred from data, which can
then be streamed from disk, or worked with in
memory.")
    (license license:bsd-3)))

haskell-9.0-Frames

(define-public haskell-9.0-PrimitiveArray
  (package
    (name "haskell-9.0-PrimitiveArray")
    (version "0.10.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/PrimitiveArray/PrimitiveArray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114d41g28i8iah5gpb1377rzfmbcsfay9gr9dhhyyj4dqrpdn1df"))))
    (properties `((upstream-name . "PrimitiveArray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug" "-f-debugoutput" "-f-llvm" "-f-debugdump" "-f-dump-core")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-DPutils)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-OrderedBits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-bits)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-vector)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/PrimitiveArray")
    (synopsis "Efficient multidimensional arrays")
    (description
     "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>

This library provides efficient multidimensional arrays. Import
@@Data.PrimitiveArray@@ for indices, lenses, and arrays.

For
<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized ADP>
users, the library also provides the machinary to
fill tables in the correct order required by usual CYK-style
parsers, or regular grammars (used e.g. in alignment
algorithms). This means that unless your grammar requires a
strange order in which parsing is to be performed, it will
mostly \"just work\".

In general operations do not perform bounds-checking or other
sanity-checking and are aimed towards efficiency as much as
possible. Users (like @@ADPfusion@@) should perform their own
bounds-checking, outside of code that performs \"loop-like\"
operations.")
    (license license:bsd-3)))

haskell-9.0-PrimitiveArray

(define-public haskell-9.0-SciBaseTypes
  (package
    (name "haskell-9.0-SciBaseTypes")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SciBaseTypes/SciBaseTypes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12k2arn3qbgfa8bc344vv02smqj3yd6rqhnpfib3yi43nkbaazqa"))))
    (properties `((upstream-name . "SciBaseTypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debugdump")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-DPutils)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/SciBaseTypes")
    (synopsis "Base types and classes for statistics, sciences and humanities")
    (description "This library provides a set of basic types and classes for
statistics, sciences, and the humanities.")
    (license license:bsd-3)))

haskell-9.0-SciBaseTypes

(define-public haskell-9.0-active
  (package
    (name "haskell-9.0-active")
    (version "0.2.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/active/active-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fz2rsyk41p9f9avlmn9lrdmii5alv88lkw677mw8q6mzyxpw67i"))))
    (properties `((upstream-name . "active") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/active")
    (synopsis "Abstractions for animation")
    (description
     "\"Active\" abstraction for animated things with finite start and end times.")
    (license license:bsd-3)))

haskell-9.0-active

(define-public haskell-9.0-aeson-diff
  (package
    (name "haskell-9.0-aeson-diff")
    (version "1.1.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-diff/aeson-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sd13q0nj0k1sam5xfj6dcjcki18f375sa69hm6i4xc6snfhn3cb"))))
    (properties `((upstream-name . "aeson-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1028adallw7bm72948lj322bb5a99gfs0qc1j0pnm8hryp6n7ma5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-edit-distance-vector)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ysangkok/aeson-diff")
    (synopsis "Extract and apply patches to JSON documents.")
    (description
     "
This is a small library for working with changes to JSON documents. It
includes a library and two command-line executables in the style of the
diff(1) and patch(1) commands available on many systems.
")
    (license license:bsd-3)))

haskell-9.0-aeson-diff

(define-public haskell-9.0-aeson-yaml
  (package
    (name "haskell-9.0-aeson-yaml")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yaml/aeson-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06x1l0a0dvzf8n2xmqny5qpsgdsl03xlh2z9x7wdxiykl8p4xd24"))))
    (properties `((upstream-name . "aeson-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-binaries")
       #:cabal-revision
       ("3" "11srm7kkslnicqvbk728kzpy58am8rz680f7l6axn2nfh5ykx8n6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-string-qq)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/clovyr/aeson-yaml")
    (synopsis "Output any Aeson value as YAML (pure Haskell library)")
    (description
     "This library exposes functions for encoding any Aeson value as YAML. There
is also support for encoding multiple values into YAML \"documents\".

This library is pure Haskell, and does not depend on C FFI with libyaml. It
is also licensed under the BSD3 license.")
    (license license:bsd-3)))

haskell-9.0-aeson-yaml

(define-public haskell-9.0-apecs
  (package
    (name "haskell-9.0-apecs")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/apecs/apecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h4pdfh6c2cc9w13crn90rlllykv2axjfmxb74ji2l9m17m4w4vy"))))
    (properties `((upstream-name . "apecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n0sz1230fp65dv462ss15yma6g1dxxlamj7idgl3kg9gdwv70sn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-9.0-apecs

(define-public haskell-9.0-ascii
  (package
    (name "haskell-9.0-ascii")
    (version "1.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ascii/ascii-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pzyamd64mj8sx5a43gi7yjdy5dx6k9648ihbgsri8k8srlhm0c8"))))
    (properties `((upstream-name . "ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lxjb940qm86i1b2i9dgyj8874y49spwmkm5ninxd5hs7g9manll")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-ascii-case)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-ascii-group)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ascii-numbers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-ascii-predicates)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-ascii-superset)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ascii-th)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "The ASCII character set and encoding")
    (description
     "This package provides a variety of ways to work with ASCII text.")
    (license license:asl2.0)))

haskell-9.0-ascii

(define-public haskell-9.0-attoparsec-path
  (package
    (name "haskell-9.0-attoparsec-path")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-path/attoparsec-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "035n430iwqkfkxpphgn8xjd3h5qav8dwd1gm4a3v3z8h49i2cwfh"))))
    (properties `((upstream-name . "attoparsec-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-9.0-attoparsec-path

(define-public haskell-9.0-auto-update
  (package
    (name "haskell-9.0-auto-update")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/auto-update/auto-update-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i36xc2i34aync8271x3pv515l3zb53i518dybn8ghqkhzf27q7l"))))
    (properties `((upstream-name . "auto-update") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-retry)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-9.0-auto-update

(define-public haskell-9.0-aws-cloudfront-signed-cookies
  (package
    (name "haskell-9.0-aws-cloudfront-signed-cookies")
    (version "0.2.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-cloudfront-signed-cookies/aws-cloudfront-signed-cookies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mzsg6wfzgiippl8kw54m16i1m7zxwfqfwx3wbb3m372pg4h9sza"))))
    (properties `((upstream-name . "aws-cloudfront-signed-cookies")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1d9zsm2y08mzgr25wk3bf1laz918vbjvrfh7kc56r1naiqqprj74")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/aws-cloudfront-signed-cookies")
    (synopsis "Generate signed cookies for AWS CloudFront")
    (description
     "One way to [serve private content through AWS CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html) is to use [signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-cookies.html). This package helps you generate signed cookies [using a custom IAM policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-setting-signed-cookie-custom-policy.html) which may include a range of time for which the cookie is valid and an IP address restriction.")
    (license license:expat)))

haskell-9.0-aws-cloudfront-signed-cookies

(define-public haskell-9.0-aws-xray-client-wai
  (package
    (name "haskell-9.0-aws-xray-client-wai")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client-wai/aws-xray-client-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n6viya3j94nx1sys9lqabmnc72szmslkpibhc1df1gl453633y9"))))
    (properties `((upstream-name . "aws-xray-client-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with WAI.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with WAI.")
    (license license:expat)))

haskell-9.0-aws-xray-client-wai

(define-public haskell-9.0-beam-migrate
  (package
    (name "haskell-9.0-beam-migrate")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-migrate/beam-migrate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1nb5y6lzc5zclkz925kr446kc05sdj94hbvpf41lypx0b133xv"))))
    (properties `((upstream-name . "beam-migrate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-beam-core)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-dependent-map)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-dependent-sum)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-pqueue)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://travis.athougies.net/projects/beam.html")
    (synopsis "SQL DDL support and migrations support library for Beam")
    (description
     "This package provides type classes to allow backends to implement
SQL DDL support for beam. This allows you to use beam syntax to
write type-safe schema generation code.
The package also provides features to introspect beam schemas,
and support for automatic generation of migrations in SQL and
Haskell formats.
This is mostly a low-level support library. Most often, this
library is used to write tooling to support DDL manipulation in
your project, or to enable migrations support in beam backends.
For a more turnkey solution for database migrations, consider
the <http://hackage.haskell.org/package/beam-migrate-cli beam-migrate>
command line tool. This provides out-of-the-box support for migrations,
schema change management, and version control, based on the features
provided in this library.")
    (license license:expat)))

haskell-9.0-beam-migrate

(define-public haskell-9.0-bm
  (package
    (name "haskell-9.0-bm")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bm/bm-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1rpwlbhn5fkndw19ryksm9x2fcg7z7xscigi4zfs9v4w16skn7zj"))))
    (properties `((upstream-name . "bm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("3" "12san5rjl486n4wf3918bd3rm64n52d82vgz85pjb8gc2s8drdk1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/bm-haskell#readme")
    (synopsis "open bookmarks and queries from the command line")
    (description
     "This package provides a command-line utility that opens bookmarks and
queries.  Please see the README on GitHub at
<https://github.com/ExtremaIS/bm-haskell#readme>.")
    (license license:expat)))

haskell-9.0-bm

(define-public haskell-9.0-call-alloy
  (package
    (name "haskell-9.0-call-alloy")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/call-alloy/call-alloy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1clzw0sk13gzwk2ikxlz7p0f70pb2246pnd01ggjm0nrfykri18p"))))
    (properties `((upstream-name . "call-alloy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-trifecta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/marcellussiegburg/call-alloy#readme")
    (synopsis "A simple library to call Alloy given a specification")
    (description
     "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-alloy#readme>")
    (license license:expat)))

haskell-9.0-call-alloy

(define-public haskell-9.0-citeproc
  (package
    (name "haskell-9.0-citeproc")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/citeproc/citeproc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "015ansq3a710s0hzs2157fx12bc4f1hy45l4dbi6j477sy800bqc"))))
    (properties `((upstream-name . "citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-icu" "-f-executable")
       #:cabal-revision
       ("1" "1mzhq6s0jcncm71s825bvc289lq7i45rxmmi33x2j5i0v93zci4b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-timeit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-unicode-collation)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/citeproc")
    (synopsis "Generates citations and bibliography from CSL styles.")
    (description "citeproc parses CSL style files and uses them to
generate a list of formatted citations and bibliography
entries.  For more information about CSL, see
<https://citationstyles.org/>.")
    (license license:bsd-2)))

haskell-9.0-citeproc

(define-public haskell-9.0-clash-lib
  (package
    (name "haskell-9.0-clash-lib")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-lib/clash-lib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hgz8x68hnpizn4jmpb0vw40qigrdf9p25i7zhc97i851riqvqss"))))
    (properties `((upstream-name . "clash-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug" "-funittests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-clash-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-concurrent-supply)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-hint)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-text)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stringsearch)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-trifecta)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://clash-lang.org/")
    (synopsis
     "Clash: a functional hardware description language - As a library")
    (description
     "Clash is a functional hardware description language that borrows both its
syntax and semantics from the functional programming language Haskell. The
Clash compiler transforms these high-level descriptions to low-level
synthesizable VHDL, Verilog, or SystemVerilog.

Features of Clash:

* Strongly typed, but with a very high degree of type inference, enabling both
safe and fast prototyping using concise descriptions.

* Interactive REPL: load your designs in an interpreter and easily test all
your component without needing to setup a test bench.

* Higher-order functions, with type inference, result in designs that are
fully parametric by default.

* Synchronous sequential circuit design based on streams of values, called
@@Signal@@s, lead to natural descriptions of feedback loops.

* Support for multiple clock domains, with type safe clock domain crossing.


This package provides:

* The CoreHW internal language: SystemF + Letrec + Case-decomposition

* The normalisation process that brings CoreHW in a normal form that can be
converted to a netlist

* Blackbox/Primitive Handling


Front-ends (for: parsing, typecheck, etc.) are provided by separate packages:

* <https://hackage.haskell.org/package/clash-ghc GHC/Haskell Frontend>

* <https://github.com/christiaanb/Idris-dev Idris Frontend>


Prelude library: <https://hackage.haskell.org/package/clash-prelude>")
    (license license:bsd-2)))

haskell-9.0-clash-lib

(define-public haskell-9.0-componentm-devel
  (package
    (name "haskell-9.0-componentm-devel")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm-devel/componentm-devel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jvv2f5akl47jg66xwcgj0s5wif0wckp2d0y6x4imr6kcy31mrd"))))
    (properties `((upstream-name . "componentm-devel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-componentm)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-foreign-store)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-teardown)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Easy REPL driven development using ComponentM")
    (description
     "This library enhances the componentm with auto-reloading
capabilites for your application, allowing to ensure cleanup
of resources when doing REPL driven development, or when using
ghcid")
    (license license:expat)))

haskell-9.0-componentm-devel

(define-public haskell-9.0-conduit-algorithms
  (package
    (name "haskell-9.0-conduit-algorithms")
    (version "0.0.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-algorithms/conduit-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i5jq66xylcnk3yhv2m6lhyqfdrwr94w8v67jzwlvja15jv7mj9v"))))
    (properties `((upstream-name . "conduit-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-lzma-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-stm-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-9.0-conduit-algorithms

(define-public haskell-9.0-configuration-tools
  (package
    (name "haskell-9.0-configuration-tools")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configuration-tools/configuration-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gindjq9vd0fmsw6smwd3syz3k3bfkzsgmchqg6jllr6bhgvykjy"))))
    (properties `((upstream-name . "configuration-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-remote-configs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alephcloud/hs-configuration-tools")
    (synopsis "Tools for specifying and parsing configurations")
    (description
     "Tools for specifying and parsing configurations

This package provides a collection of utils on top of the packages
<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,
<http://hackage.haskell.org/package/aeson aeson>, and
<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and
applications in a convenient and composable way.

The main features are

1. configuration management through integration of command line option
parsing and configuration files and

2. a @@Setup.hs@@ file that generates a @@PkgInfo@@ module for each component
of a package that provides information about the package and the build.

Documentation on how to use this package can be found in the
<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>
and in the API documentation of the modules \"Configuration.Utils\" and
\"Configuration.Utils.Setup\".")
    (license license:expat)))

haskell-9.0-configuration-tools

(define-public haskell-9.0-connection
  (package
    (name "haskell-9.0-connection")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection/connection-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nbmafhlg0wy4aa3p7amjddbamdz6avzrxn4py3lvhrjqn4raxax"))))
    (properties `((upstream-name . "connection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08f1n38zryd0jklyv3yillilp040zxfxha6jphrmf28haq2irnk5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-socks)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-system)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-9.0-connection

(define-public haskell-9.0-cursor-gen
  (package
    (name "haskell-9.0-cursor-gen")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-gen/cursor-gen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a591kx30d8zmwl1rp78scjgbakkslq45wx6f558wmpph33gnw5s"))))
    (properties `((upstream-name . "cursor-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-cursor)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-hspec-optics)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Generators for Purely Functional Cursors")
    (description
     "Generators for Purely Functional Cursors for common data structures")
    (license license:expat)))

haskell-9.0-cursor-gen

(define-public haskell-9.0-cyclotomic
  (package
    (name "haskell-9.0-cyclotomic")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cyclotomic/cyclotomic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3977xi7s78h5bcq8gksamqimdm1h0hnjzalg3d63rvanjv4v84"))))
    (properties `((upstream-name . "cyclotomic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-arithmoi)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-test-framework-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cyclotomic")
    (synopsis "A subfield of the complex numbers for exact calculation.")
    (description "The cyclotomic numbers are a subset of the
complex numbers that are represented exactly, enabling exact
computations and equality comparisons.  They
contain the Gaussian rationals (complex numbers
of the form p + q i with p and q rational), as well
as all complex roots of unity.  The
cyclotomic numbers contain the square roots of
all rational numbers.  They contain the sine and
cosine of all rational multiples of pi.
The cyclotomic numbers form a field, being closed under
addition, subtraction, mutiplication, and division.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-cyclotomic

(define-public haskell-9.0-dbus
  (package
    (name "haskell-9.0-dbus")
    (version "1.2.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dbus/dbus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03bpvdgjq4l7s5mihdhazd0aamcjvg9wxlgpsnm10r7jdk7lbbia"))))
    (properties `((upstream-name . "dbus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/rblaze/haskell-dbus#readme")
    (synopsis "A client library for the D-Bus IPC system.")
    (description
     "D-Bus is a simple, message-based protocol for inter-process
communication, which allows applications to interact with other parts of
the machine and the user's session using remote procedure calls.

D-Bus is a essential part of the modern Linux desktop, where it replaces
earlier protocols such as CORBA and DCOP.

This library is an implementation of the D-Bus protocol in Haskell. It
can be used to add D-Bus support to Haskell applications, without the
awkward interfaces common to foreign bindings.

Example: connect to the session bus, and get a list of active names.

@@
&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;

import Data.List (sort)
import DBus
import DBus.Client

main = do
&#x20;   client <- connectSession
&#x20;
&#x20;   -- Request a list of connected clients from the bus
&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")
&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"
&#x20;       &#x7d;
&#x20;
&#x20;   -- org.freedesktop.DBus.ListNames() returns a single value, which is
&#x20;   -- a list of names (here represented as [String])
&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)
&#x20;
&#x20;   -- Print each name on a line, sorted so reserved names are below
&#x20;   -- temporary names.
&#x20;   mapM_ putStrLn (sort names)
@@

>$ ghc --make list-names.hs
>$ ./list-names
>:1.0
>:1.1
>:1.10
>:1.106
>:1.109
>:1.110
>ca.desrt.dconf
>org.freedesktop.DBus
>org.freedesktop.Notifications
>org.freedesktop.secrets
>org.gnome.ScreenSaver")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-dbus

(define-public haskell-9.0-declarative
  (package
    (name "haskell-9.0-declarative")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/declarative/declarative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10dwdzl4gbxwvb068kz8kiprk18bwl79pkyhyyrmfzawf8zp3pha"))))
    (properties `((upstream-name . "declarative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-mcmc-types)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-mighty-metropolis)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-speedy-slice)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/declarative")
    (synopsis "DIY Markov Chains.")
    (description
     "This package presents a simple combinator language for Markov transition
operators that are useful in MCMC.

Any transition operators sharing the same stationary distribution and obeying
the Markov and reversibility properties can be combined in a couple of ways,
such that the resulting operator preserves the stationary distribution and
desirable properties amenable for MCMC.

We can deterministically concatenate operators end-to-end, or sample from
a collection of them according to some probability distribution.  See
<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.

A useful strategy is to hedge one's 'sampling risk' by occasionally
interleaving a computationally-expensive transition (such as a gradient-based
algorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis
transitions.

> transition = frequency [
>     (9, metropolis 1.0)
>   , (1, hamiltonian 0.05 20)
>   ]

Alternatively: sample consecutively using the same algorithm, but over a
range of different proposal distributions.

> transition = concatAllT [
>     slice 0.5
>   , slice 1.0
>   , slice 2.0
>   ]

Or just mix and match and see what happens!

> transition =
>   sampleT
>     (sampleT (metropolis 0.5) (slice 0.1))
>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))

Check the test suite for example usage.")
    (license license:expat)))

haskell-9.0-declarative

(define-public haskell-9.0-diagrams-core
  (package
    (name "haskell-9.0-diagrams-core")
    (version "1.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-core/diagrams-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gv1p5hrxi3hks0nb4l38gdgfq9bh9d86b6dxcyzqxrwxbxk1khn"))))
    (properties `((upstream-name . "diagrams-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-dual-tree)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-extras)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Core libraries for diagrams EDSL")
    (description "The core modules underlying diagrams,
an embedded domain-specific language
for compositional, declarative drawing.")
    (license license:bsd-3)))

haskell-9.0-diagrams-core

(define-public haskell-9.0-distribution-nixpkgs
  (package
    (name "haskell-9.0-distribution-nixpkgs")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-nixpkgs/distribution-nixpkgs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kq4pf5dalifxd8qxz75fazfjspn36q0cmp8d1jd7w9zlzc3c4dz"))))
    (properties `((upstream-name . "distribution-nixpkgs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-language-nix)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NixOS/distribution-nixpkgs")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-9.0-distribution-nixpkgs

(define-public haskell-9.0-emd
  (package
    (name "haskell-9.0-emd")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/emd/emd-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "11w9q8v5mpwww8pq5dwg8ijf0wqs7sqa0k6qgv52gg5b2wjlf0im"))))
    (properties `((upstream-name . "emd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-conduino)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage013) haskell-9.0-fft)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-finite-typelits)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-typelits-witnesses)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/emd#readme")
    (synopsis "Empirical Mode Decomposition and Hilbert-Huang Transform")
    (description
     "Empirical Mode decomposition and Hilbert-Huang Transform in pure
Haskell.")
    (license license:bsd-3)))

haskell-9.0-emd

(define-public haskell-9.0-fakedata
  (package
    (name "haskell-9.0-fakedata")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata/fakedata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12sldxpn14zx5zwblw28k593rdqz50d246rz8j3zj41ljmnbwj4i"))))
    (properties `((upstream-name . "fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-fakedata-parser)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-string-random)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-9.0-fakedata

(define-public haskell-9.0-feed
  (package
    (name "haskell-9.0-feed")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/feed/feed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0marh7qmggq1z5339nid3gil7k786d3yk79b0rwfkxxaxmr41xd8"))))
    (properties `((upstream-name . "feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-party/feed")
    (synopsis "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.")
    (description
     "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.

To help working with the multiple feed formats we've
ended up with, this set of modules provides parsers,
pretty printers and some utility code for querying
and just generally working with a concrete representation
of feeds in Haskell.

See here for an example of how to create an Atom feed:
<https://github.com/haskell-party/feed/blob/master/tests/Example/CreateAtom.hs>

For basic reading and editing of feeds, consult
the documentation of the Text.Feed.* hierarchy.")
    (license license:bsd-3)))

haskell-9.0-feed

(define-public haskell-9.0-fix-whitespace
  (package
    (name "haskell-9.0-fix-whitespace")
    (version "0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fix-whitespace/fix-whitespace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jlkx0ygl315yik0f2fh4ml77c4080y0czs2mlnc84pkhximj58l"))))
    (properties `((upstream-name . "fix-whitespace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-filepattern)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agda/fix-whitespace")
    (synopsis "Fixes whitespace issues.")
    (description
     "Removes trailing whitespace, lines containing only whitespace, expands tabs,
and ensures that every file ends in a newline character.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-fix-whitespace

(define-public haskell-9.0-force-layout
  (package
    (name "haskell-9.0-force-layout")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/force-layout/force-layout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17956k3mab2xhrmfy7fj5gh08h43yjlsryi5acjhnkmin5arhwpp"))))
    (properties `((upstream-name . "force-layout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "0271sh8py8lm6amwxyr4dic20cji5hq1iixmikq0kmijg1095wkp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/force-layout")
    (synopsis "Simple force-directed layout")
    (description "Simulation engine for doing simple force-based layout,
/e.g./ for trees or graphs.  See the diagrams-contrib package
for usage examples.")
    (license license:bsd-3)))

haskell-9.0-force-layout

(define-public haskell-9.0-frontmatter
  (package
    (name "haskell-9.0-frontmatter")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/frontmatter/frontmatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17dr2g1rywai80hx2v51ljwjpsn6m1jgg6lb4gq9fwq9snq9gsv6"))))
    (properties `((upstream-name . "frontmatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-9.0-frontmatter

(define-public haskell-9.0-functor-combinators
  (package
    (name "haskell-9.0-functor-combinators")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-combinators/functor-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b7324ia810i1rjn2z4q3h7rcbbvmfh3nl8vxswgnkglhrkcmg49"))))
    (properties `((upstream-name . "functor-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-assoc)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-deriving-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-invariant)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-natural-transformation)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-nonempty-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-sop-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-trivial-constraint)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/functor-combinators#readme")
    (synopsis "Tools for functor combinator-based program design")
    (description
     "Tools for working with /functor combinators/: types that take functors (or
other indexed types) and returns a new functor that \"enhances\" or \"mixes\"
them in some way.  In the process, you can design featureful programs by
composing smaller \"primitives\" using basic unversal combinators.

The main entry point is \"Data.Functor.Combinators\", but more fine-grained
functionality and extra combinators (some of them re-implementations for
compatibility) are available in other modules as well.

This library does not define new functor combinators for the most part,
but rather re-exports them from different parts of the Haskell ecosystem
and provides a uniform interface.

See the README for a quick overview, and also
<https://blog.jle.im/entry/functor-combinatorpedia.html> for an in-depth
dive into the motivation behind functor combinator-driven development,
examples of the functor combinators in this library, and details about how
to use these abstractions!")
    (license license:bsd-3)))

haskell-9.0-functor-combinators

(define-public haskell-9.0-genvalidity-mergeless
  (package
    (name "haskell-9.0-genvalidity-mergeless")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeless/genvalidity-mergeless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1glz1w7mpbwpn800khqd2jzigs19k6y0bxx7cid2zvzwrnhz6prl"))))
    (properties `((upstream-name . "genvalidity-mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-mergeless)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-9.0-genvalidity-mergeless

(define-public haskell-9.0-geojson
  (package
    (name "haskell-9.0-geojson")
    (version "4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/geojson/geojson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p8vl13g9axbqqj3qbl453p4qwwmz0xjhpa5vmlk1fjznr04mdx6"))))
    (properties `((upstream-name . "geojson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-validation)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zellige/hs-geojson")
    (synopsis "A thin GeoJSON Layer above the aeson library")
    (description
     "A thin GeoJSON Layer above the aeson library.

It currently conforms to version 1.0 of the GeoJSON spec which can be found here:

<https://tools.ietf.org/html/rfc7946>")
    (license license:bsd-3)))

haskell-9.0-geojson

(define-public haskell-9.0-ginger
  (package
    (name "haskell-9.0-ginger")
    (version "0.10.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ginger/ginger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bl2cmr8sp9vnsvqq5wa0c56yljrhj3s09k2j5gyhp5xsskxa0gp"))))
    (properties `((upstream-name . "ginger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://ginger.tobiasdammers.nl/")
    (synopsis "An implementation of the Jinja2 template language in Haskell")
    (description "Ginger is Jinja, minus the most blatant pythonisms. Wants
to be feature complete, but isn't quite there yet.")
    (license license:expat)))

haskell-9.0-ginger

(define-public haskell-9.0-hamilton
  (package
    (name "haskell-9.0-hamilton")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamilton/hamilton-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06yvmm9641v74kd265csycwp6ywyc19mx0r0csycljcfghhj6xiw"))))
    (properties `((upstream-name . "hamilton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-ad)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-finite-typelits)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-typelits-witnesses)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-vector-sized)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-vty)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hamilton#readme")
    (synopsis
     "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD")
    (description
     "See README.md (or read online at <https://github.com/mstksg/hamilton#readme>)")
    (license license:bsd-3)))

haskell-9.0-hamilton

(define-public haskell-9.0-hamtsolo
  (package
    (name "haskell-9.0-hamtsolo")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamtsolo/hamtsolo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zgkwj2q3jpg6x6acrq2dbp0n0gps2wrrg2wx4ybpvy9vbw9qppc"))))
    (properties `((upstream-name . "hamtsolo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-9.0-hamtsolo

(define-public haskell-9.0-haskell-gi
  (package
    (name "haskell-9.0-haskell-gi")
    (version "0.26.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi/haskell-gi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05r84czb05n69g7p7jazljh95yzdh2lpzgjjypgpg75mh83igr2w"))))
    (properties `((upstream-name . "haskell-gi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "Generate Haskell bindings for GObject Introspection capable libraries")
    (description
     "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably
Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-haskell-gi

(define-public haskell-9.0-hedis
  (package
    (name "haskell-9.0-hedis")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedis/hedis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a09i21qmzjcx171452bm69cj188f1jha2gwj0yi7shimcqz3l8m"))))
    (properties `((upstream-name . "hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytestring-lexing)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-scanner)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/informatikr/hedis")
    (synopsis
     "Client library for the Redis datastore: supports full command set,
pipelining.")
    (description
     "Redis is an open source, advanced key-value store. It is often referred to
as a data structure server since keys can contain strings, hashes, lists,
sets and sorted sets. This library is a Haskell client for the Redis
datastore. Compared to other Haskell client libraries it has some
advantages:

[Compatibility with Latest Stable Redis:] Hedis is intended
to be used with the latest stable version of Redis (currently 5.0).
Most redis commands (<http://redis.io/commands>) are available as
haskell functions, although MONITOR and SYNC are intentionally
omitted. Additionally, a low-level API is
exposed that  makes it easy for the library user to implement further
commands, such as new commands from an experimental Redis version.

[Automatic Optimal Pipelining:] Commands are pipelined
(<http://redis.io/topics/pipelining>) as much as possible without any
work by the user. See
<http://informatikr.com/2012/redis-pipelining.html> for a
technical explanation of automatic optimal pipelining.

[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server
(<http://redis.io/topics/pubsub>), clients are not allowed to issue
commands other than subscribing to or unsubscribing from channels. This
library uses the type system to enforce the correct behavior.

[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to
connect to a Redis server. For connections to a server on the same
machine, Unix domain sockets offer higher performance than the standard
TCP connection.

For detailed documentation, see the \"Database.Redis\" module.
")
    (license license:bsd-3)))

haskell-9.0-hedis

(define-public haskell-9.0-hie-bios
  (package
    (name "haskell-9.0-hie-bios")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hie-bios/hie-bios-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pcbgrn0hl19rk72z7mcd44j72lsmnl88nlk95rlb47l0ymr3ij1"))))
    (properties `((upstream-name . "hie-bios") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hvhln1mnvghs05959fi5i71gaw04zhdk4wg558h2p4ybjcjsvb5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mpickering/hie-bios")
    (synopsis "Set up a GHC API session")
    (description
     "Set up a GHC API session and obtain flags required to compile a source file")
    (license license:bsd-3)))

haskell-9.0-hie-bios

(define-public haskell-9.0-hinfo
  (package
    (name "haskell-9.0-hinfo")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hinfo/hinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04q4camvpfhgqmph4xpilwin9z5ig2v2mwhz2gz8wmgzyqxfbklv"))))
    (properties `((upstream-name . "hinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-9.0-hinfo

(define-public haskell-9.0-hledger-ui
  (package
    (name "haskell-9.0-hledger-ui")
    (version "1.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sagm19anvs9b609s4rzlhjdjwd74ywbxf211j35ia5wslj8031x"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-brick)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doclayout)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hledger)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-microlens-platform)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-zipper)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis
     "Curses-style terminal interface for the hledger accounting system")
    (description
     "A simple curses-style terminal user interface for the hledger accounting system.
It can be a more convenient way to browse your accounts than the CLI.
This package currently does not support Microsoft Windows, except in WSL.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-hledger-ui

(define-public haskell-9.0-hlint
  (package
    (name "haskell-9.0-hlint")
    (version "3.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g4fnx0xlwny41dw01vxmfq9ibfwvpgf1cailj870k2wrbs2c9df"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fthreaded" "-fgpl" "-f-ghc-lib" "-f-hsyaml")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-cpphs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-filepattern)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hscolour)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-refact)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-9.0-hlint

(define-public haskell-9.0-hreader-lens
  (package
    (name "haskell-9.0-hreader-lens")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hreader-lens/hreader-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l02fplf2gjns869rhlwzglg08gl8cpjciv9fh05rg74dhn0m3s0"))))
    (properties `((upstream-name . "hreader-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hreader)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-hset)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-action)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/dredozubov/hreader-lens")
    (synopsis "Optics for hreader package")
    (description "")
    (license license:expat)))

haskell-9.0-hreader-lens

(define-public haskell-9.0-hslua
  (package
    (name "haskell-9.0-hslua")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hslua/hslua-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0adii64aaq20dmsxkrac8smgwa9vm1ld1rpzz3m33vyyp1yfsjka"))))
    (properties `((upstream-name . "hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hslua-classes)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "HsLua provides wrappers and helpers
to bridge Haskell and <https://www.lua.org/ Lua>.

It builds upon the /lua/ package, which allows to bundle
a Lua interpreter with a Haskell program.

<https://github.com/hslua/hslua-examples Example programs>
are available in a separate repository.")
    (license license:expat)))

haskell-9.0-hslua

(define-public haskell-9.0-hslua-module-path
  (package
    (name "haskell-9.0-hslua-module-path")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-path/hslua-module-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sy2k4mb263kg85vkf39ja84xz5kvm6z61xn62jy1swhrvvd96sr"))))
    (properties `((upstream-name . "hslua-module-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with file paths.")
    (description "Lua module to work with file paths in a platform
independent way.")
    (license license:expat)))

haskell-9.0-hslua-module-path

(define-public haskell-9.0-hslua-module-system
  (package
    (name "haskell-9.0-hslua-module-system")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-system/hslua-module-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lacf9jzd53r75dk5nvkx0nwgiakpkingjnz58bhjfnvi81r6ddn"))))
    (properties `((upstream-name . "hslua-module-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Lua module wrapper around Haskell's System module.")
    (description "Provides access to system information and
functionality to Lua scripts via Haskell's `System`
module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.0-hslua-module-system

(define-public haskell-9.0-hslua-module-text
  (package
    (name "haskell-9.0-hslua-module-text")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-text/hslua-module-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xq5ndgjhs37d73s8lvm0pndwjpj2pqb67pr0ckjap8yzhjna7fq"))))
    (properties `((upstream-name . "hslua-module-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.0-hslua-module-text

(define-public haskell-9.0-hslua-module-version
  (package
    (name "haskell-9.0-hslua-module-version")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-version/hslua-module-version-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v24lbbagvaz0hacq4525snp6smz8yc5ifrxg89z1y5bbn7v46f5"))))
    (properties `((upstream-name . "hslua-module-version") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with version specifiers.")
    (description "Wrapper for the Data.Version.Version Haskell type.")
    (license license:expat)))

haskell-9.0-hslua-module-version

(define-public haskell-9.0-hspec-golden-aeson
  (package
    (name "haskell-9.0-hspec-golden-aeson")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-golden-aeson/hspec-golden-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mj516xn6an2pkygfzm2418hbvaf8yvgwgvmpgpwrxqss87m3c84"))))
    (properties `((upstream-name . "hspec-golden-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-9.0-hspec-golden-aeson

(define-public haskell-9.0-hspec-junit-formatter
  (package
    (name "haskell-9.0-hspec-junit-formatter")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-junit-formatter/hspec-junit-formatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06003bw98bp9jl379463x1bk3ds30spsmg9h4lvr367k6diyi6ax"))))
    (properties `((upstream-name . "hspec-junit-formatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freckle/hspec-junit-formatter#readme")
    (synopsis "A JUnit XML runner/formatter for hspec")
    (description
     "Allows hspec tests to write JUnit XML output for parsing in various tools.")
    (license license:expat)))

haskell-9.0-hspec-junit-formatter

(define-public haskell-9.0-html-conduit
  (package
    (name "haskell-9.0-html-conduit")
    (version "1.3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-conduit/html-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bwrdam3y47kqllgg6w098ghqb8jb10dp4wxirsvx5ddpx9zpi6"))))
    (properties `((upstream-name . "html-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-9.0-html-conduit

(define-public haskell-9.0-hw-ip
  (package
    (name "haskell-9.0-hw-ip")
    (version "2.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-ip/hw-ip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cwj6402314lblh7cm77j1bkpnjqpsk7rn8z94awqp4pfp4x8dk0"))))
    (properties `((upstream-name . "hw-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hfivvc6s1nnzp30h4nafbhjhgbwx1ip07ggqmafzymaw8wvky44")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-appar)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-ip#readme")
    (synopsis "Library for manipulating IP addresses and CIDR blocks")
    (description
     "Library for manipulating IP addresses and CIDR blocks. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-ip

(define-public haskell-9.0-hw-packed-vector
  (package
    (name "haskell-9.0-hw-packed-vector")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-packed-vector/hw-packed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aplyknpf81kqpisz9zibyncg2i95dnfv6kywlg3wf7ic1wcjqxh"))))
    (properties `((upstream-name . "hw-packed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0h2y77lixrj2iva4d6w181g258d0yqnf4prbkg4fmflqmck9308c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-packed-vector#readme")
    (synopsis "Packed Vector")
    (description "Packed Vector. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-packed-vector

(define-public haskell-9.0-hw-rankselect-base
  (package
    (name "haskell-9.0-hw-rankselect-base")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect-base/hw-rankselect-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s0lqwq0rjmjca6lshfnxqi0c7bzlyflhm45xw1xa9pvqci8439h"))))
    (properties `((upstream-name . "hw-rankselect-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("5" "0gaqxa05m6a519zpvhlnhvnd4j5jh0zm9div8z4qx5h0g9g82i1m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-bits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-bitvec)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hw-int)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-rankselect-base

(define-public haskell-9.0-hw-streams
  (package
    (name "haskell-9.0-hw-streams")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-streams/hw-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hzpx1j06h98y0zcmysklzn3s3mvpbb1nkwg4zkbdxvzzqs5hnm5"))))
    (properties `((upstream-name . "hw-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("5" "0a34xli9sdvqzc571k72hl3a2jhbhxs24y03k6pdzzz3akznhbn0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-hw-bits)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-streams#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-9.0-hw-streams

(define-public haskell-9.0-jose
  (package
    (name "haskell-9.0-jose")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kii03gr6n8ayp1q3hid5qslzwgxm6isjnw8klvg7j82kliikycj"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-concise)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-monad-time)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-jose")
    (synopsis
     "JSON Object Signing and Encryption (JOSE) and JSON Web Token (JWT) library")
    (description
     "
An implementation of the Javascript Object Signing and Encryption
(JOSE) and JSON Web Token (JWT; RFC 7519) formats.

The JSON Web Signature (JWS; RFC 7515) implementation is complete.

EdDSA signatures (RFC 8037) are supported (Ed25519 only).

JWK Thumbprint (RFC 7638) is supported.

JSON Web Encryption (JWE; RFC 7516) is not yet implemented.

The __ECDSA implementation is vulnerable to timing attacks__ and
should only be used for verification.")
    (license license:asl2.0)))

haskell-9.0-jose

(define-public haskell-9.0-junit-xml
  (package
    (name "haskell-9.0-junit-xml")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/junit-xml/junit-xml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sm738irwvmdnn8cvf0rnvp8s5gmr0ih241l27sasqq18nra2v04"))))
    (properties `((upstream-name . "junit-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jwoudenberg/junit-xml#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/junit-xml>.")
    (license license:bsd-3)))

haskell-9.0-junit-xml

(define-public haskell-9.0-jwt
  (package
    (name "haskell-9.0-jwt")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jwt/jwt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1l9qblq11kbrrmcfnh0hcjqnhmi3qm6va3z4pmi4i32wqh3bwjnx"))))
    (properties `((upstream-name . "jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0afy7kpsw9x2nx7d7fk3jc4rjm6mpiaihihqr5dnqg09wig760h6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-cryptostore)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-9.0-jwt

(define-public haskell-9.0-koji
  (package
    (name "haskell-9.0-koji")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/koji/koji-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ypr552453r0b9s5xlsw0gllka2jaf9xwphlnx55fn05f17zh7qd"))))
    (properties `((upstream-name . "koji") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-haxr)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/koji-hs")
    (synopsis "Koji buildsystem XML-RPC API bindings")
    (description
     "This library provides Haskell bindings to the Koji XML RPC API.
Koji is a distributed rpm buildsystem used by Fedora, Centos,
Red Hat, and other projects. See <https://pagure.io/koji/>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-koji

(define-public haskell-9.0-lackey
  (package
    (name "haskell-9.0-lackey")
    (version "2.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lackey/lackey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0drcq03vsya11002wg7i3phbgyylcyx4zry3ixflffm8sz00smci"))))
    (properties `((upstream-name . "lackey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-foreign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tfausak/lackey#readme")
    (synopsis "Generate Ruby clients from Servant APIs.")
    (description "Lackey generates Ruby clients from Servant APIs.")
    (license license:expat)))

haskell-9.0-lackey

(define-public haskell-9.0-logstash
  (package
    (name "haskell-9.0-logstash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logstash/logstash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17s7529mcvpm7pqjz5d980ra70z41zk0k52l6ps1p1zfi5p4niys"))))
    (properties `((upstream-name . "logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-retry)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash client library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.0-logstash

(define-public haskell-9.0-lsp
  (package
    (name "haskell-9.0-lsp")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lsp/lsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "18hnb4k3zwjxp3r5jrgrbakvqr2d16azp6jwmfv5lq5n8xn6mwgv"))))
    (properties `((upstream-name . "lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("1" "01a4c4qr2zf0izawrkhbw831hawnl576ckw1an07lxvxdif68py4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lsp-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-sorted-list)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description
     "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell Language
Server, at https://github.com/haskell/haskell-language-server")
    (license license:expat)))

haskell-9.0-lsp

(define-public haskell-9.0-lxd-client-config
  (package
    (name "haskell-9.0-lxd-client-config")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lxd-client-config/lxd-client-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kxg42hrgq5w38v1zsq8v9x0ky83c02k8rx2qcyazh7bkg4m4f4h"))))
    (properties `((upstream-name . "lxd-client-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-lxd-client-config#readme")
    (synopsis "Read the configuration file of the standard LXD client.")
    (description
     "This package can read the configuration file of the standard LXD client.

It can for example extract information about the configured LXD remotes on
your system.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-lxd-client-config

(define-public haskell-9.0-markdown
  (package
    (name "haskell-9.0-markdown")
    (version "0.1.17.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown/markdown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aglxvgpp6f8gvlvkdx0d5vik552wjiv0xys8b1jlh7zdbwwghcq"))))
    (properties `((upstream-name . "markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-9.0-markdown

(define-public haskell-9.0-massiv
  (package
    (name "haskell-9.0-massiv")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15ckrsavsrkgm4c9al2jlk1r4nm2mdjshw1ksbkh8m65l3l5kcrr"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-scheduler)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-9.0-massiv

(define-public haskell-9.0-mmark
  (package
    (name "haskell-9.0-mmark")
    (version "0.0.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmark/mmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zahgky724s0x89c9jp4fa6m0kzh461sc2lcpwaw61hqgamaay4c"))))
    (properties `((upstream-name . "mmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0jpin5hrh2wi5yqzzccww3rb94ylb3i7y0wm16q8knq4680fq8zx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-email-validate)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-html-entity-map)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-modern-uri)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-metrics)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-9.0-mmark

(define-public haskell-9.0-mono-traversable-instances
  (package
    (name "haskell-9.0-mono-traversable-instances")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-instances/mono-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fnkz8dlfz0bl7mx2p5y96w91zdhdvnzx1a9a8zlfxz06mwarhgb"))))
    (properties `((upstream-name . "mono-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-dlist-instances)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description
     "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>")
    (license license:expat)))

haskell-9.0-mono-traversable-instances

(define-public haskell-9.0-mono-traversable-keys
  (package
    (name "haskell-9.0-mono-traversable-keys")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-keys/mono-traversable-keys-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v0bh73l6fa3bvyfakm2sbp9qi7bd8aw468kr8d51zsl8r0b6nil"))))
    (properties `((upstream-name . "mono-traversable-keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-keys)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/recursion-ninja/mono-traversable-keys#readme")
    (synopsis
     "Type-classes for interacting with monomorphic containers with a key")
    (description
     "This is the extension of two other popular packages,
<http://hackage.haskell.org/package/mono-traversable mono-traversable> and
<http://hackage.haskell.org/package/keys keys>,
designed to provided the functionality of the @@keys@@ package to the monomorphic
containers enhanced by the @@mono-traversable@@ package.")
    (license license:bsd-3)))

haskell-9.0-mono-traversable-keys

(define-public haskell-9.0-network-wait
  (package
    (name "haskell-9.0-network-wait")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-wait/network-wait-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fgcp2didz7zp4jpkc9zap94sbd6ny8nyrx6nwnfai2ssw5rxpfq"))))
    (properties `((upstream-name . "network-wait") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-postgres")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-simple)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-retry)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/mbg/network-wait#readme")
    (synopsis
     "Lightweight library for waiting on networked services to become available.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/network-wait#readme>")
    (license license:expat)))

haskell-9.0-network-wait

(define-public haskell-9.0-nqe
  (package
    (name "haskell-9.0-nqe")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nqe/nqe-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "17ymmb0sy95yf5abdgq60j9bi9pdr746ap7x0byakd3gi7kciijg"))))
    (properties `((upstream-name . "nqe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-stm-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-unique)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/nqe#readme>")
    (license license:expat)))

haskell-9.0-nqe

(define-public haskell-9.0-one-liner
  (package
    (name "haskell-9.0-one-liner")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner/one-liner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0al9wavxx23xbalqw0cdlhq01kx8kyhg33fipwmn5617z3ddir6v"))))
    (properties `((upstream-name . "one-liner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "19iwyb3jx7bwybmmmamyzf4lxiwik7wdl8k1crikzmxn016pnybz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear-base)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/sjoerdvisscher/one-liner")
    (synopsis "Constraint-based generics")
    (description "Write short and concise generic instances of type classes.
one-liner is particularly useful for writing default
implementations of type class methods.")
    (license license:bsd-3)))

haskell-9.0-one-liner

(define-public haskell-9.0-openapi3
  (package
    (name "haskell-9.0-openapi3")
    (version "3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openapi3/openapi3-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d31ilv2ivwswzbpfibqwnld8697vk63wyr6yl80brjx60g4jp9j"))))
    (properties `((upstream-name . "openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yc3wlc8j84glav3hzx1l4yq33k05bll252a8yl6ld275jjswn8p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-optics-th)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/openapi3")
    (synopsis "OpenAPI 3.0 data model")
    (description
     "This library is intended to be used for decoding and encoding OpenAPI 3.0 API
specifications as well as manipulating them.

The original OpenAPI 3.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.0-openapi3

(define-public haskell-9.0-path-binary-instance
  (package
    (name "haskell-9.0-path-binary-instance")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-binary-instance/path-binary-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19ck3ja66vcgl90wyw6r9d2h50kdv9gjs7sxjgciam6v6867vb0y"))))
    (properties `((upstream-name . "path-binary-instance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-binary-instance")
    (synopsis "Binary instance for Path.")
    (description "Binary instance for Path.")
    (license license:expat)))

haskell-9.0-path-binary-instance

(define-public haskell-9.0-path-extensions
  (package
    (name "haskell-9.0-path-extensions")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extensions/path-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pvjb26arsj892addi9x26v8naislh87x6av70k8fjnsish3pnj5"))))
    (properties `((upstream-name . "path-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-extensions")
    (synopsis
     "Enumeration of common filetype extensions for use with the path library.")
    (description
     "Enumeration of common filetype extensions for use with the path library, add variants for adding an extension to a path and with variants for replacing an existing extension.")
    (license license:expat)))

haskell-9.0-path-extensions

(define-public haskell-9.0-path-extra
  (package
    (name "haskell-9.0-path-extra")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extra/path-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fh4m3vidf75j43rk1n46y3bsn0j4247bz71s35651vi9s8vw27b"))))
    (properties `((upstream-name . "path-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-9.0-path-extra

(define-public haskell-9.0-path-formatting
  (package
    (name "haskell-9.0-path-formatting")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-formatting/path-formatting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfl2ggvghnkwhp8p8r1dswjb5dpng8hifzhjh2a982bmlsln9c6"))))
    (properties `((upstream-name . "path-formatting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-formatting")
    (synopsis "Formatting for path")
    (description "Formatting for the path library.")
    (license license:expat)))

haskell-9.0-path-formatting

(define-public haskell-9.0-path-io
  (package
    (name "haskell-9.0-path-io")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jr1inh3x0a42rdh4q0jipbw8jsprdza1j5xkzd7nxcq0a143g9l"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-9.0-path-io

(define-public haskell-9.0-path-like
  (package
    (name "haskell-9.0-path-like")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-like/path-like-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hr58zcgcybd34zzas5kf0jgcm5z2wdlbhskwj9233503nnlwkq9"))))
    (properties `((upstream-name . "path-like") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-like")
    (synopsis
     "PathLike, FileLike and DirLike type classes for the Path library.")
    (description
     "Type classes for the Path library. Exports PathLike, FileLike and DirLike classes so that stricter types may be used as Paths.")
    (license license:expat)))

haskell-9.0-path-like

(define-public haskell-9.0-path-utils
  (package
    (name "haskell-9.0-path-utils")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-utils/path-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k6wfy8vzddfhxsd5zlbjd4397syqhdg6i8v49d218m0qqfhzkpj"))))
    (properties `((upstream-name . "path-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-utils")
    (synopsis "Handful of simple utility functions for the path library.")
    (description "Handful of simple utility functiosn for the path library.")
    (license license:expat)))

haskell-9.0-path-utils

(define-public haskell-9.0-polysemy-path
  (package
    (name "haskell-9.0-polysemy-path")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-path/polysemy-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0smaai432vpqci9w7pyg443kcd1rpz7zpwww2wcxbyqszzllbhnr"))))
    (properties `((upstream-name . "polysemy-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x9b1zm804bnmjs0qbrx23s1mzgb6h9dqfchf8i3ri7x1sy24ibh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-polysemy-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-path")
    (synopsis "Polysemy versions of Path functions.")
    (description "")
    (license license:expat)))

haskell-9.0-polysemy-path

(define-public haskell-9.0-postgres-options
  (package
    (name "haskell-9.0-postgres-options")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgres-options/postgres-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfr15bg77117y27rr1kvbxcsyh36ha30c8rgiqd15y7pjd4apy4"))))
    (properties `((upstream-name . "postgres-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-generic-monoid)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)))
    (home-page "https://github.com/jfischoff/postgres-options#readme")
    (synopsis "An Options type representing options for postgres connections")
    (description
     "This package exports an Options type representing options for postgres connections")
    (license license:bsd-3)))

haskell-9.0-postgres-options

(define-public haskell-9.0-pretty-relative-time
  (package
    (name "haskell-9.0-pretty-relative-time")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-relative-time/pretty-relative-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sqdz7bh99ya0d8wb721bbs25cqjfhg81q8xxvrmlamrrgc1z7bh"))))
    (properties `((upstream-name . "pretty-relative-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-time)))
    (home-page "https://github.com/NorfairKing/pretty-relative-time#readme")
    (synopsis "Pretty relative time")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>")
    (license license:expat)))

haskell-9.0-pretty-relative-time

(define-public haskell-9.0-prometheus-metrics-ghc
  (package
    (name "haskell-9.0-prometheus-metrics-ghc")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-metrics-ghc/prometheus-metrics-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06pah4wn9yj65shpgg6lb5pwfmx46gk2nbrs1d6bqiqni05s9pzk"))))
    (properties `((upstream-name . "prometheus-metrics-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-prometheus-client)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (description
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-prometheus-metrics-ghc

(define-public haskell-9.0-qchas
  (package
    (name "haskell-9.0-qchas")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/qchas/qchas-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g966915j17ijpyz7klxc0j0rflbxkj0a49vf57z5xfllv8l1wx9"))))
    (properties `((upstream-name . "qchas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-9.0-qchas

(define-public haskell-9.0-quadratic-irrational
  (package
    (name "haskell-9.0-quadratic-irrational")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quadratic-irrational/quadratic-irrational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nksvr6wnbrphq3ymg93w2xpqw6in3j1qpgbl2f3x9bgiss2l7s"))))
    (properties `((upstream-name . "quadratic-irrational") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-arithmoi)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-integer-roots)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-numbers)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ion1/quadratic-irrational")
    (synopsis "An implementation of quadratic irrationals")
    (description
     "A library for exact computation with
<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>
with support for exact conversion from and to
<http://en.wikipedia.org/wiki/Periodic_continued_fraction (potentially periodic) simple continued fractions>.

A quadratic irrational is a number that can be expressed in the form

> (a + b √c) / d

where @@a@@, @@b@@ and @@d@@ are integers and @@c@@ is a square-free natural number.

Some examples of such numbers are

* @@7/2@@,

* @@√2@@,

* @@(1 + √5)\\/2@@
(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),

* solutions to quadratic equations with rational constants – the
<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a
familiar shape.

A simple continued fraction is a number expressed in the form

> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))

or alternatively written as

> [a; b, c, d, e, …]

where @@a@@ is an integer and @@b@@, @@c@@, @@d@@, @@e@@, … are positive integers.

Every finite SCF represents a rational number and every infinite, periodic
SCF represents a quadratic irrational.

> 3.5      = [3; 2]
> (1+√5)/2 = [1; 1, 1, 1, …]
> √2       = [1; 2, 2, 2, …]")
    (license license:expat)))

haskell-9.0-quadratic-irrational

(define-public haskell-9.0-rainbox
  (package
    (name "haskell-9.0-rainbox")
    (version "0.26.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbox/rainbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07hh904p0mlc3iww184849yps80kwrhdna9nr840m2qyd81m37d1"))))
    (properties `((upstream-name . "rainbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-rainbow)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-rainbox

(define-public haskell-9.0-reanimate-svg
  (package
    (name "haskell-9.0-reanimate-svg")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate-svg/reanimate-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h31r0lrslxqfayh06955p1kv35g42g3drmqp4miydk6zibyn091"))))
    (properties `((upstream-name . "reanimate-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g8cqw8a4vy7pp9ic02d49564vd61px2kld1pin0la9f3vk5f296")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/reanimate/reanimate-svg#readme")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-9.0-reanimate-svg

(define-public haskell-9.0-rebase
  (package
    (name "haskell-9.0-rebase")
    (version "1.15.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rebase/rebase-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dck3800mz307jriz6mcv2dn2lwglgvlpiiy759xn56774h503zj"))))
    (properties `((upstream-name . "rebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-groups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-invariant)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-selective)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-vector-instances)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/rebase")
    (synopsis "A more progressive alternative to the \"base\" package")
    (description
     "This package is intended for those who are tired of keeping
long lists of dependencies to the same essential libraries in each package
as well as the endless imports of the same APIs all over again.
It also supports the modern tendencies in the language.

To solve those problems this package does the following:

* Reexport the original APIs under the \\\"Rebase\\\" namespace.

* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.

* Give priority to the modern practices in the conflicting cases.

The policy behind the package is only to reexport the non-ambiguous
and non-controversial APIs, which the community has obviously settled on.
The package is intended to rapidly evolve with the contribution from the community,
with the missing features being added with pull-requests.

If you don\\'t need the \\\"Rebase\\\" namespace and want to import modules
from the reexported packages as they are check out
the \\\"<https://hackage.haskell.org/package/rerebase rerebase>\\\" package
which simply reexports the original symbols in the original namespace.
Thus it simply lets you depend on all the de-facto default packages,
by yourself having to maintain only the dependency on \\\"rerebase\\\".
Also it comes packed with a prelude as rich as here.")
    (license license:expat)))

haskell-9.0-rebase

(define-public haskell-9.0-rio-prettyprint
  (package
    (name "haskell-9.0-rio-prettyprint")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-prettyprint/rio-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xql9rjd0b8vyfllb9h8j7nxbrnrvz9kkclzlb3wln10l9pi5v03"))))
    (properties `((upstream-name . "rio-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/rio-prettyprint#readme")
    (synopsis "Pretty-printing for RIO")
    (description "Combine RIO's log capabilities with pretty printing")
    (license license:bsd-3)))

haskell-9.0-rio-prettyprint

(define-public haskell-9.0-sbp
  (package
    (name "haskell-9.0-sbp")
    (version "4.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbp/sbp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0ph1bn95bxpmfs2xvbgj7kpz3ji6jf65ykah5srmhqgbw21d1wl7"))))
    (properties `((upstream-name . "sbp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-basic-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-binary-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-lens-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/swift-nav/libsbp")
    (synopsis "SwiftNav's SBP Library")
    (description
     "Haskell bindings for Swift Navigation Binary Protocol (SBP), a fast,
simple, and minimal binary protocol for communicating with Swift
devices. It is the native binary protocol used by the Piksi GPS
receiver to transmit solutions, observations, status and debugging
messages, as well as receive messages from the host operating
system, such as differential corrections and the almanac.")
    (license license:expat)))

haskell-9.0-sbp

(define-public haskell-9.0-sdl2
  (package
    (name "haskell-9.0-sdl2")
    (version "2.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sdl2/sdl2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08l24cb92spnx3bn26bj0z2cszpsawhaa9vvhblvsr3d6z76065q"))))
    (properties `((upstream-name . "sdl2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-opengl-example" "-f-no-linear")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2")
    (synopsis
     "Both high- and low-level bindings to the SDL library (version 2.0.6+).")
    (description
     "This package contains bindings to the SDL 2 library, in both high- and
low-level forms:

The 'SDL' namespace contains high-level bindings, where enumerations are split
into sum types, and we perform automatic error-checking.

The 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into
Haskell FFI calls. As such, this does not contain sum types nor error
checking. Thus this namespace is suitable for building your own abstraction
over SDL, but is not recommended for day-to-day programming.

Read \"SDL\" for a getting started guide.")
    (license license:bsd-3)))

haskell-9.0-sdl2

(define-public haskell-9.0-servant-checked-exceptions-core
  (package
    (name "haskell-9.0-servant-checked-exceptions-core")
    (version "2.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions-core/servant-checked-exceptions-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "023fb1a15wjx6bwfix072sprckzkn2kzdkwbh6dr2yh4rg5snvrn"))))
    (properties `((upstream-name . "servant-checked-exceptions-core")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-docs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-world-peace)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-servant-checked-exceptions-core

(define-public haskell-9.0-servant-elm
  (package
    (name "haskell-9.0-servant-elm")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-elm/servant-elm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hn7qkz4aw5snc4lbprbshzr3dagfry1bms0fx9bfif61312swqy"))))
    (properties `((upstream-name . "servant-elm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-integration")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elm-bridge)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-foreign)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mattjbray/servant-elm#readme")
    (synopsis
     "Automatically derive Elm functions to query servant webservices.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-servant-elm

(define-public haskell-9.0-servant-ruby
  (package
    (name "haskell-9.0-servant-ruby")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-ruby/servant-ruby-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x1746k97i3y836mr5h29l70ldzrg8akhfmg2qicwbwz6qs7hy33"))))
    (properties `((upstream-name . "servant-ruby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-casing)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-servant-foreign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/joneshf/servant-ruby#readme")
    (synopsis "Generate a Ruby client from a Servant API with Net::HTTP.")
    (description "Generate a Ruby client from a Servant API with Net::HTTP.")
    (license license:bsd-3)))

haskell-9.0-servant-ruby

(define-public haskell-9.0-servant-xml
  (package
    (name "haskell-9.0-servant-xml")
    (version "1.0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-xml/servant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jzzw4bwjcnax53xx8yjfldd21zgbvynpagf1ikxpzq3sgqhdl2x"))))
    (properties `((upstream-name . "servant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-xmlbf)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xmlbf-xeno)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/servant-xml")
    (synopsis "Servant support for the XML Content-Type")
    (description
     "Servant support for the Content-Type of /application\\/xml/. Anything with 'ToXml' and 'FromXml' instances can be automatically marshalled.")
    (license license:bsd-3)))

haskell-9.0-servant-xml

(define-public haskell-9.0-shake-plus
  (package
    (name "haskell-9.0-shake-plus")
    (version "0.3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-plus/shake-plus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0022npwhvzlpz6d6xl75kx0f7ydr8fqqcy04zkv70gwsv0gp5zbm"))))
    (properties `((upstream-name . "shake-plus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1az2234agrza3qhsd400bw94qj3dcxjh3fi0aq24ihbm8yx1a21s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shake)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/shake-plus")
    (synopsis "Re-export of Shake using well-typed paths and ReaderT.")
    (description
     "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions.")
    (license license:expat)))

haskell-9.0-shake-plus

(define-public haskell-9.0-singleton-nats
  (package
    (name "haskell-9.0-singleton-nats")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1drjwwkpszgifhnd7p4qqz92z85nh7w81w1hpdqv9a6vc5hfbv7r"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsingletons-3-0")
       #:cabal-revision
       ("1" "0xgm43p5l9m80anc8qfxr9vdni3iphnkn8d3x3q6nqz7gjq5hypj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-singletons)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-singletons-base)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-9.0-singleton-nats

(define-public haskell-9.0-singletons-presburger
  (package
    (name "haskell-9.0-singletons-presburger")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-presburger/singletons-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s12g1qcdz035y2lzjivw2m2jm9hqvbwvgmxvahn4a2j89f4zgky"))))
    (properties `((upstream-name . "singletons-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-singletons)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-singletons-base)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-singletons-th)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers with Singletons package.")
    (description
     "The @@singletons-presburger@@ plugin augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers, with integration with <https://hackage.haskell.org/package/singletons singletons> package.

You can use by adding this package to @@dependencies@@ and add the following pragma
to the head of .hs files:

> OPTIONS_GHC -fplugin Data.Singletons.TypeNats.Presburger")
    (license license:bsd-3)))

haskell-9.0-singletons-presburger

(define-public haskell-9.0-skylighting-core
  (package
    (name "haskell-9.0-skylighting-core")
    (version "0.12.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08svbbfw27zhlblglagxqvsppkdfibqjnx331jdbfrlj0a9pi5h8"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library.
It derives its tokenizers from XML syntax
definitions used by KDE's KSyntaxHighlighting
framework, so any syntax supported by that
framework can be added. An optional command-line
program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides the core highlighting
functionality under a permissive license. It also
bundles XML parser definitions licensed under the
GPL.")
    (license license:bsd-3)))

haskell-9.0-skylighting-core

(define-public haskell-9.0-slynx
  (package
    (name "haskell-9.0-slynx")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slynx/slynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14yn94hl6nlbwa1hk1mgkgckcmb6bvfk2pa3847h98g19bz7qfw4"))))
    (properties `((upstream-name . "slynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-elynx-markov)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-elynx-seq)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-elynx-tree)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-slynx

(define-public haskell-9.0-spatial-math
  (package
    (name "haskell-9.0-spatial-math")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spatial-math/spatial-math-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0454q9laaasdqrd74cjcxfcl5z7jcfvnzpdg81gl58y2ay8z4769"))))
    (properties `((upstream-name . "spatial-math") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-TypeCompose)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/spatial-math")
    (synopsis
     "3d math including quaternions/euler angles/dcms and utility functions")
    (description
     "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`")
    (license license:bsd-3)))

haskell-9.0-spatial-math

(define-public haskell-9.0-stache
  (package
    (name "haskell-9.0-stache")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1naqj54qm59f04x310lvj4fsrp3xar1v643i79gp7h48kyn1c2vy"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0bzamvkkxn2vrag7rb72n3i7sqvjr3rpyp172krp4ak1ydqlsyi7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-gitrev)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:expat)))

haskell-9.0-stache

(define-public haskell-9.0-strong-path
  (package
    (name "haskell-9.0-strong-path")
    (version "1.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strong-path/strong-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gd24hfz01k78k67d28v9ypvrnbh5a41rk6dk26rmc5h5sxnrgf8"))))
    (properties `((upstream-name . "strong-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wasp-lang/strong-path#readme")
    (synopsis "Strongly typed paths in Haskell.")
    (description
     "Replacement for a FilePath that enables you to handle filepaths in your code in a type-safe manner. You can specify at type level if they are relative, absolute, file, directory, posix, windows, and even to which file or directory they point to or are relative to.")
    (license license:expat)))

haskell-9.0-strong-path

(define-public haskell-9.0-svg-tree
  (package
    (name "haskell-9.0-svg-tree")
    (version "0.6.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-tree/svg-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hhs2w6fmd1m6768p1bfhj6vi4br4ray0g9f1hv8g19pqgip3r2c"))))
    (properties `((upstream-name . "svg-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12askkxmrzjkssnfa8m6xmdwdxk6v3z26jc63jcgb3q8snxb0hg1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-linear)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/svg-tree")
    (synopsis "SVG file loader and serializer")
    (description
     "svg-tree provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.

To render an svg document you can use the `rasterific-svg` package")
    (license license:bsd-3)))

haskell-9.0-svg-tree

(define-public haskell-9.0-swagger2
  (package
    (name "haskell-9.0-swagger2")
    (version "2.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/swagger2/swagger2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cvz98cn4xzr7fx8q7rwr22l7l95z1cvq7qpm1shwca5j4gq5084"))))
    (properties `((upstream-name . "swagger2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-cookie)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-optics-th)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.0-swagger2

(define-public haskell-9.0-tagstream-conduit
  (package
    (name "haskell-9.0-tagstream-conduit")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagstream-conduit/tagstream-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d0yfq5fixggppdf05s0sw46lmfvb7q17005x720ah66zkcl05nc"))))
    (properties `((upstream-name . "tagstream-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yihuang/tagstream-conduit")
    (synopsis "streamlined html tag parser")
    (description
     "Tag-stream is a library for parsing HTML//XML to a token stream.
It can parse unstructured and malformed HTML from the web.
It also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.
You can start from the `tests/Tests.hs` module to see what it can do.")
    (license license:bsd-3)))

haskell-9.0-tagstream-conduit

(define-public haskell-9.0-tcp-streams
  (package
    (name "haskell-9.0-tcp-streams")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tcp-streams/tcp-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dz21ycm06d9mwc6dbjr8ansl212ril3i5jl73yzkdi9ngj16qqa"))))
    (properties `((upstream-name . "tcp-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-tls)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-system)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "One stop solution for tcp client and server with tls support.")
    (description
     "One stop solution for tcp client and server with tls support.")
    (license license:bsd-3)))

haskell-9.0-tcp-streams

(define-public haskell-9.0-tree-diff
  (package
    (name "haskell-9.0-tree-diff")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-diff/tree-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g3lsp067dq1ydvj2im4nlfxa65g9zjmjjkv91dhjhnrklir10q0"))))
    (properties `((upstream-name . "tree-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-trifecta)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/tree-diff")
    (synopsis "Diffing of (expression) trees.")
    (description
     "Common diff algorithm works on list structures:

@@
diff :: Eq a => [a] -> [a] -> [Edit a]
@@

This package works on trees.

@@
treeDiff :: Eq a => Tree a -> Tree a -> Edit (EditTree a)
@@

This package also provides a way to diff arbitrary ADTs,
using @@Generics@@-derivable helpers.

This package differs from <http://hackage.haskell.org/package/gdiff gdiff>,
in a two ways: @@tree-diff@@ doesn't have patch function,
and the \"edit-script\" is a tree itself, which is useful for pretty-printing.

@@
>>> prettyEditExpr $ ediff (Foo 42 [True, False] \"old\") (Foo 42 [False, False, True] \"new\")
Foo
\\  @{fooBool = [-True, +False, False, +True],
\\   fooInt = 42,
\\   fooString = -\"old\" +\"new\"@}
@@")
    (license license:gpl2+)))

haskell-9.0-tree-diff

(define-public haskell-9.0-type-natural
  (package
    (name "haskell-9.0-type-natural")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-natural/type-natural-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dzmaia5w59cmq6aivsamklq6ydd72l9y44az1plycmscm0kchiz"))))
    (properties `((upstream-name . "type-natural") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/type-natural")
    (synopsis "Type-level natural and proofs of their properties.")
    (description "Type-level natural numbers and proofs of their properties.

Version 0.6+ supports __GHC 8+ only__.

__Use 0.5.* with ~ GHC 7.10.3__.")
    (license license:bsd-3)))

haskell-9.0-type-natural

(define-public haskell-9.0-ua-parser
  (package
    (name "haskell-9.0-ua-parser")
    (version "0.7.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ua-parser/ua-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dkwhd2rl4fsjsvx68wclq4ipzxaxxlw1jailb379q0d77j8934s"))))
    (properties `((upstream-name . "ua-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cereal-text)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-pcre-light)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-9.0-ua-parser

(define-public haskell-9.0-unliftio-path
  (package
    (name "haskell-9.0-unliftio-path")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-path/unliftio-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ila58yyk2vfshaz6d5kp4vdcgjrlnwnqnrjm949qlcv36srvzg9"))))
    (properties `((upstream-name . "unliftio-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/unliftio-path")
    (synopsis "UnliftIO using well-typed Paths.")
    (description "UnliftIO using well-typed Paths.")
    (license license:expat)))

haskell-9.0-unliftio-path

(define-public haskell-9.0-uri-bytestring-aeson
  (package
    (name "haskell-9.0-uri-bytestring-aeson")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring-aeson/uri-bytestring-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02bm5r0i1anwy3wv2xdfhnsmmgllv5vs7npy01fpmp91x7dcqak1"))))
    (properties `((upstream-name . "uri-bytestring-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-uri-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/reactormonk/uri-bytestring-aeson")
    (synopsis "Aeson instances for URI Bytestring")
    (description "")
    (license license:bsd-3)))

haskell-9.0-uri-bytestring-aeson

(define-public haskell-9.0-validity-path
  (package
    (name "haskell-9.0-validity-path")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00p02jgqp5x34yjshylbalsbi44ksdywwjf5c8fwbqjkykwx98px"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage019) haskell-9.0-path)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "")
    (license license:expat)))

haskell-9.0-validity-path

(define-public haskell-9.0-wai-middleware-prometheus
  (package
    (name "haskell-9.0-wai-middleware-prometheus")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-prometheus/wai-middleware-prometheus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1657zar254550skn3hx7y1g06aww2pjls5i4frw6ci4sxy3nynxp"))))
    (properties `((upstream-name . "wai-middleware-prometheus")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-prometheus-client)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "WAI middlware for exposing http://prometheus.io metrics.")
    (description "WAI middlware for exposing http://prometheus.io metrics.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-wai-middleware-prometheus

(define-public haskell-9.0-xlsx
  (package
    (name "haskell-9.0-xlsx")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xlsx/xlsx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xmz9qpqyz2gwlrjsy2m79s4xswb6lz7fbvybd4awg5vy0y6pl41"))))
    (properties `((upstream-name . "xlsx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-microlens")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-binary-search)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-groom)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-xeno)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-zip-archive)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/qrilka/xlsx")
    (synopsis "Simple and incomplete Excel file parser/writer")
    (description
     "This library can help you to get some data read and written in Office
Open XML xlsx format. Small subset of xlsx format is supported.

For examples look into \"Codec.Xlsx\".

Format is covered by ECMA-376 standard:
<http://www.ecma-international.org/publications/standards/Ecma-376.htm>

4th edition of the standard with the transitional schema is used for this library.")
    (license license:expat)))

haskell-9.0-xlsx

(define-public haskell-9.0-xml-conduit-writer
  (package
    (name "haskell-9.0-xml-conduit-writer")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit-writer/xml-conduit-writer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n5fk6sj5grcfz51psbf8h4z40hd4dk8zpk870c6ipm2s9dc1488"))))
    (properties `((upstream-name . "xml-conduit-writer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://bitbucket.org/dpwiz/xml-conduit-writer")
    (synopsis "Warm and fuzzy creation of XML documents.")
    (description "“It can scarcely be denied that the supreme goal of
all theory is to make the irreducible basic elements
as simple and as few as possible without having to
surrender the adequate representation of a single
datum of experience.” ­— Albert Einstein

Check out more examples in test/Main.hs and
look at the results with --enable-tests.")
    (license license:expat)))

haskell-9.0-xml-conduit-writer

(define-public haskell-9.0-xml-hamlet
  (package
    (name "haskell-9.0-xml-hamlet")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-hamlet/xml-hamlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "109fck1626d74s00ssjffg837584wf7dxpswkil37wqqfy94mw2z"))))
    (properties `((upstream-name . "xml-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-9.0-xml-hamlet

(define-public haskell-9.0-xml-indexed-cursor
  (package
    (name "haskell-9.0-xml-indexed-cursor")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-indexed-cursor/xml-indexed-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x6slq1av9id5ph7ysg0g467knkcbvp0g0jr7x8w334ffgy25mj6"))))
    (properties `((upstream-name . "xml-indexed-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-xml-indexed-cursor

(define-public haskell-9.0-xmonad-extras
  (package
    (name "haskell-9.0-xmonad-extras")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-extras/xmonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kkwng84hp19vc9nw97y77n3hsg9scn0c9fa1ivf4r9s5x3p6flx"))))
    (properties `((upstream-name . "xmonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith_sound" "-fwith_hint" "-fwith_mpd" "-f-with_hlist" "-fwith_regex_posix" "-fwith_template_haskell" "-fwith_brightness" "-f-testing")
       #:cabal-revision
       ("1" "1ivm1nncg8qa5ww1kgk1d8zdawniz83ab5s2dj0hbcxffymgxp0k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-alsa-mixer)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-hint)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-libmpd)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-xmonad)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-xmonad-contrib)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/xmonad/xmonad-extras")
    (synopsis "Third party extensions for xmonad with wacky dependencies")
    (description
     "Various modules for xmonad that cannot be added to xmonad-contrib
because of additional dependencies.")
    (license license:bsd-3)))

haskell-9.0-xmonad-extras

(define-public haskell-9.0-zip
  (package
    (name "haskell-9.0-zip")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1c5pr3hv11dpn4ybd4742qkpqmvb9l3l7xmzlsf65wm2p8071dvj"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-disable-bzip2" "-f-disable-zstd")
       #:cabal-revision
       ("2" "0gacj2fp0yg45l5vxby0n03lza91zfykk74p6a2r3abrfmvw7kq8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-bzlib-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage019)
                     haskell-9.0-conduit-zstd)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-digest)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-9.0-zip

