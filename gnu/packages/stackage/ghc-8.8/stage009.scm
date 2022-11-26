;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage009)
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
(define-public haskell-8.8-GLURaw
  (package
    (name "haskell-8.8-GLURaw")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLURaw/GLURaw-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i2xi35n5z0d372px9mh6cyhgg1m0cfaiy3fnspkf6kbn9fgsqxq"))))
    (properties `((upstream-name . "GLURaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-OpenGLRaw)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A raw binding for the OpenGL graphics system")
    (description
     "GLURaw is a raw Haskell binding for the GLU 1.3 OpenGL utility library. It is
basically a 1:1 mapping of GLU's C API, intended as a basis for a nicer
interface.

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.8-GLURaw

(define-public haskell-8.8-HTF
  (package
    (name "haskell-8.8-HTF")
    (version "0.14.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTF/HTF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "138gh5a2nx25czhp9qpaav2lq7ff142q4n6sbkrglfsyn48rifqp"))))
    (properties `((upstream-name . "HTF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06rdicg3rwlli11680gjsyjgs154alw1kx7asrr5vfpbgbrp89sv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-cpphs)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-haskell-src)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-xmlgen)))
    (home-page "https://github.com/skogsbaer/HTF/")
    (synopsis "The Haskell Test Framework")
    (description
     "The Haskell Test Framework (/HTF/ for short) lets you define unit
tests (<http://hunit.sourceforge.net>), QuickCheck properties
(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box
tests in an easy and convenient way. HTF uses a custom
preprocessor that collects test definitions automatically.
Furthermore, the preprocessor allows HTF to report failing
test cases with exact file name and line number information.
Additionally, HTF tries to produce highly readable output
for failing tests: for example, it colors and pretty prints expected and
actual results and provides a diff between the two values.

The documentation of the \"Test.Framework.Tutorial\" module
provides a tutorial for HTF. There is also a slightly out-dated
blog article (<http://factisresearch.blogspot.de/2011/10/new-version-of-htf-with-diffs-colors.html>)
demonstrating HTF's coloring, pretty-printing and diff functionality.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-HTF

(define-public haskell-8.8-HaTeX
  (package
    (name "haskell-8.8-HaTeX")
    (version "3.22.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaTeX/HaTeX-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v9vgql7a9rpkwlrgw8nsy9m2rv3l2gczngc7a1xkndxi214m4kl"))))
    (properties `((upstream-name . "HaTeX") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-bibtex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md")
    (synopsis "The Haskell LaTeX library.")
    (description
     "This library implements the LaTeX syntax and provides some useful abstractions.

Some of the things you can do with HaTeX are:

* Write LaTeX documents with all the advantages you already have in Haskell: recursion,
type system, high order functions, ...

* Create a LaTeX backend for your own program.

* Parse a LaTeX file and obtain its Abstract Syntax Tree (AST).

* Pretty-print Haskell values in LaTeX.

* Generate TikZ scripts (images!) easily.

Browse the @@examples@@ directory in the source distribution to see some simple examples.
It might help you to get started. The HaTeX User's Guide is available at
<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.

If you prefer to write in LaTeX and all you want is to /program/ some parts of the document,
or if you already have the LaTeX document written and you just want to add some automatically
generated LaTeX code somewhere, check haskintex: <http://daniel-diaz.github.io/projects/haskintex>.
It allows you to embed Haskell in LaTeX. It also makes you easy to use HaTeX within a LaTeX document.")
    (license license:bsd-3)))

haskell-8.8-HaTeX

(define-public haskell-8.8-HsYAML-aeson
  (package
    (name "haskell-8.8-HsYAML-aeson")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsYAML-aeson/HsYAML-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12sxww260pc0bbpiyirm7911haxhljdi2f08a9ddpbgw8d5n7ffg"))))
    (properties `((upstream-name . "HsYAML-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0vhdndyj5f07vvvnssn5ybdja5wmaydq0n2lfpihvdg4dkhczrx2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/HsYAML-aeson")
    (synopsis "JSON to YAML Adapter")
    (description
     "The [YAML 1.2](https://yaml.org/spec/1.2/spec.html) format provides
a much richer data-model and feature-set
than the [JavaScript Object Notation (JSON)](https://tools.ietf.org/html/rfc7159) format.
However, sometimes it's desirable to ignore the extra capabilities
and treat YAML as if it was merely a more convenient markup format
for humans to write JSON data. To this end this module provides a
compatibility layer atop [HsYAML](https://hackage.haskell.org/package/HsYAML)
which allows decoding YAML documents in the more limited JSON data-model while also providing
convenience by reusing [aeson](https://hackage.haskell.org/package/aeson)'s
'FromJSON' instances for decoding the YAML data into native Haskell data types.")
    (license license:gpl2+)))

haskell-8.8-HsYAML-aeson

(define-public haskell-8.8-IPv6Addr
  (package
    (name "haskell-8.8-IPv6Addr")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IPv6Addr/IPv6Addr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fnh77znfkp0d2i6vdvrsnxcdprqjz43in5k36b3yrrzffdrfka7"))))
    (properties `((upstream-name . "IPv6Addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-iproute)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-info)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (home-page "https://github.com/MichelBoucey/IPv6Addr")
    (synopsis "Library to deal with IPv6 address text representations.")
    (description
     "Library to deal with IPv6 address text representations, canonization and manipulations.")
    (license license:bsd-3)))

haskell-8.8-IPv6Addr

(define-public haskell-8.8-PyF
  (package
    (name "haskell-8.8-PyF")
    (version "0.9.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/PyF/PyF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "186kxid40nsxhc4yas6a1jk6ndsycsfrc5k9pfvyhgw720rx2p2c"))))
    (properties `((upstream-name . "PyF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g7mcxmbc28wjr04lb8fv0zjknw0qgyigbqrn0a91356mmbrc80y")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (home-page "https://hackage.haskell.org/package/PyF")
    (synopsis "Quasiquotations for a python like interpolated string formater")
    (description
     "Quasiquotations for a python like interpolated string formater.")
    (license license:bsd-3)))

haskell-8.8-PyF

(define-public haskell-8.8-QuasiText
  (package
    (name "haskell-8.8-QuasiText")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuasiText/QuasiText-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06giw0q5lynx05c4h45zwnlcifg91w291h3gwrg68qsjw9lx40g8"))))
    (properties `((upstream-name . "QuasiText") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-8.8-QuasiText

(define-public haskell-8.8-ShellCheck
  (package
    (name "haskell-8.8-ShellCheck")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ShellCheck/ShellCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06m4wh891nah3y0br4wh3adpsb16zawkb2ijgf1vcz61fznj6ps1"))))
    (properties `((upstream-name . "ShellCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pr7w68mxj35r1vyfdh50yspvds52chc1vg76lmvsx2xhn253jjq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)))
    (home-page "https://www.shellcheck.net/")
    (synopsis "Shell script analysis tool")
    (description
     "The goals of ShellCheck are:

* To point out and clarify typical beginner's syntax issues,
that causes a shell to give cryptic error messages.

* To point out and clarify typical intermediate level semantic problems,
that causes a shell to behave strangely and counter-intuitively.

* To point out subtle caveats, corner cases and pitfalls, that may cause an
advanced user's otherwise working script to fail under future circumstances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-ShellCheck

(define-public haskell-8.8-Taxonomy
  (package
    (name "haskell-8.8-Taxonomy")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Taxonomy/Taxonomy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l64ma631q1gh57gwg09mpxz66hkhqbc9f9dn2bhy681p8ia7j50"))))
    (properties `((upstream-name . "Taxonomy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-either-unwrap)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fgl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/Taxonomy")
    (synopsis
     "Libary for parsing, processing and vizualization of taxonomy data")
    (description
     "Haskell cabal Taxonomy libary contains tools, parsers, datastructures and visualisation
for the NCBI (National Center for Biotechnology Information) Taxonomy datasources.

It can utilize information from the <http://www.ncbi.nlm.nih.gov/taxonomy Entrez> REST interface via <https://github.com/eggzilla/EntrezHTTP EntrezHTTP>,
as well as from the files of the Taxonomy database <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ dump>.

Input data is parsed into a FGL based datastructure, which enables a wealth of processing
steps like node distances, retrieval of parent nodes or extraction of
subtrees.

Trees can be visualised via dot-format (<http://graphviz.org/ graphviz>)

<<http://www.tbi.univie.ac.at/~egg/taxonomy.svg dot>>

or via json-format (<http://d3js.org/d3js>).

The <https://hackage.haskell.org/package/TaxonomyTools TaxonomyTools> package contains tools based on this package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-Taxonomy

(define-public haskell-8.8-aeson-attoparsec
  (package
    (name "haskell-8.8-aeson-attoparsec")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-attoparsec/aeson-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0111qzp381jjhv1iymjg8mr3jslx5x1ll3w2dq4b6f3r8y8871m5"))))
    (properties `((upstream-name . "aeson-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://github.com/athanclark/aeson-attoparsec#readme")
    (synopsis "Embed an Attoparsec text parser into an Aeson parser")
    (description "")
    (license license:bsd-3)))

haskell-8.8-aeson-attoparsec

(define-public haskell-8.8-aeson-better-errors
  (package
    (name "haskell-8.8-aeson-better-errors")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-better-errors/aeson-better-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09vkyrhwak3bmpfsqcd2az8hfqqkxyhg468hv5avgisy0nzh3w38"))))
    (properties `((upstream-name . "aeson-better-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0nsl5y9lcq4lkbk1a9chgbj7axxyjxr27vzwshsx66f0d9m1sa8b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/hdgarrood/aeson-better-errors")
    (synopsis "Better error messages when decoding JSON values.")
    (description
     "A small package which gives you the tools to build parsers to decode JSON
values, and gives good error messages when parsing fails.
See also <http://harry.garrood.me/blog/aeson-better-errors/>.")
    (license license:expat)))

haskell-8.8-aeson-better-errors

(define-public haskell-8.8-aeson-casing
  (package
    (name "haskell-8.8-aeson-casing")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-casing/aeson-casing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cwjy46ac7vzdvkw6cm5xcbcljf2a4lcvc2xbsh8iwd3fdb0f8rp"))))
    (properties `((upstream-name . "aeson-casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-tasty-th)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-8.8-aeson-casing

(define-public haskell-8.8-aeson-combinators
  (package
    (name "haskell-8.8-aeson-combinators")
    (version "0.0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-combinators/aeson-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01gsrm6glr2axcls4hxs740z8lxf39cvdhvidf360mnijai4sgl6"))))
    (properties `((upstream-name . "aeson-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdoctest")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-time-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/turboMaCk/aeson-combinators")
    (synopsis "Aeson combinators for dead simple JSON decoding")
    (description "Low overhead value space `Decoder`
on top of Aeson's Parser for combinator style decoding.")
    (license license:bsd-3)))

haskell-8.8-aeson-combinators

(define-public haskell-8.8-aeson-compat
  (package
    (name "haskell-8.8-aeson-compat")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-compat/aeson-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j13gykv4ryvmr14w5blz0nnpdb4p0hpa27wahw3mhb1lwdr8hz0"))))
    (properties `((upstream-name . "aeson-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "15aflmqs5y0yg2p4042yvnhxyp11ndlihs1dxj21bxfdzd1bbkrn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @@aeson@@")
    (license license:bsd-3)))

haskell-8.8-aeson-compat

(define-public haskell-8.8-aeson-default
  (package
    (name "haskell-8.8-aeson-default")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-default/aeson-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fmjxanahqdkrrgy56i2xbm3547c512k4p4if6c6lvrxcfvb8zjy"))))
    (properties `((upstream-name . "aeson-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://github.com/versioncloud/aeson-default#readme")
    (synopsis "Apply default value to FromJSON instacnes' Maybe fields")
    (description "Please see http://hackage.haskell.org/package/aeson-default")
    (license license:bsd-3)))

haskell-8.8-aeson-default

(define-public haskell-8.8-aeson-generic-compat
  (package
    (name "haskell-8.8-aeson-generic-compat")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-generic-compat/aeson-generic-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kr3waa46k3619yvif0zh4lx7s0zhyghlr1c5kkrvg432i8wmdm6"))))
    (properties `((upstream-name . "aeson-generic-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://hackage.haskell.org/package/aeson-generic-compat")
    (synopsis "Compatible generic class names of Aeson")
    (description
     "This package includes compatible generic class names of Aeson package.")
    (license license:bsd-3)))

haskell-8.8-aeson-generic-compat

(define-public haskell-8.8-aeson-optics
  (package
    (name "haskell-8.8-aeson-optics")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-optics/aeson-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pfi84cl7w5bp7dwdhcyi8kchvbfjybqcp0sifqrn70dj2b50mf7"))))
    (properties `((upstream-name . "aeson-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1id12jhwlgx1gckxjzap4rm3n495fm57ja47gas5r8v2j5ky8lic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-optics-extra)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/phadej/aeson-optics")
    (synopsis "Law-abiding optics for aeson")
    (description "Law-abiding optics for aeson.")
    (license license:expat)))

haskell-8.8-aeson-optics

(define-public haskell-8.8-aeson-pretty
  (package
    (name "haskell-8.8-aeson-pretty")
    (version "0.8.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-pretty/aeson-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09n7gs91y1fbw6gjszrd2na3isnvk3y5rsi90lzjrwywnqfadkl1"))))
    (properties `((upstream-name . "aeson-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-only")
       #:cabal-revision
       ("1" "0xr8f76vmcdvlg8wvw0jdrzpzqy73d4rvf633wfwhmslfr7f5jvg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/informatikr/aeson-pretty")
    (synopsis "JSON pretty-printing library and command-line tool.")
    (description
     "A JSON pretty-printing library compatible with aeson as well as
a command-line tool to improve readabilty of streams of JSON data.

The /library/ provides the function \"encodePretty\". It is a drop-in
replacement for aeson's \"encode\" function, producing JSON-ByteStrings for
human readers.

The /command-line tool/ reads JSON from stdin and writes prettified JSON
to stdout. It also offers a complementary \"compact\"-mode, essentially the
opposite of pretty-printing. If you specify @@-flib-only@@ like this

> cabal install -flib-only aeson-pretty

the command-line tool will NOT be installed.")
    (license license:bsd-3)))

haskell-8.8-aeson-pretty

(define-public haskell-8.8-aeson-qq
  (package
    (name "haskell-8.8-aeson-qq")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10plwzz05qc8068av00jak8rcciw99cbxh3lkx522lmzi37jjccg"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/sol/aeson-qq#readme")
    (synopsis "JSON quasiquoter for Haskell")
    (description "@@aeson-qq@@ provides a JSON quasiquoter for Haskell.

This package exposes the function `aesonQQ` that compile-time
converts a string representation of a JSON value into a
`Data.Aeson.Value`.  `aesonQQ` has the signature

>aesonQQ :: QuasiQuoter

Consult the @@README@@ for documentation:
<https://github.com/sol/aeson-qq#readme>")
    (license license:expat)))

haskell-8.8-aeson-qq

(define-public haskell-8.8-aeson-schemas
  (package
    (name "haskell-8.8-aeson-schemas")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-schemas/aeson-schemas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fc8zzpkq6alkbl0v473h8diin8lqpliq6d3bsrh5bfny8yapvpk"))))
    (properties `((upstream-name . "aeson-schemas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kcsnpb4img9a122yz9lf7s0ils7ppbjyknbck2m8ip977kv04dp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-first-class-families)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-test-utils)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/LeapYear/aeson-schemas#readme")
    (synopsis "Easily consume JSON data on-demand with type-safety")
    (description
     "Parse JSON data easily and safely without defining new data types. Useful
for deeply nested JSON data, which is difficult to parse using the default
FromJSON instances.")
    (license license:bsd-3)))

haskell-8.8-aeson-schemas

(define-public haskell-8.8-aeson-utils
  (package
    (name "haskell-8.8-aeson-utils")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-utils/aeson-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07sbvmm158yqmw4hri9l66ag4r6l59x230gbjm9r97w4x0dlp0bi"))))
    (properties `((upstream-name . "aeson-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0lnlmsn5imbapdhbza1175wm04ynn1w75llkhlk1akpanx1dnd15")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://hackage.haskell.org/package/aeson-utils")
    (synopsis "Utilities for working with Aeson.")
    (description "Utilities for working with Aeson.")
    (license license:bsd-3)))

haskell-8.8-aeson-utils

(define-public haskell-8.8-aeson-yak
  (package
    (name "haskell-8.8-aeson-yak")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yak/aeson-yak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x5a5z0bmiljl9rfapyq6srffp6v3g25qvy0x692a5as66y5ahxg"))))
    (properties `((upstream-name . "aeson-yak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://github.com/tejon/aeson-yak")
    (synopsis "Handle JSON that may or may not be a list, or exist")
    (description
     "According to the standard promoted by Schema.org, the same JSON object
field may legally contain an array or a single element, be null, or be
absent entirely. This library provides an intermediary data type and
supporting functions to help aeson parse and output JSON conforming to this
frustrating behavior.")
    (license license:expat)))

haskell-8.8-aeson-yak

(define-public haskell-8.8-arithmoi
  (package
    (name "haskell-8.8-arithmoi")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qrrmwg40bw5j51w658ilm5wg6awfbsylpmzjw0r0rgh6ml8irk9"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-check-bounds")
       #:cabal-revision
       ("1" "0vl9ki92sfsgqmgfg4f69rqqkl0q4a4klffsskhns6bjbcnzdg8z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-exact-pi)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-semirings)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Bodigrim/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-8.8-arithmoi

(define-public haskell-8.8-asn1-parse
  (package
    (name "haskell-8.8-asn1-parse")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17pk8y3nwv9b9i5j15qlmwi7fmq9ab2z4kfpjk2rvcrh9lsf27wg"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-8.8-asn1-parse

(define-public haskell-8.8-astro
  (package
    (name "haskell-8.8-astro")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/astro/astro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0agy9a91n1sy6rgdgwvdz354x452j2lg7nr3by7z9r22rwdxwpfs"))))
    (properties `((upstream-name . "astro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)))
    (home-page "https://github.com/aligusnet/astro")
    (synopsis "Amateur astronomical computations")
    (description
     "Amateur astronomical computations: rise and set times and azimuths,
coordinates, distances, angular sizes and other parameters
of the Sun, the Moon, planets and stars.")
    (license license:bsd-3)))

haskell-8.8-astro

(define-public haskell-8.8-base32string
  (package
    (name "haskell-8.8-base32string")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base32string/base32string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cpa6bvam4zd2l2hb3sdngj0dx482c9rkz4jj87n6pxsmq9id4wy"))))
    (properties `((upstream-name . "base32string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-32 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-32 Text representation.")
    (license license:expat)))

haskell-8.8-base32string

(define-public haskell-8.8-base58string
  (package
    (name "haskell-8.8-base58string")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base58string/base58string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1260x4bkrizvnmylm237gpi92wazh31md9nf982sac3fsxyn0wiv"))))
    (properties `((upstream-name . "base58string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-58 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-58 Text representation.")
    (license license:expat)))

haskell-8.8-base58string

(define-public haskell-8.8-bimaps
  (package
    (name "haskell-8.8-bimaps")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bimaps/bimaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "084mdn650bghq3lxpckiym28jcmzyj1r3hnqjl5ly1r0arjdsx4p"))))
    (properties `((upstream-name . "bimaps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cereal-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-storable-tuple)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-tasty-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-vector-th-unbox)))
    (home-page "https://github.com/choener/bimaps")
    (synopsis "bijections with multiple implementations.")
    (description "Bijections between sets of values.")
    (license license:bsd-3)))

haskell-8.8-bimaps

(define-public haskell-8.8-ca-province-codes
  (package
    (name "haskell-8.8-ca-province-codes")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ca-province-codes/ca-province-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhmmqn83v9bflm4x2nqbxx6pjh393id29syglinaqal4dvl5qq3"))))
    (properties `((upstream-name . "ca-province-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0502zw8bbx6761s8dfnmbnw475y9x2ikk8s281j1fd1db3wdv17l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/prikhi/ca-province-codes#readme")
    (synopsis "ISO 3166-2:CA Province Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Canadian Province and Territory, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-8.8-ca-province-codes

(define-public haskell-8.8-cfenv
  (package
    (name "haskell-8.8-cfenv")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cfenv/cfenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zklgqkm33n8a2pq8h313xij4nvrv0brh7v4q024bglyam1ndscc"))))
    (properties `((upstream-name . "cfenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://github.com/tomphp/haskell-cfenv#readme")
    (synopsis
     "A library getting the environment when running on Cloud Foundry")
    (description
     "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.")
    (license license:bsd-3)))

haskell-8.8-cfenv

(define-public haskell-8.8-cheapskate-highlight
  (package
    (name "haskell-8.8-cheapskate-highlight")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-highlight/cheapskate-highlight-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6k694gmnx7h8ix79z8scsdl65zbilxni1vjr90ka2fdfrazxss"))))
    (properties `((upstream-name . "cheapskate-highlight") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c8kxqdqf0j962xjdrrjfcbjsl0c1kax31rjykymv7w16d6hmlj4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cheapskate)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-highlighting-kate)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-8.8-cheapskate-highlight

(define-public haskell-8.8-chronologique
  (package
    (name "haskell-8.8-chronologique")
    (version "0.3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chronologique/chronologique-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bb75dijnjnhvgik4qf0zqj9q2wfdqyx70gs18cbxkrqg9956fwh"))))
    (properties `((upstream-name . "chronologique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/aesiniath/chronologique/")
    (synopsis "Time to manipulate time")
    (description
     "A simple type useful for representing timestamps as generated by system
events, along with conveniences for converting between time types from common
Haskell time libraries.

Our original use was wanting to conveniently measure things happening on
distributed computer systems. Since machine clock cycles are in units of
nanoseconds, this has the nice property that, assuming the system clock is not
corrupted, two subsequent events from the same source process are likely to
have monotonically increasing timestamps. And even if the system clock has
skew, they're still decently likely to be unique per device. These TimeStamps
thus make good keys when building Maps.

The core type is in \"Chrono.TimeStamp\", see there for full documentation.")
    (license license:expat)))

haskell-8.8-chronologique

(define-public haskell-8.8-chronos
  (package
    (name "haskell-8.8-chronos")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chronos/chronos-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10nxhnj5y984c3mf2wkc2zl6afbph0b0vj7f722g0yp7cq4908yj"))))
    (properties `((upstream-name . "chronos") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0yspjcgnzl8kvfw6lgndkd2m4cp1s5gvga0kfm5fbrf0g8kwhns8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-torsor)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/andrewthad/chronos")
    (synopsis "A performant time library")
    (description
     "Chronos is a performance-oriented time library for Haskell, with a
straightforward API. The main differences between this
and the <http://hackage.haskell.org/package/time time> library
are:
* Chronos uses machine integers where possible. This means
that time-related arithmetic should be faster, with the
drawback that the types are incapable of representing times
that are very far in the future or the past (because Chronos
provides nanosecond, rather than picosecond, resolution).
For most users, this is not a hindrance.
* Chronos provides 'ToJSON'/'FromJSON' instances for serialisation.
* Chronos provides 'Unbox' instances for working with unboxed vectors.
* Chronos provides 'Prim' instances for working with byte arrays/primitive arrays.
* Chronos uses normal non-overloaded haskell functions for
encoding and decoding time. It provides <http://hackage.haskell.org/package/attoparsec attoparsec> parsers for both 'Text' and
'ByteString'. Additionally, Chronos provides functions for
encoding time to 'Text' or 'ByteString'. The http://hackage.haskell.org/package/time time> library accomplishes these with the
<http://hackage.haskell.org/package/time-1.9.3/docs/Data-Time-Format.html Data.Time.Format> module, which uses UNIX-style datetime
format strings. The approach taken by Chronos is faster and
catches more mistakes at compile time, at the cost of being
less expressive.")
    (license license:bsd-3)))

haskell-8.8-chronos

(define-public haskell-8.8-comonad
  (package
    (name "haskell-8.8-comonad")
    (version "5.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/comonad/comonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1blgp2nm9cvnsdi2bmkmly5m0gz91npjvf1i5j4pnx6imhbb1kvp"))))
    (properties `((upstream-name . "comonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-fcontainers" "-fdistributive")
       #:cabal-revision
       ("1" "19744zfb5nd90a3xnhl7fx9aik39nwwx9sf7k9aahrcplwlvbwgx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://github.com/ekmett/comonad/")
    (synopsis "Comonads")
    (description "Comonads.")
    (license license:bsd-3)))

haskell-8.8-comonad

(define-public haskell-8.8-core-data
  (package
    (name "haskell-8.8-core-data")
    (version "0.2.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-data/core-data-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hgvvkk3m3ykdndmf2hbm59v0pim68jwgl2a6n5hw1dv4xwd3fay"))))
    (properties `((upstream-name . "core-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-core-text)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis
     "Convenience wrappers around common data structures and encodings")
    (description
     "Wrappers around common data structures and encodings.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:bsd-3)))

haskell-8.8-core-data

(define-public haskell-8.8-criterion-measurement
  (package
    (name "haskell-8.8-criterion-measurement")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion-measurement/criterion-measurement-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03p71mfnnfjx9dnf0yhrhdcr30zc2nwn5f8lql48cabccpd3793l"))))
    (properties `((upstream-name . "criterion-measurement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/bos/criterion")
    (synopsis "Criterion measurement functionality and associated types")
    (description
     "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.")
    (license license:bsd-3)))

haskell-8.8-criterion-measurement

(define-public haskell-8.8-crypto-pubkey-types
  (package
    (name "haskell-8.8-crypto-pubkey-types")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-types/crypto-pubkey-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q0wlzjmpx536h1zcdzrpxjkvqw8abj8z0ci38138kpch4igbnby"))))
    (properties `((upstream-name . "crypto-pubkey-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-8.8-crypto-pubkey-types

(define-public haskell-8.8-cursor
  (package
    (name "haskell-8.8-cursor")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cursor/cursor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k9x1pv8l8f1sfilwn3i4hrc643n6svjahl4gpd47jhjw8akval7"))))
    (properties `((upstream-name . "cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-text)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Purely Functional Cursors")
    (description "Purely Functional Cursors for common data structures

See https://cs-syd.eu/tags/cursors for more information.")
    (license license:expat)))

haskell-8.8-cursor

(define-public haskell-8.8-deriveJsonNoPrefix
  (package
    (name "haskell-8.8-deriveJsonNoPrefix")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriveJsonNoPrefix/deriveJsonNoPrefix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zwk181c8fv0cv6w3daz3gyb0rwp2cm56piv19iz2vfv3jk9rqqs"))))
    (properties `((upstream-name . "deriveJsonNoPrefix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://gitlab.com/igrep/deriveJsonNoPrefix")
    (synopsis
     "Derive ToJSON/FromJSON instances in a more prefix-friendly manner.")
    (description
     "Please see the README on GitLab at <https://gitlab.com/igrep/deriveJsonNoPrefix#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-deriveJsonNoPrefix

(define-public haskell-8.8-deriving-aeson
  (package
    (name "haskell-8.8-deriving-aeson")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-aeson/deriving-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x9sv8r0ziy14zk6lcgzgxbmx9mrlngc0r1bqg6gkgxhswmjc2jq"))))
    (properties `((upstream-name . "deriving-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://hackage.haskell.org/package/deriving-aeson")
    (synopsis "Type driven generic aeson instance customisation")
    (description
     "This package provides a newtype wrapper with
FromJSON/ToJSON instances customisable via a phantom type parameter.
The instances can be rendered to the original type using DerivingVia.")
    (license license:bsd-3)))

haskell-8.8-deriving-aeson

(define-public haskell-8.8-detour-via-sci
  (package
    (name "haskell-8.8-detour-via-sci")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/detour-via-sci/detour-via-sci-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r417lp98k0nizlxh7r74c2c4g1ij33pk5ip0bm7ssmzyya127j5"))))
    (properties `((upstream-name . "detour-via-sci") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00dj8vf9gg9ww37sir6mblf3xhcpam8qgfz5bfana23arhf2cixj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-newtype)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-siggy-chardust)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/detour-via-sci#readme")
    (synopsis "JSON and CSV encoding for rationals as decimal point numbers.")
    (description
     "Lossy JSON and CSV encoding and decoding for newtype rationals via scientific with fixed decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-detour-via-sci

(define-public haskell-8.8-di-monad
  (package
    (name "haskell-8.8-di-monad")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-monad/di-monad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "190n6hwa7xs4b75bfvk4k2kn3rq8hkgs52f9plxfixlrl7jympgm"))))
    (properties `((upstream-name . "di-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-di-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (description
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (license license:bsd-3)))

haskell-8.8-di-monad

(define-public haskell-8.8-doctemplates
  (package
    (name "haskell-8.8-doctemplates")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pzzcy2f1ysnqzkv14h7x9dp9ywf5rn5k8cvwwwvlg6sjizgvfpd"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-doclayout)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/jgm/doctemplates#readme")
    (synopsis "Pandoc-style document templates")
    (description "This is the text templating system used by pandoc.
It supports variable interpolation, iteration,
tests for non-blank values, pipes, and partials.
Templates are rendered to doclayout Docs,
and variable values may come from a variety of
different sources, including aeson Values.")
    (license license:bsd-3)))

haskell-8.8-doctemplates

(define-public haskell-8.8-doctest-discover
  (package
    (name "haskell-8.8-doctest-discover")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-discover/doctest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j4yqkb5jvvm9g2xpnm6gy4brb725cn3hzm7cv3yylkyhd8allx9"))))
    (properties `((upstream-name . "doctest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "http://github.com/karun012/doctest-discover")
    (synopsis "Easy way to run doctests via cabal")
    (description
     "doctest-discover provides an easy way to run doctests via cabal")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-doctest-discover

(define-public haskell-8.8-either-both
  (package
    (name "haskell-8.8-either-both")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/either-both/either-both-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cm6g0wvwqlm405y8svv2fi49kpxqs7hffwd4gnsvlk2rfxng93f"))))
    (properties `((upstream-name . "either-both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-8.8-either-both

(define-public haskell-8.8-ekg-json
  (package
    (name "haskell-8.8-ekg-json")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-json/ekg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iyx0ix4dcyhh9xg4ia1lm7x2q0iffswnr33khfg9fr81am80shy"))))
    (properties `((upstream-name . "ekg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1f53dh7h48j07xw4jdxzwipndap8wdg36d857zdkaxmf14dzqvp1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ekg-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-json")
    (synopsis "JSON encoding of ekg metrics")
    (description
     "Encodes ekg metrics as JSON, using the same encoding as used by the
ekg package, thus allowing ekg metrics to be served by other HTTP
servers than the one used by the ekg package.")
    (license license:bsd-3)))

haskell-8.8-ekg-json

(define-public haskell-8.8-elm-bridge
  (package
    (name "haskell-8.8-elm-bridge")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-bridge/elm-bridge-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q71zj7vzkwxkn022bn4bqnblwygdrkjypqy65xxadfbqjl9y8gx"))))
    (properties `((upstream-name . "elm-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/agrafix/elm-bridge")
    (synopsis
     "Derive Elm types and Json code from Haskell types, using aeson's options")
    (description
     "Building the bridge from Haskell to Elm and back. Define types once,
and derive the aeson and elm functions at the same time, using any aeson
option you like. Cheers!")
    (license license:bsd-3)))

haskell-8.8-elm-bridge

(define-public haskell-8.8-emacs-module
  (package
    (name "haskell-8.8-emacs-module")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/emacs-module/emacs-module-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6rcvhgdhlzzq86b4qhanbmymwl87r705jx9ih8s89fvsfgvq0y"))))
    (properties `((upstream-name . "emacs-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-assertions" "-f-module-assertions")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-safe-exceptions-checked)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/sergv/emacs-module")
    (synopsis "Utilities to write Emacs dynamic modules")
    (description
     "This package provides a full set of bindings to emacs-module.h that
allows to develop Emacs modules in Haskell. Bindings are based on
Emacs 25 version of the interface and thus should work in all
subsequent versions of Emacs.
For pointers on how to write minimal Emacs module, please refer
to https://github.com/sergv/emacs-module/blob/master/test/src/Emacs/TestsInit.hs")
    (license license:bsd-3)))

haskell-8.8-emacs-module

(define-public haskell-8.8-equational-reasoning
  (package
    (name "haskell-8.8-equational-reasoning")
    (version "0.6.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equational-reasoning/equational-reasoning-"
                    version ".tar.gz"))
              (sha256
               (base32
                "003prif9pjjcj67nv6hxr0y70ik5qg1sddzh82y97a1l7m6kigfq"))))
    (properties `((upstream-name . "equational-reasoning") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-th-desugar)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-extras)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://hackage.haskell.org/package/equational-reasoning")
    (synopsis "Proof assistant for Haskell using DataKinds & PolyKinds")
    (description
     "A simple convenient library to write equational / preorder proof as in Agda.
Since 0.6.0.0, this no longer depends on @@singletons@@ package, and the @@Proof.Induction@@ module goes to @@equational-reasoning-induction@@ package.")
    (license license:bsd-3)))

haskell-8.8-equational-reasoning

(define-public haskell-8.8-etc
  (package
    (name "haskell-8.8-etc")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/etc/etc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1j17g8jij4y782vwpx7b52fv9nwv4v4mygk2hbq6vihzkbrdbd31"))))
    (properties `((upstream-name . "etc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extra" "-f-cli" "-f-yaml")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (home-page "https://github.com/roman/Haskell-etc")
    (synopsis "Declarative configuration spec for Haskell projects")
    (description
     "`etc` gathers configuration values from multiple sources (cli options, OS
environment variables, files) using a declarative spec file that defines where
these values are to be found and located in a configuration map.")
    (license license:expat)))

haskell-8.8-etc

(define-public haskell-8.8-fast-digits
  (package
    (name "haskell-8.8-fast-digits")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-digits/fast-digits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vlmjlkmv1nmw1rriafm2hzkmqd5xnwgzmvrg6xxqj1ab5sdsafs"))))
    (properties `((upstream-name . "fast-digits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-digits)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)))
    (home-page "https://github.com/Bodigrim/fast-digits")
    (synopsis "Integer-to-digits conversion.")
    (description "Convert an integer to digits and back.
This library is both asymptotically (O(n^1.4) vs. O(n^2))
and practically (2x-40x for typical inputs)
faster than \"Data.Digits\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-fast-digits

(define-public haskell-8.8-flac-picture
  (package
    (name "haskell-8.8-flac-picture")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flac-picture/flac-picture-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02h36z65xmy0mvg7j2863h35dcf24l08ma0dxjbqcn42sca9ss0m"))))
    (properties `((upstream-name . "flac-picture") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ib9ypz06i81bgkj08aw6fdyxi6fbl2029vwlcqybbhz9cnya1pm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-flac)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.8-flac-picture

(define-public haskell-8.8-forma
  (package
    (name "haskell-8.8-forma")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/forma/forma-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pd2qzibffbkw2c4mk687yg109pl0nfjq0kpwi2cl0l8d0qlyv0c"))))
    (properties `((upstream-name . "forma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0p8cxv068d2fhpym28p49wxsiz6qdm1gb8mgw86lgs8yykqzwsy8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/mrkkrp/forma")
    (synopsis "Parse and validate forms in JSON format")
    (description "Parse and validate forms in JSON format.")
    (license license:bsd-3)))

haskell-8.8-forma

(define-public haskell-8.8-fuzzy-time
  (package
    (name "haskell-8.8-fuzzy-time")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-time/fuzzy-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l9gpirnnr8lzdcnqz1sdi998v7gka9x6sld2pz4d8y906mdhclj"))))
    (properties `((upstream-name . "fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Fuzzy time types, parsing and resolution")
    (license license:expat)))

haskell-8.8-fuzzy-time

(define-public haskell-8.8-genvalidity-property
  (package
    (name "haskell-8.8-genvalidity-property")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-property/genvalidity-property-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cvzc4z4771vpycwfgcj0yswyglzl6cl1h2wrfhs224nrcmk5a7z"))))
    (properties `((upstream-name . "genvalidity-property") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "Standard properties for functions on `Validity` types")
    (license license:expat)))

haskell-8.8-genvalidity-property

(define-public haskell-8.8-github-types
  (package
    (name "haskell-8.8-github-types")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-types/github-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rvqmzbbc8k7xs0akry7xh5c2abzzr6290812cnwk9ry3d3fmr6c"))))
    (properties `((upstream-name . "github-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://hackage.haskell.org/package/github-types")
    (synopsis "Type definitions for objects used by the GitHub v3 API")
    (description "This package includes (some) type definitions for objects
which are consumed or produced by the GitHub v3 API.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-github-types

(define-public haskell-8.8-hackage-db
  (package
    (name "haskell-8.8-hackage-db")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-db/hackage-db-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vsc0lrbrb525frycqq0c5z846whymgcjl888gnlqd16nknbsn3l"))))
    (properties `((upstream-name . "hackage-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "1h3x5a8xmqkkcd3h1m7z0il1vbsh2c77685y68zmyp21zb1y88hy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tar)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://github.com/peti/hackage-db#readme")
    (synopsis "Access cabal-install's Hackage database via Data.Map")
    (description
     "This library provides convenient access to the local copy of the Hackage
database that \\\"cabal update\\\" creates. Check out
<https://github.com/peti/hackage-db/tree/master/example/> for a collection
of simple example programs that demonstrate how to use this code.")
    (license license:bsd-3)))

haskell-8.8-hackage-db

(define-public haskell-8.8-haskell-names
  (package
    (name "haskell-8.8-haskell-names")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-names/haskell-names-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gqh7whzzcg46c262yf610g781ach3p8458kwf3mmf1pyhjrj7hm"))))
    (properties `((upstream-name . "haskell-names") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-lens-light)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-traverse-with-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)))
    (home-page "http://documentup.com/haskell-suite/haskell-names")
    (synopsis "Name resolution library for Haskell")
    (description
     "This package takes modules parsed with `haskell-src-exts`, resolves used names and annotates the parsed module with scoping information.")
    (license license:bsd-3)))

haskell-8.8-haskell-names

(define-public haskell-8.8-hedgehog
  (package
    (name "haskell-8.8-hedgehog")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10lv574491zldqzin433z0vqkq43f0v3shjf78j395y0g1jyky9m"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v0wgij1sz7smmh7j74g8jdi6gvjdv90f20jci7qskx38mhn5n0j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-concurrent-output)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-erf)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-lifted-async)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-wl-pprint-annotated)))
    (home-page "https://hedgehog.qa")
    (synopsis "Release with confidence.")
    (description
     "<http://hedgehog.qa/ Hedgehog> automatically generates a comprehensive array
of test cases, exercising your software in ways human testers would never
imagine.

Generate hundreds of test cases automatically, exposing even the
most insidious of corner cases. Failures are automatically simplified, giving
developers coherent, intelligible error messages.

To get started quickly, see the <https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-example examples>.")
    (license license:bsd-3)))

haskell-8.8-hedgehog

(define-public haskell-8.8-here
  (package
    (name "haskell-8.8-here")
    (version "1.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/here/here-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "001wfyvigl2xswqysnpignkl124hybf833875mkcsn8yp8krqvs0"))))
    (properties `((upstream-name . "here") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-8.8-here

(define-public haskell-8.8-hexstring
  (package
    (name "haskell-8.8-hexstring")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexstring/hexstring-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0509h2fhrpcsjf7gffychf700xca4a5l937jfgdzywpm4bzdpn20"))))
    (properties `((upstream-name . "hexstring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a hex string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a hexadecimal Text representation.")
    (license license:expat)))

haskell-8.8-hexstring

(define-public haskell-8.8-hi-file-parser
  (package
    (name "haskell-8.8-hi-file-parser")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hi-file-parser/hi-file-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09gs26z0jvkkhb1r43gj27pq0k5fc4i6fpr59g397vz4sm86gb2l"))))
    (properties `((upstream-name . "hi-file-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1bm98h0v4wf9vmdng15c2r48yz06118jxlprsnk0z3jw0d95ij9z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/commercialhaskell/stack#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/stack/blob/master/subs/hi-file-parser/README.md>")
    (license license:bsd-3)))

haskell-8.8-hi-file-parser

(define-public haskell-8.8-higher-leveldb
  (package
    (name "haskell-8.8-higher-leveldb")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/higher-leveldb/higher-leveldb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wmgz2aqz0vg0fnnigpg27gnzs9i6slyn6lb41myv6m20j0j5z1a"))))
    (properties `((upstream-name . "higher-leveldb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-leveldb-haskell)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)))
    (home-page "https://github.com/jeremyjh/higher-leveldb")
    (synopsis "A rich monadic API for working with leveldb databases.")
    (description "A rich monadic API for working with leveldb databases.")
    (license license:bsd-3)))

haskell-8.8-higher-leveldb

(define-public haskell-8.8-hkd-default
  (package
    (name "haskell-8.8-hkd-default")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hkd-default/hkd-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ff8sfd68a06s7kfc85ww6w5wm7m0f70vd2bi0lbkj0r14rsn7vg"))))
    (properties `((upstream-name . "hkd-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://github.com/versioncloud/hkd-default#readme")
    (synopsis "Apply default value for optional field of HKD")
    (description "Please see http://hackage.haskell.org/package/hkd-default")
    (license license:bsd-3)))

haskell-8.8-hkd-default

(define-public haskell-8.8-hourglass-orphans
  (package
    (name "haskell-8.8-hourglass-orphans")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass-orphans/hourglass-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1x6w5zpszr783gzsl3v2fizas4mh5wwgdgdnr93lydngrsj2wz"))))
    (properties `((upstream-name . "hourglass-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)))
    (home-page "https://github.com/psibi/hourglass-orphans#readme")
    (synopsis "Orphan Aeson instances to hourglass")
    (description "Orphan Aeson instances to hourglass")
    (license license:bsd-3)))

haskell-8.8-hourglass-orphans

(define-public haskell-8.8-hruby
  (package
    (name "haskell-8.8-hruby")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hruby/hruby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x72gh0lzwrr10w7lply72yqz5q0hxq39virhm2sqqsmy9r305k8"))))
    (properties `((upstream-name . "hruby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages ruby) ruby-3.1)))
    (home-page "https://hackage.haskell.org/package/hruby")
    (synopsis "Embed a Ruby intepreter in your Haskell program !")
    (description
     "This doesn't work with Ruby 1.9. Everything you need should be in Foreign.Ruby.Safe.")
    (license license:bsd-3)))

haskell-8.8-hruby

(define-public haskell-8.8-hspec-expectations-pretty-diff
  (package
    (name "haskell-8.8-hspec-expectations-pretty-diff")
    (version "0.7.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-pretty-diff/hspec-expectations-pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0432mca3k7rpdyykw9cz402zax6h42d1vsgbi0dsy1qwhlg2aycl"))))
    (properties `((upstream-name . "hspec-expectations-pretty-diff")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hscolour)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-nicify-lib)))
    (home-page
     "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>")
    (license license:expat)))

haskell-8.8-hspec-expectations-pretty-diff

(define-public haskell-8.8-integer-roots
  (package
    (name "haskell-8.8-integer-roots")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-roots/integer-roots-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12570cr39jj5lk30ls5nnc0w6881l0kflzhmwpk35qc7m39pjgy1"))))
    (properties `((upstream-name . "integer-roots") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1k0k0mfmfkb2vcab27jcikbfh56rd2wq1cnp0qhdsc7g2v2ppz0v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)))
    (home-page "https://github.com/Bodigrim/integer-roots")
    (synopsis "Integer roots and perfect powers")
    (description
     "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-8.8-integer-roots

(define-public haskell-8.8-interpolatedstring-perl6
  (package
    (name "haskell-8.8-interpolatedstring-perl6")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-perl6/interpolatedstring-perl6-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvv9dsf5mr6y7aikd57c0qlh1lkbq3y37bvn3hy2g15cn5ix2ss"))))
    (properties `((upstream-name . "interpolatedstring-perl6") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-interpolatedstring-perl6

(define-public haskell-8.8-intervals
  (package
    (name "haskell-8.8-intervals")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intervals/intervals-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s9pj2dah94smq769q4annxv2grdx376wvhzl4rsq85kjppf5a6z"))))
    (properties `((upstream-name . "intervals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("2" "1nrpc95wwifnlk7p9nw6xgcc74zw1k6krhvll7rr18ddjgfgv07x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "http://github.com/ekmett/intervals")
    (synopsis "Interval Arithmetic")
    (description
     "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.

We do not control the rounding mode of the end points of the interval when
using floating point arithmetic, so be aware that in order to get precise
containment of the result, you will need to use an underlying type with
both lower and upper bounds like 'CReal'")
    (license license:bsd-3)))

haskell-8.8-intervals

(define-public haskell-8.8-io-streams-haproxy
  (package
    (name "haskell-8.8-io-streams-haproxy")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams-haproxy/io-streams-haproxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dcn5hd4fiwyq7m01r6fi93vfvygca5s6mz87c78m0zyj29clkmp"))))
    (properties `((upstream-name . "io-streams-haproxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "024aw98q1x3fb1xq07qki3z446w6lk5gyjl13shy0dbrd5aafh92")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-8.8-io-streams-haproxy

(define-public haskell-8.8-ipython-kernel
  (package
    (name "haskell-8.8-ipython-kernel")
    (version "0.10.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ipython-kernel/ipython-kernel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "016w7bmji3k1cnnl3vq35zq6fnqdvc2x762zfzv4ync2jz63rq38"))))
    (properties `((upstream-name . "ipython-kernel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")
       #:cabal-revision
       ("1" "12h7nm3z53g7q0c8ckq3dqp7gdgcm6paln577c4pyhvh218iqycl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-cereal-text)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A library for creating kernels for IPython frontends")
    (description
     "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.")
    (license license:expat)))

haskell-8.8-ipython-kernel

(define-public haskell-8.8-json-alt
  (package
    (name "haskell-8.8-json-alt")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-alt/json-alt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ivmbm5gw362vlss1w5s2z7byrzxdh8z1qdfsh0xmywkvwx56l5q"))))
    (properties `((upstream-name . "json-alt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)))
    (home-page "https://github.com/mgajda/json-autotype")
    (synopsis "Union 'alternative' or Either that has untagged JSON encoding.")
    (description "Parsing JSON with Aeson often requires decoding fields
that have more than one Haskell type.

So we have:
```
data a :|: b = AltLeft a
| AltLeft b
printIt = print . (fromJSON :: ByteString -> Int :|: Bool)
main = do
printIt \"1\"    -- AltLeft 1
printIt \"true\" -- AltRight True
printIt \"null\" -- errors!
```
To generate types for larger JSON documents,
you might use `json-autotype`.

This is separate package so that users
do not have to keep `json-autotype` as runtime
dependency.

See <https://github.com/mgajda/json-autotype>")
    (license license:bsd-3)))

haskell-8.8-json-alt

(define-public haskell-8.8-json-feed
  (package
    (name "haskell-8.8-json-feed")
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-feed/json-feed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h9v71pvzi761ml0dpkmhd7w2l36s1v3rsq9zbshw87762710fy1"))))
    (properties `((upstream-name . "json-feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mime-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)))
    (home-page "https://hackage.haskell.org/package/json-feed")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is
available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS
feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-8.8-json-feed

(define-public haskell-8.8-kubernetes-webhook-haskell
  (package
    (name "haskell-8.8-kubernetes-webhook-haskell")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kubernetes-webhook-haskell/kubernetes-webhook-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xvc35jibs2nizzp6xgdzzyx6fhgzgqb55a48vl1djbi84s8b4q1"))))
    (properties `((upstream-name . "kubernetes-webhook-haskell")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page
     "https://github.com/EarnestResearch/kubernetes-webhook-haskell#readme")
    (synopsis "Create Kubernetes Admission Webhooks in Haskell")
    (description
     "This library lets you create [Kubernetes Admission Webhooks](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/) in Haskell.")
    (license license:expat)))

haskell-8.8-kubernetes-webhook-haskell

(define-public haskell-8.8-language-c-quote
  (package
    (name "haskell-8.8-language-c-quote")
    (version "0.12.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hwv4b40wj953f39gqn8ji4ycli67c90b8xbizskd4i1x3nqbi35"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-exception-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-exception-transformers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mainland-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-srcloc)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-symbol)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-8.8-language-c-quote

(define-public haskell-8.8-matplotlib
  (package
    (name "haskell-8.8-matplotlib")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matplotlib/matplotlib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iyjr6j5jp7lqrk9rqqvxz3rx8221hwz56p82zqkj3aarrvy21cs"))))
    (properties `((upstream-name . "matplotlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (home-page "https://github.com/abarbu/matplotlib-haskell")
    (synopsis "Bindings to Matplotlib; a Python plotting library")
    (description
     "Matplotlib is probably the most full featured plotting library out there.
These bindings provide a quick, easy, and extensible way to use it in
Haskell.

<<https://github.com/abarbu/matplotlib-haskell/raw/master/imgs/contour.png>>

> onscreen $ contourF (\\a b -> sin (a*pi/180.0) + cos (b*pi/180.0)) (-100) 100 (-200) 200 10")
    (license license:bsd-3)))

haskell-8.8-matplotlib

(define-public haskell-8.8-matrix-as-xyz
  (package
    (name "haskell-8.8-matrix-as-xyz")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-as-xyz/matrix-as-xyz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qblzv6893z6y9jkp2v71g73x35bbizxghliby39fx6kxw6l2j7w"))))
    (properties `((upstream-name . "matrix-as-xyz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "01r2n4ys2z92wkdpky171dbxklynvp5cjf7vi61sf4hjdqih17nf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)))
    (home-page "https://github.com/narumij/matrix-as-xyz#readme")
    (synopsis
     "Read and Display Jones-Faithful notation for spacegroup and planegroup")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>")
    (license license:bsd-3)))

haskell-8.8-matrix-as-xyz

(define-public haskell-8.8-matrix-static
  (package
    (name "haskell-8.8-matrix-static")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-static/matrix-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7vijwj6l8l10276smhycp1h30diy8naykxf184lm87ykx2aamv"))))
    (properties `((upstream-name . "matrix-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/wchresta/matrix-static#readme")
    (synopsis "Type-safe matrix operations")
    (description
     "Please see the README on GitHub at <https://github.com/wchresta/matrix-static#readme>")
    (license license:bsd-3)))

haskell-8.8-matrix-static

(define-public haskell-8.8-mergeful
  (package
    (name "haskell-8.8-mergeful")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeful/mergeful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cvx0qs4j7jbamz5dz23dii7car8dq5wz0qvkbckb3ymbrf16ywa"))))
    (properties `((upstream-name . "mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-time)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-8.8-mergeful

(define-public haskell-8.8-mergeless
  (package
    (name "haskell-8.8-mergeless")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeless/mergeless-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14kgfh672fywvrjzb9kzhrnw10lxq44216rwniavn68abkg6yx94"))))
    (properties `((upstream-name . "mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-containers)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-8.8-mergeless

(define-public haskell-8.8-microlens-aeson
  (package
    (name "haskell-8.8-microlens-aeson")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-aeson/microlens-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "074mzpk7av6i0xf7xy42jpzgljlmyw805md1vz4sqy85m99f0ikr"))))
    (properties `((upstream-name . "microlens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/fosskers/microlens-aeson/")
    (synopsis "Law-abiding lenses for Aeson, using microlens.")
    (description "Law-abiding lenses for Aeson, using microlens.")
    (license license:expat)))

haskell-8.8-microlens-aeson

(define-public haskell-8.8-microstache
  (package
    (name "haskell-8.8-microstache")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microstache/microstache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xdca11z5cy7vfy2dszhr6qvlrxw6pn0d9iri7mg56lvi02javik"))))
    (properties `((upstream-name . "microstache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1l72cfbrr6kxh0z2dx2pghxl7ljlbmbk8s9wlgk35bjm925kkxfl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskellari/microstache")
    (synopsis "Mustache templates for Haskell")
    (description
     "Mustache templates for Haskell.

Based on @@stache@@ library, which uses @@megaparsec@@.
This library uses @@parsec@@, thus the name: @@microstache@@.")
    (license license:bsd-3)))

haskell-8.8-microstache

(define-public haskell-8.8-mixed-types-num
  (package
    (name "haskell-8.8-mixed-types-num")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kirxpnmwwnbxamwpzrxyx69n482xhifqpr5id73pfni7lrd126p"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)))
    (home-page "https://github.com/michalkonecny/mixed-types-num")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "This package provides a version of Prelude where
unary and binary operations such as @@not@@, @@+@@, @@==@@
have their result type derived from the parameter type(s)
and thus supports mixed-type arithmetic and comparisons.

Partial operations such as division, sqrt and power
do not throw exceptions even when errors such as division by zero
occur.  Instead, these errors are propagated bottom-up in
a bespoke error-accumulating functor.

This library is a by-product of developing the
<https://github.com/michalkonecny/aern2 AERN2> library for interval and exact real computation.
Certain aspects are specifically tailored for interval or exact real arithmetics,
including three-valued numerical comparisons
and distinguishing potential and certain errors.

See module \"MixedTypesNumPrelude\" for further documentation.

/Ghci 8.0.* fails when loading this package/ due to ghc bug <https://ghc.haskell.org/trac/ghc/ticket/13385#ticket 13385>.
This bug does not affect ghci 7.10.3 and ghci 8.2.* and above.")
    (license license:bsd-3)))

haskell-8.8-mixed-types-num

(define-public haskell-8.8-morpheus-graphql-core
  (package
    (name "haskell-8.8-morpheus-graphql-core")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-core/morpheus-graphql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ay37r73sqs5c8ixaz9mr9x1ps58jg4sgrlw5dmq7hkzy9993ccv"))))
    (properties `((upstream-name . "morpheus-graphql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Core")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.8-morpheus-graphql-core

(define-public haskell-8.8-mx-state-codes
  (package
    (name "haskell-8.8-mx-state-codes")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mx-state-codes/mx-state-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jxw7hh24rqs1c5y4b7bmllvcwq3gsrrn0rixq9lzhn2915ykaq6"))))
    (properties `((upstream-name . "mx-state-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fl0953329z4an76287q1ic4hygzg3xzv2w0zv7dqgkpdz3qbjx7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/prikhi/mx-state-codes#readme")
    (synopsis "ISO 3166-2:MX State Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Mexican State, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-8.8-mx-state-codes

(define-public haskell-8.8-network-messagepack-rpc
  (package
    (name "haskell-8.8-network-messagepack-rpc")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc/network-messagepack-rpc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "118agkkbvfyynk6qg5yzazbs0s7w0bw9n0ndj8nm35yy6cil9lky"))))
    (properties `((upstream-name . "network-messagepack-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-data-msgpack)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc")
    (synopsis "MessagePack RPC")
    (description
     "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.")
    (license license:bsd-3)))

haskell-8.8-network-messagepack-rpc

(define-public haskell-8.8-openssl-streams
  (package
    (name "haskell-8.8-openssl-streams")
    (version "1.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openssl-streams/openssl-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10pnnpzgb5xr811kc9qdk7h2cgn6hk2yiyhnzz8f8p0fjzc0pwjm"))))
    (properties `((upstream-name . "openssl-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vfawnfcjrw29qg1n7k6z6bk4bmnk869gjlr9mxw4mzxgl80b2vp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-8.8-openssl-streams

(define-public haskell-8.8-pandoc-types
  (package
    (name "haskell-8.8-pandoc-types")
    (version "1.20")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-types/pandoc-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wz89ywyhvxz8daw4ia132kg6ynx5y4wva4g899wvq4kyjy1dixa"))))
    (properties `((upstream-name . "pandoc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16l4gy0v34nrb6z3pag6i3gl6m4af5j6wg6yzyiga124xpqzhql3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-string-qq)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "https://pandoc.org/")
    (synopsis "Types for representing a structured document")
    (description "@@Text.Pandoc.Definition@@ defines the 'Pandoc' data
structure, which is used by pandoc to represent
structured documents.  This module used to live
in the pandoc package, but starting with pandoc 1.7, it
has been split off, so that other packages can use it
without drawing in all of pandoc's dependencies, and
pandoc itself can depend on packages (like citeproc-hs)
that use them.

@@Text.Pandoc.Builder@@ provides functions for building
up @@Pandoc@@ structures programmatically.

@@Text.Pandoc.Generic@@ provides generic functions for
manipulating Pandoc documents.

@@Text.Pandoc.Walk@@ provides faster, nongeneric functions
for manipulating Pandoc documents.

@@Text.Pandoc.JSON@@ provides functions for serializing
and deserializing a @@Pandoc@@ structure to and from JSON.")
    (license license:bsd-3)))

haskell-8.8-pandoc-types

(define-public haskell-8.8-parser-combinators-tests
  (package
    (name "haskell-8.8-parser-combinators-tests")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parser-combinators-tests/parser-combinators-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iy4iajpjka1diy660x3mvmh8kldwf3svwdmvlxh26dsqy2s8sx8"))))
    (properties `((upstream-name . "parser-combinators-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "07j1y8iqljaqyqhy37db2xvs7y9z91r3sndzmz4gga7w2jpkhq2b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-megaparsec-tests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis "Test suite of parser-combinators")
    (description "Test suite of parser-combinators.")
    (license license:bsd-3)))

haskell-8.8-parser-combinators-tests

(define-public haskell-8.8-path
  (package
    (name "haskell-8.8-path")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dl7yjmkcdm3wlbj1s5qvkl31apl3dnwz5jc8h3hdq0w722x4a5k"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0ph5qs50lm8ac58v8df0mmivqfilb1wz14568q06aws6gwj9qqpi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-8.8-path

(define-public haskell-8.8-pdfinfo
  (package
    (name "haskell-8.8-pdfinfo")
    (version "1.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdfinfo/pdfinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04894cwvcn910j2b0j95dc6i9v6xriqa0v97z3vyi9dhi9yiysls"))))
    (properties `((upstream-name . "pdfinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-process-extras)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)))
    (home-page "https://github.com/chrisdone/pdfinfo")
    (synopsis "Wrapper around the pdfinfo command.")
    (description
     "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.")
    (license license:bsd-3)))

haskell-8.8-pdfinfo

(define-public haskell-8.8-pipes-network
  (package
    (name "haskell-8.8-pipes-network")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network/pipes-network-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f7kn9vpzsm8s108cly80pi6yqpv6v04w032ng0wr9g78an393l"))))
    (properties `((upstream-name . "pipes-network") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-network-simple)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-pipes-safe)))
    (home-page "https://github.com/k0001/pipes-network")
    (synopsis "Use network sockets together with the pipes library.")
    (description
     "Use network sockets together with the @@pipes@@ library.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP\" exports pipes and utilities for using TCP connections in
a streaming fashion.

* \"Pipes.Network.TCP.Safe\" subsumes \"Pipes.Network.TCP\", exporting pipes and
functions that allow you to safely establish new TCP connections within a
pipeline using the @@pipes-safe@@ facilities. You only need to use this module
if you want to safely acquire and release operating system resources within a
pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.8-pipes-network

(define-public haskell-8.8-postgresql-simple
  (package
    (name "haskell-8.8-postgresql-simple")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple/postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rz2bklxp4pvbxb2w49h5p6pbwabn6d5d4j4mrya4fpa0d13k43d"))))
    (properties `((upstream-name . "postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1qavb3qs1g307pc19k9y3yvqp0c1srwsplijvayn9ldp0bxdy6q8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Only)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-time-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://hackage.haskell.org/package/postgresql-simple")
    (synopsis "Mid-Level PostgreSQL client library")
    (description
     "Mid-Level PostgreSQL client library, forked from mysql-simple.")
    (license license:bsd-3)))

haskell-8.8-postgresql-simple

(define-public haskell-8.8-pptable
  (package
    (name "haskell-8.8-pptable")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pptable/pptable-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05wkvnk2h3xvjivk8cd6z8xlscipvd2az1v1n4sdianf9r0gzdwq"))))
    (properties `((upstream-name . "pptable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c1srvgwyczbfnw3zw5pbsjqgxifq9yb1h60w3aq91q7iamrvdgb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-boxes)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-8.8-pptable

(define-public haskell-8.8-pretty-simple
  (package
    (name "haskell-8.8-pretty-simple")
    (version "3.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-simple/pretty-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sr66sawacv0ks0znip0jxpz98lvjacara8sqfm53i0pqf8c0qla"))))
    (properties `((upstream-name . "pretty-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexe" "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (home-page "https://github.com/cdepillabout/pretty-simple")
    (synopsis "pretty printer for data types with a 'Show' instance.")
    (description
     "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-pretty-simple

(define-public haskell-8.8-pretty-sop
  (package
    (name "haskell-8.8-pretty-sop")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-sop/pretty-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vybwbkqgr3fi13c5qwwhrwns9sdj7zvlkz6vag966pk238gnxy"))))
    (properties `((upstream-name . "pretty-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04gr1aaqaq347rv5vqh93qcnbc53y55hrds73js5329z2j1gbmng")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generics-sop)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)))
    (home-page "https://hackage.haskell.org/package/pretty-sop")
    (synopsis "A generic pretty-printer using generics-sop")
    (description
     "This library contains a generic implementation of the 'prettyVal'
function from the @@<https://hackage.haskell.org/package/pretty-show pretty-show>@@
package. Using the pretty printer, values can easily be rendered to
strings and HTML documents in a uniform way.

This library makes use of the
@@<https://hackage.haskell.org/package/generics-sop generics-sop>@@ package and
is an example of a generic function defined in the SOP style.
")
    (license license:bsd-3)))

haskell-8.8-pretty-sop

(define-public haskell-8.8-protocol-radius-test
  (package
    (name "haskell-8.8-protocol-radius-test")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius-test/protocol-radius-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14npn49vj7a66pzvrdw0gj88h97vz11axq5i4k4nq0r156yb07pm"))))
    (properties `((upstream-name . "protocol-radius-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-protocol-radius)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-8.8-protocol-radius-test

(define-public haskell-8.8-pvar
  (package
    (name "haskell-8.8-pvar")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pvar/pvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "183pc9xk4b62rrmchzqxi1wvys8k118zi7060wr0xm2azn7wny6h"))))
    (properties `((upstream-name . "pvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/lehins/pvar#readme")
    (synopsis "Mutable variable with primitive values")
    (description
     "Mutable variable `PVar` that is backed by a single value `MutableByteArray`")
    (license license:bsd-3)))

haskell-8.8-pvar

(define-public haskell-8.8-qm-interpolated-string
  (package
    (name "haskell-8.8-qm-interpolated-string")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brbs4qwvb16bkmcg51spjjrzc83hwgi1fbsix25vrri2myk6sz8"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-qm-interpolated-string

(define-public haskell-8.8-rank2classes
  (package
    (name "haskell-8.8-rank2classes")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank2classes/rank2classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh2ks4qj3ksqs92rm8xzanpwc5ppml04s4mjzyngpgrihwi9924"))))
    (properties `((upstream-name . "rank2classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-template-haskell")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/blamario/grampa/tree/master/rank2classes")
    (synopsis
     "standard type constructor class hierarchy, only with methods of rank 2 types")
    (description
     "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2
types and class instances of kind @@(k->*)->*@@. The classes enable generic handling of heterogenously typed data
structures and other neat tricks.")
    (license license:bsd-3)))

haskell-8.8-rank2classes

(define-public haskell-8.8-reform-happstack
  (package
    (name "haskell-8.8-reform-happstack")
    (version "0.2.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-happstack/reform-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xknj906vr0q6vrxrvna1777v7hsdg1l3r0wwnga7k1yn5hcfc76"))))
    (properties `((upstream-name . "reform-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-happstack-server)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-reform)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://www.happstack.com/")
    (synopsis "Happstack support for reform.")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Happstack.")
    (license license:bsd-3)))

haskell-8.8-reform-happstack

(define-public haskell-8.8-regex-applicative
  (package
    (name "haskell-8.8-regex-applicative")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative/regex-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p0anx5vamrhrdvviwkh2zn6pa3pv2bjb7nfyc7dvz2q7g14y1lg"))))
    (properties `((upstream-name . "regex-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-8.8-regex-applicative

(define-public haskell-8.8-relational-record
  (package
    (name "haskell-8.8-relational-record")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-record/relational-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nmkjq5jrs38d0mmdpy8ygkjncg3j5yjbkcv7mxrm8wlqdijdg8b"))))
    (properties `((upstream-name . "relational-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-persistable-record)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-persistable-types-HDBC-pg)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-relational-query)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-relational-query-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Meta package of Relational Record")
    (description "Meta package to install Relational Record quickly")
    (license license:bsd-3)))

haskell-8.8-relational-record

(define-public haskell-8.8-rethinkdb-client-driver
  (package
    (name "haskell-8.8-rethinkdb-client-driver")
    (version "0.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rethinkdb-client-driver/rethinkdb-client-driver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15l9z7ki81cv97lajxcbddavbd254c5adcdi8yw6df31rmbc378g"))))
    (properties `((upstream-name . "rethinkdb-client-driver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "051fgkx8zdlbpnsgvqm4jqk9a21xszz9sdhcmchx6h4ilyn7byjy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/wereHamster/rethinkdb-client-driver")
    (synopsis "Client driver for RethinkDB")
    (description
     "This is an alternative client driver for RethinkDB. It is not complete
yet, but the basic structure is in place and the driver can make
simple queries.

Its main focus is on type safety, which it achieves quite well. It also
uses the new JSON protocol which should give it a speed boost (and make
the driver compatible with GHC 7.8).

Note that the driver is neither thread-safe nor reentrant. If you have
a multi-threaded application, I recommend using 'resource-pool'.")
    (license license:expat)))

haskell-8.8-rethinkdb-client-driver

(define-public haskell-8.8-rigel-viz
  (package
    (name "haskell-8.8-rigel-viz")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rigel-viz/rigel-viz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z6c6hynisf5165c4izh31bfr4zcdik13ww5c4ylpqzxsig2z5xs"))))
    (properties `((upstream-name . "rigel-viz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/ocramz/rigel-viz")
    (synopsis "A mid-level wrapper for vega-lite")
    (description
     "A mid-level wrapper for vega-lite. Please see the README for details")
    (license license:bsd-3)))

haskell-8.8-rigel-viz

(define-public haskell-8.8-selda-json
  (package
    (name "haskell-8.8-selda-json")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-json/selda-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ai24qmz5nkpqx0zd24ix0ci5aqiccfy57fkf8f87swrv28101l8"))))
    (properties `((upstream-name . "selda-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gajzv8zhj8i3bxzjh81vjn8j2igh3nrawfpddvxg1ayb5l2d2y0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-selda)))
    (home-page "https://selda.link")
    (synopsis "JSON support for the Selda database library.")
    (description "Types and classes to support storing and querying
JSON values using Selda via Aeson.")
    (license license:expat)))

haskell-8.8-selda-json

(define-public haskell-8.8-serialise
  (package
    (name "haskell-8.8-serialise")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vp4wyxpximpx10pssfgdsir1pc23zb62fg3kj3iblpzqfrryy69"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")
       #:cabal-revision
       ("2" "1qcsp15v0swxy2qlvc40fil09zq32y3wl00y3passc2a4b4yhmr4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cborg)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-half)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A binary serialisation library for Haskell values.")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides pure, efficient
serialization of Haskell values directly into @@ByteString@@s for storage or
transmission purposes. By providing a set of type class instances, you can
also serialise any custom data type you have as well.

The underlying binary format used is the 'Concise Binary Object
Representation', or CBOR, specified in RFC 7049. As a result,
serialised Haskell values have implicit structure outside of the
Haskell program itself, meaning they can be inspected or analyzed
without custom tools.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility for
working with CBOR data.")
    (license license:bsd-3)))

haskell-8.8-serialise

(define-public haskell-8.8-serversession
  (package
    (name "haskell-8.8-serversession")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession/serversession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08j8v6a2018bmvwsb7crdg0ajak74jggb073pdpx9s0pf3cfzyrz"))))
    (properties `((upstream-name . "serversession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0i5faxzxgvpfylmrr175f8l4asyh4phncc90jkfag53gnspcv028")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-nonce)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-8.8-serversession

(define-public haskell-8.8-shakespeare
  (package
    (name "haskell-8.8-shakespeare")
    (version "2.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare/shakespeare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fjv3yg425d87d3dih0l3ff95g5a5yp9w85m58sjara6xqivj9s4"))))
    (properties `((upstream-name . "shakespeare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_export" "-f-test_coffee" "-f-test_roy")
       #:cabal-revision
       ("1" "0na31a7h3sq8ndrx79waywsfj5667pm0masy10gxzhzwmf6i3s1l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis "A toolkit for making compile-time interpolated templates")
    (description
     "Shakespeare is a family of type-safe, efficient template languages. Shakespeare templates are expanded at compile-time, ensuring that all interpolated variables are in scope. Variables are interpolated according to their type through a typeclass.

Shakespeare templates can be used inline with a quasi-quoter or in an external file.

Note there is no dependency on haskell-src-extras. Instead Shakespeare believes logic should stay out of templates and has its own minimal Haskell parser.

Packages that use this: xml-hamlet

Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.")
    (license license:expat)))

haskell-8.8-shakespeare

(define-public haskell-8.8-shellmet
  (package
    (name "haskell-8.8-shellmet")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shellmet/shellmet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "099v8w3b6s66mz79igjh57v98b90il6zkqh5wnqi3rvagbs89w5r"))))
    (properties `((upstream-name . "shellmet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)))
    (home-page "https://github.com/kowainik/shellmet")
    (synopsis "Out of the shell solution for scripting in Haskell")
    (description
     "Shellmet provides easy and convenient way to call shell commands from Haskell programs")
    (license license:mpl2.0)))

haskell-8.8-shellmet

(define-public haskell-8.8-shelly
  (package
    (name "haskell-8.8-shelly")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shelly/shelly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kma77gixhyciimh19p64h1ndbcrs9qhk8fgyv71iqh5q57zvday"))))
    (properties `((upstream-name . "shelly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lifted" "-f-build-examples")
       #:cabal-revision
       ("3" "0jgd4jx16sm055riacqfvccnm3r5mz33ynxf41ckvkx42wxd98hp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-contrib)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-lifted-async)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)))
    (home-page "https://github.com/yesodweb/Shelly.hs")
    (synopsis "shell-like (systems) programming in Haskell")
    (description
     "Shelly provides convenient systems programming in Haskell,
similar in spirit to POSIX shells. Shelly:

* is aimed at convenience and getting things done rather than
being a demonstration of elegance.

* has detailed and useful error messages

* maintains its own environment, making it thread-safe.

* is modern, using Text filepath/directory

Shelly is originally forked from the Shellish package.

See the shelly-extra package for additional functionality.

An overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.8-shelly

(define-public haskell-8.8-simple-templates
  (package
    (name "haskell-8.8-simple-templates")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-templates/simple-templates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vm30fdjm5fydv4ns3z2cvmqadyxb47kvj8nzwkk5jff35jaglrf"))))
    (properties `((upstream-name . "simple-templates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://simple.cx")
    (synopsis "A basic template language for the Simple web framework")
    (description
     "A basic template language for the Simple web framework. The language supports
variable substitution, function invokation, loops and conditionals.

\"Web.Simple.Templates\" documents how to integrate into an app, while
\"Web.Simple.Templates.Language\" documents the templating language syntax
and semantics.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-simple-templates

(define-public haskell-8.8-skylighting-core
  (package
    (name "haskell-8.8-skylighting-core")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1azcq7g8c4p18q4akk7rl0bczjvp0vl4mnqvsfmzcdf7sdjlg9f7"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-system-pcre")
       #:cabal-revision
       ("1" "1zlzrc0iy4wbby9ixg81hdk8c79z2930rdh46k0cp1hkxhqndv2f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
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

haskell-8.8-skylighting-core

(define-public haskell-8.8-snap-core
  (package
    (name "haskell-8.8-snap-core")
    (version "1.0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-core/snap-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zxdhx4wk70bkn71574lyz3zhq79yy98rv05r4564rd100xw3fqs"))))
    (properties `((upstream-name . "snap-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-debug" "-fnetwork-uri")
       #:cabal-revision
       ("1" "065v61clskzikywv0gy9n4fjaszi2fnjklal83kqbzhzzgkf83ng")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-readable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://snapframework.com/")
    (synopsis "Snap: A Haskell Web Framework (core interfaces and types)")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

This library contains the core definitions and types for the Snap framework,
including:

1. Primitive types and functions for HTTP (requests, responses, cookies,
post/query parameters, etc)

2. A monad for programming web handlers called \\\"Snap\\\", which allows:

* Stateful access to the HTTP request and response objects

* Monadic failure (i.e. MonadPlus/Alternative instances) for declining
to handle requests and chaining handlers together

* Early termination of the computation if you know early what you want
to return and want to prevent further monadic processing

/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\".")
    (license license:bsd-3)))

haskell-8.8-snap-core

(define-public haskell-8.8-sourcemap
  (package
    (name "haskell-8.8-sourcemap")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sourcemap/sourcemap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ynfm44ym8y592wnzdwa0d05dbkffyyg5sm26y5ylzpynk64r85r"))))
    (properties `((upstream-name . "sourcemap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1f7q44ar6qfip8fsllg43jyn7r15ifn2r0vz32cbmx0sb0d38dax")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://hackage.haskell.org/package/sourcemap")
    (synopsis
     "Implementation of source maps as proposed by Google and Mozilla.")
    (description
     "Implementation of source maps, revision 3, proposed by Google and Mozilla here
<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here
<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>")
    (license license:bsd-3)))

haskell-8.8-sourcemap

(define-public haskell-8.8-static-text
  (package
    (name "haskell-8.8-static-text")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14z6ib2b1n6m460c5li58wh0p5kwmb471zwpwjn0pmgsayp8vzzi"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-8.8-static-text

(define-public haskell-8.8-statistics
  (package
    (name "haskell-8.8-statistics")
    (version "0.15.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j9awbg47fzb58k5z2wgkp6a0042j7hqrl1g6lyflrbsfswdp5n4"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-dense-linear-algebra)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-math-functions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-monad-par)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-vector-th-unbox)))
    (home-page "https://github.com/bos/statistics")
    (synopsis "A library of statistical types, data, and functions")
    (description
     "This library provides a number of common functions and types useful
in statistics.  We focus on high performance, numerical robustness,
and use of good algorithms.  Where possible, we provide
references to the statistical literature.

The library's facilities can be divided into four broad categories:

* Working with widely used discrete and continuous probability
distributions.  (There are dozens of exotic distributions in use;
we focus on the most common.)

* Computing with sample data: quantile estimation, kernel density
estimation, histograms, bootstrap methods, significance testing,
and regression and autocorrelation analysis.

* Random variate generation under several different distributions.

* Common statistical tests for significant differences between
samples.")
    (license license:bsd-2)))

haskell-8.8-statistics

(define-public haskell-8.8-streaming-bytestring
  (package
    (name "haskell-8.8-streaming-bytestring")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12fd0aqd6vxm8c6ccgqd99m1hh3z3nb155hairnddzix0v3r8zvd"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming-bytestring")
    (synopsis "Fast, effectful byte streams.")
    (description
     "This library enables fast and safe streaming of byte data, in either @@Word8@@ or
@@Char@@ form. It is a core addition to the <https://github.com/haskell-streaming streaming ecosystem>
and avoids the usual pitfalls of combinbing lazy @@ByteString@@s with lazy @@IO@@.

We follow the philosophy shared by @@streaming@@ that \"the best API is the one
you already know\". Thus this library mirrors the API of the @@bytestring@@
library as closely as possible.

See the module documentation and the README for more information.")
    (license license:bsd-3)))

haskell-8.8-streaming-bytestring

(define-public haskell-8.8-string-transform
  (package
    (name "haskell-8.8-string-transform")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-transform/string-transform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ay7r8ln4jwn7iq6smbny5lby3xgzlrlqj02yp61n1cn0sgzbhw"))))
    (properties `((upstream-name . "string-transform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-8.8-string-transform

(define-public haskell-8.8-structured
  (package
    (name "haskell-8.8-structured")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured/structured-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xm0m7jxwrbz8jgcn2dl5vhlz0gcg7wxcbbgaqidm2msmnc6fqww"))))
    (properties `((upstream-name . "structured") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0l9ls0r1v5bjcznjd0jcpml8vpr4iq8shp4dm4jkv96i3x277gdv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-time-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/structured")
    (synopsis "Structure (hash) of your data types")
    (description
     "Calculate the hash of a data structure.
It can be used as a magic number for the serialization formats.
See <https://hackage.haskell.org/package/binary-tagged binary-tagged>
for a @@binary@@ bindings.")
    (license license:bsd-3)))

haskell-8.8-structured

(define-public haskell-8.8-swagger
  (package
    (name "haskell-8.8-swagger")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swagger/swagger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l2liyiycbix23yayf8zq1fndavfjc06529s8sr3w8hd5ar4y567"))))
    (properties `((upstream-name . "swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/swagger")
    (synopsis "Implementation of swagger data model")
    (description
     "Implementation of Swagger specification version 1.2 as defined in
<https://github.com/wordnik/swagger-spec/blob/master/versions/1.2.md>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-swagger

(define-public haskell-8.8-tasty-hspec
  (package
    (name "haskell-8.8-tasty-hspec")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02s82ijs2ringqxsqbm7m3vcy5brmwxa617azxv0v2phi3rdkjvl"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0za15rg0szacxq9yfxxjzddr77ai7ng5827a20pj9dr5anjlnajj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-8.8-tasty-hspec

(define-public haskell-8.8-tasty-silver
  (package
    (name "haskell-8.8-tasty-silver")
    (version "3.1.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-silver/tasty-silver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07iiaw5q5jb6bxm5ys1s6bliw0qxsqp100awzxwkwfia03i1iz8z"))))
    (properties `((upstream-name . "tasty-silver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "19vqb99p465fv325z16nf9lx5rhyhdji7xmg5k0202mv4dxqqi3v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-process-extras)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (home-page "https://github.com/phile314/tasty-silver")
    (synopsis "A fancy test runner, including support for golden tests.")
    (description
     "This package provides a fancy test runner and support for «golden testing».
A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.
The test runner allows filtering tests using regexes, and to interactively
inspect the result of golden tests.
This package is a heavily extended fork of tasty-golden.")
    (license license:expat)))

haskell-8.8-tasty-silver

(define-public haskell-8.8-th-env
  (package
    (name "haskell-8.8-th-env")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-env/th-env-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13rs6p5mq92am9i80c829dcmsrpbihdq8ds6ad7rdl2d23i9pln0"))))
    (properties `((upstream-name . "th-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-env#readme")
    (synopsis
     "Template Haskell splice that expands to an environment variable")
    (description
     "TH splice that expands to an environment variable value. Can be used to embed build-time parameters in your application.")
    (license license:bsd-3)))

haskell-8.8-th-env

(define-public haskell-8.8-th-nowq
  (package
    (name "haskell-8.8-th-nowq")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-nowq/th-nowq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "090i4fmdvjjpr8zxiqh7qvdndls18312yi6z4lya2qyjgr0jgwci"))))
    (properties `((upstream-name . "th-nowq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-8.8-th-nowq

(define-public haskell-8.8-tonalude
  (package
    (name "haskell-8.8-tonalude")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonalude/tonalude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19pl0l0nz3nywhf31190qld7crbzry241h5dw0234w5qyiwf5h0h"))))
    (properties `((upstream-name . "tonalude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "A standard library for Tonatona framework.")
    (description
     "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @@tonatona@@. The Tonalude module works as a prelude replacement for Tonatona framework, providing more functionality and types out of the box than the standard prelude (such as common data types like ByteString and Text), as well as removing common \"gotchas\", like partial functions and lazy I/O.")
    (license license:expat)))

haskell-8.8-tonalude

(define-public haskell-8.8-users
  (package
    (name "haskell-8.8-users")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/users/users-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m2k3vq938whv9577k3jrgx99hwr272s0fc22p2i6k0dgf9sqqb7"))))
    (properties `((upstream-name . "users") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1x26g7k6kmq2vng9y5qkz82z06rs322s2y8bs9y6r4vayvg07q9v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-bcrypt)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "A library simplifying user management for web applications")
    (description
     "Scrap the boilerplate for managing user accounts in web applications

Features:

* Easy to understand API

* CRUD for Users

* Session Management

* Password reset functionality

* Activation functionality

Current Backends:

* <http://hackage.haskell.org/package/users-postgresql-simple PostgreSQL-Simple Backend>

* <http://hackage.haskell.org/package/users-persistent Persistent Backend>
")
    (license license:expat)))

haskell-8.8-users

(define-public haskell-8.8-validity-aeson
  (package
    (name "haskell-8.8-validity-aeson")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-aeson/validity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k0x6va9mmz0z9hgd1is71ks4fgbziw53rm7r6jsidp4ksszdzm0"))))
    (properties `((upstream-name . "validity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zhqg6hac0js33yn0xw10pcp11hbygr95vmcmgpp3sdxdhgpbnmy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-text)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for aeson")
    (description "")
    (license license:expat)))

haskell-8.8-validity-aeson

(define-public haskell-8.8-vector-space
  (package
    (name "haskell-8.8-vector-space")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-space/vector-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17676s2f8i45dj5gk370nc8585aylah7m34nbf34al7r1492y2qc"))))
    (properties `((upstream-name . "vector-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-Boolean)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-MemoTrie)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-NumInstances)))
    (home-page "https://hackage.haskell.org/package/vector-space")
    (synopsis "Vector & affine spaces, linear maps, and derivatives")
    (description
     "/vector-space/ provides classes and generic operations for vector
spaces and affine spaces.  It also defines a type of infinite towers
of generalized derivatives.  A generalized derivative is a linear
transformation rather than one of the common concrete representations
(scalars, vectors, matrices, ...).

/Warning/: this package depends on type families working fairly well,
requiring GHC version at least 6.9.

Project wiki page: <http://haskell.org/haskellwiki/vector-space>

&#169; 2008-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-vector-space

(define-public haskell-8.8-vformat-aeson
  (package
    (name "haskell-8.8-vformat-aeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vformat-aeson/vformat-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cj3zp5n1j86jds906r9yrhanl8xq08gk97x6i64d651pry4h11v"))))
    (properties `((upstream-name . "vformat-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p85qlv9w11mqybcf81xix0lhbgc2bzy9gw83ywci5kmd1s7a2a5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-vformat)))
    (home-page "https://github.com/versioncloud/vformat-aeson#readme")
    (synopsis "Extend vformat to Aeson datatypes")
    (description "Please see http://hackage.haskell.org/package/vformat-aeson")
    (license license:bsd-3)))

haskell-8.8-vformat-aeson

(define-public haskell-8.8-vty
  (package
    (name "haskell-8.8-vty")
    (version "5.28.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0jfiha8hwpdpnz4i7d94dsgcrfd20y0kjp9crn3ds2jx8kln1prv"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-string-qq)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/jtdaugherty/vty")
    (synopsis "A simple terminal UI library")
    (description
     "vty is terminal GUI library in the niche of ncurses. It is intended to
be easy to use, have no confusing corner cases, and good support for
common terminal types.

See the @@vty-examples@@ package as well as the program
@@test/interactive_terminal_test.hs@@ included in the @@vty@@ package for
examples on how to use the library.

Import the \"Graphics.Vty\" convenience module to get access to the core
parts of the library.

&#169; 2006-2007 Stefan O'Rear; BSD3 license.

&#169; Corey O'Connor; BSD3 license.

&#169; Jonathan Daugherty; BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-vty

(define-public haskell-8.8-xml-to-json
  (package
    (name "haskell-8.8-xml-to-json")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-to-json/xml-to-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0brfdlarr4yyfsfawkfjdbk4z3lvi9ihkhvqh5ws2ll0h80ja6md"))))
    (properties `((upstream-name . "xml-to-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-curl)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hxt-curl)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hxt-expat)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hxt-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xml) expat)))
    (home-page "https://github.com/sinelaw/xml-to-json")
    (synopsis "Library and command line tool for converting XML files to json")
    (description
     "The xml-to-json executable (and library) converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.

For files that are slow to process, please use 'xml-to-json-fast' which (starting with version 2.0.0) resides in its own package.

The original purpose was to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.

The package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).

See <https://github.com/sinelaw/xml-to-json#readme> for details and usage.")
    (license license:expat)))

haskell-8.8-xml-to-json

(define-public haskell-8.8-xmonad-extras
  (package
    (name "haskell-8.8-xmonad-extras")
    (version "0.15.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-extras/xmonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p20zc5k0s05ic2jjx01x0mx88y369dvq2ad43sfjbyf95msi7ls"))))
    (properties `((upstream-name . "xmonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith_sound" "-fwith_hint" "-fwith_mpd" "-f-with_hlist" "-fwith_regex_posix" "-fwith_template_haskell" "-fwith_brightness" "-f-testing")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006) haskell-8.8-X11)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-alsa-mixer)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-hint)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-libmpd)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-xmonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-xmonad-contrib)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/xmonad/xmonad-extras")
    (synopsis "Third party extensions for xmonad with wacky dependencies")
    (description
     "Various modules for xmonad that cannot be added to xmonad-contrib
because of additional dependencies.")
    (license license:bsd-3)))

haskell-8.8-xmonad-extras

