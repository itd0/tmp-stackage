;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage009)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.4-ShellCheck
  (package
    (name "haskell-8.4-ShellCheck")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ShellCheck/ShellCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z1hscbr11hwkq8k1v0vaa947hb9m6k4cm831jk1gpj8dxrk151b"))))
    (properties `((upstream-name . "ShellCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)))
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

haskell-8.4-ShellCheck

(define-public haskell-8.4-Spintax
  (package
    (name "haskell-8.4-Spintax")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spintax/Spintax-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04vb07r26p4rxgsym5zhqsnyx4sr2a112sa31mdda5hjpy9j3pr1"))))
    (properties `((upstream-name . "Spintax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)))
    (home-page "https://github.com/MichelBoucey/spintax")
    (synopsis "Random text generation based on spintax")
    (description
     "Random text generation based on spintax with nested alternatives and empty options.")
    (license license:bsd-3)))

haskell-8.4-Spintax

(define-public haskell-8.4-aeson-attoparsec
  (package
    (name "haskell-8.4-aeson-attoparsec")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://github.com/athanclark/aeson-attoparsec#readme")
    (synopsis "Embed an Attoparsec text parser into an Aeson parser")
    (description "")
    (license license:bsd-3)))

haskell-8.4-aeson-attoparsec

(define-public haskell-8.4-aeson-better-errors
  (package
    (name "haskell-8.4-aeson-better-errors")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/hdgarrood/aeson-better-errors")
    (synopsis "Better error messages when decoding JSON values.")
    (description
     "A small package which gives you the tools to build parsers to decode JSON
values, and gives good error messages when parsing fails.
See also <http://harry.garrood.me/blog/aeson-better-errors/>.")
    (license license:expat)))

haskell-8.4-aeson-better-errors

(define-public haskell-8.4-aeson-compat
  (package
    (name "haskell-8.4-aeson-compat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @@aeson@@")
    (license license:bsd-3)))

haskell-8.4-aeson-compat

(define-public haskell-8.4-aeson-generic-compat
  (package
    (name "haskell-8.4-aeson-generic-compat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)))
    (home-page "https://hackage.haskell.org/package/aeson-generic-compat")
    (synopsis "Compatible generic class names of Aeson")
    (description
     "This package includes compatible generic class names of Aeson package.")
    (license license:bsd-3)))

haskell-8.4-aeson-generic-compat

(define-public haskell-8.4-aeson-pretty
  (package
    (name "haskell-8.4-aeson-pretty")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-pretty/aeson-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m977gs0s9gf3lwzlbs5y7bl6ansc5pywmn2qjk09l5bwg2yrhf1"))))
    (properties `((upstream-name . "aeson-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-only")
       #:cabal-revision
       ("1" "0lvph4ns395dqsbvqyaiapdarzgsjl9irdsilf6spi41h9196mv7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-aeson-pretty

(define-public haskell-8.4-aeson-utils
  (package
    (name "haskell-8.4-aeson-utils")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://hackage.haskell.org/package/aeson-utils")
    (synopsis "Utilities for working with Aeson.")
    (description "Utilities for working with Aeson.")
    (license license:bsd-3)))

haskell-8.4-aeson-utils

(define-public haskell-8.4-aeson-yak
  (package
    (name "haskell-8.4-aeson-yak")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)))
    (home-page "https://github.com/tejon/aeson-yak")
    (synopsis "Handle JSON that may or may not be a list, or exist")
    (description
     "According to the standard promoted by Schema.org, the same JSON object
field may legally contain an array or a single element, be null, or be
absent entirely. This library provides an intermediary data type and
supporting functions to help aeson parse and output JSON conforming to this
frustrating behavior.")
    (license license:expat)))

haskell-8.4-aeson-yak

(define-public haskell-8.4-base64-bytestring-type
  (package
    (name "haskell-8.4-base64-bytestring-type")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring-type/base64-bytestring-type-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h74c0qhf4n0pamrl29ha5hgf940bay0dhl8rifaw4l03z8rn0bl"))))
    (properties `((upstream-name . "base64-bytestring-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0yfhy4a9n67l9w3amqrzzy79q47yyj6qbv5i5lqym5z7ygwmlzn6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)))
    (home-page
     "https://github.com/futurice/haskell-base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-8.4-base64-bytestring-type

(define-public haskell-8.4-binary-orphans
  (package
    (name "haskell-8.4-binary-orphans")
    (version "0.1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-orphans/binary-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k6067wn9zki7xvbslvxx8cq1wrmz3kjb3q3x8mxycc9v765fxgi"))))
    (properties `((upstream-name . "binary-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1dny1jvwwcyrbzhqvymmn6n7ib48bpy0nasbrcrdrpzjypkmg500")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-text-binary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)))
    (home-page "https://github.com/phadej/binary-orphans#readme")
    (synopsis "Orphan instances for binary")
    (description
     "`binary-orphans` defines orphan instances for types in some popular packages.")
    (license license:bsd-3)))

haskell-8.4-binary-orphans

(define-public haskell-8.4-binary-tagged
  (package
    (name "haskell-8.4-binary-tagged")
    (version "0.1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-tagged/binary-tagged-"
                    version ".tar.gz"))
              (sha256
               (base32
                "196msm7v0r41d7gx8aghl0c1gvir60sf0w9sfpcz2dq9akzqzjvh"))))
    (properties `((upstream-name . "binary-tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z612d3wbrlywcx96lc52svi9b2s6nskdnwnwm3d5mylcqaqckcx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-SHA)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/binary-tagged#readme")
    (synopsis "Tagged binary serialisation.")
    (description
     "Check <https://github.com/phadej/binary-tagged#readme README on Github>")
    (license license:bsd-3)))

haskell-8.4-binary-tagged

(define-public haskell-8.4-clang-compilation-database
  (package
    (name "haskell-8.4-clang-compilation-database")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clang-compilation-database/clang-compilation-database-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a0wvk82k65b5lscsvg5p41shpz98rahq44d5vyf8wclfshh2ihi"))))
    (properties `((upstream-name . "clang-compilation-database")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)))
    (home-page "https://github.com/lambdageek/clang-compilation-database")
    (synopsis "JSON Compilation Database Format encoding and decoding")
    (description
     "See README.md

This library provides a data type to represent a
<http://clang.llvm.org/docs/JSONCompilationDatabase.html JSON Compilation Database Format file>

It may be useful for static analysis tools that need to know the exact commands executed
by a build system such as make.")
    (license license:expat)))

haskell-8.4-clang-compilation-database

(define-public haskell-8.4-configurator-export
  (package
    (name "haskell-8.4-configurator-export")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-export/configurator-export-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k42kdzrmci19w2wb6lswkf2g9fzmrwkn6yvvz694xy957pn5gcx"))))
    (properties `((upstream-name . "configurator-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-configurator)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/mstksg/configurator-export")
    (synopsis "Pretty printer and exporter for configurations from
the \"configurator\" library.")
    (description
     "Pretty printers and exporters for 'Config's from the
<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>
library, in \"Data.Configurator\".

All results are intended to be valid parsing files in the
configuration file syntax of the library.

For a full round trip:

> main = do
>   cfg <- load [Required \"config.cfg\"]
>   writeConf \"config.cfg\" cfg

This should load the config file, parse it, and then
re-export it, rewriting the original config file.  The
result should be an identical configuration file (with
keys potentially re-arranged and re-sorted, comments
removed, etc.)

See the \"Data.Configurator.Export\" module for more
details and ways to modify the output style.")
    (license license:bsd-3)))

haskell-8.4-configurator-export

(define-public haskell-8.4-country
  (package
    (name "haskell-8.4-country")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/country/country-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a4r2jnp15xy18s6xpd4p10cgq3hd8qqzhy5lakmzymivwq6xcq9"))))
    (properties `((upstream-name . "country") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "034cd94hiwgci0qhkdkkqmx2igmf1wxmd4b70g6sdlk1kklcn7x1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/andrewthad/country#readme")
    (synopsis "Country data type and functions")
    (description
     "The `country` library provides a data type for dealing with
the set of countries as defined by ISO 3166. The representation
is compact and is well-suited to use with vectors and
primitive arrays. Additionally, this library exports functions
that provide the following encodings and decodings:

* ISO Alpha-2 (two-letter country code)

* ISO Alpha-3 (three-letter country code)

* ISO Numeric (three-digit country code)

Please open up an issue on github if there is anything
you would like to see added.")
    (license license:bsd-3)))

haskell-8.4-country

(define-public haskell-8.4-criterion-measurement
  (package
    (name "haskell-8.4-criterion-measurement")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion-measurement/criterion-measurement-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mmbhajphlg32gqxr1lf0w12jkw0qrpjabvx92zpv4ka71lpgy7m"))))
    (properties `((upstream-name . "criterion-measurement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/bos/criterion")
    (synopsis "Criterion measurement functionality and associated types")
    (description
     "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.")
    (license license:bsd-3)))

haskell-8.4-criterion-measurement

(define-public haskell-8.4-detour-via-sci
  (package
    (name "haskell-8.4-detour-via-sci")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-newtype)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-siggy-chardust)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/detour-via-sci#readme")
    (synopsis "JSON and CSV encoding for rationals as decimal point numbers.")
    (description
     "Lossy JSON and CSV encoding and decoding for newtype rationals via scientific with fixed decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-detour-via-sci

(define-public haskell-8.4-docopt
  (package
    (name "haskell-8.4-docopt")
    (version "0.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/docopt/docopt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vh5kn13z0c6k2ir6nyr453flyn0cfmz7h61903vysw9lh40hy8m"))))
    (properties `((upstream-name . "docopt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("1" "1qp4q2ghranz6jwkyqda4058510cfav2f1p45sspp13ihir0cand")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)))
    (home-page "https://github.com/docopt/docopt.hs")
    (synopsis "A command-line interface parser that will make you smile")
    (description
     "Docopt parses command-line interface usage text that adheres to a familiar syntax, and from it builds a command-line argument parser that will ensure your program is invoked correctly with the available options specified in the usage text. This allows the developer to write a usage text and get an argument parser for free.")
    (license license:expat)))

haskell-8.4-docopt

(define-public haskell-8.4-doctest-discover
  (package
    (name "haskell-8.4-doctest-discover")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-discover/doctest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1clr6w1h726bbcpq2px2c51jsk48i6ki1yd9vhqj2scvy4nvp437"))))
    (properties `((upstream-name . "doctest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "http://github.com/karun012/doctest-discover")
    (synopsis "Easy way to run doctests via cabal")
    (description
     "doctest-discover provides an easy way to run doctests via cabal")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-doctest-discover

(define-public haskell-8.4-ekg-json
  (package
    (name "haskell-8.4-ekg-json")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-json")
    (synopsis "JSON encoding of ekg metrics")
    (description
     "Encodes ekg metrics as JSON, using the same encoding as used by the
ekg package, thus allowing ekg metrics to be served by other HTTP
servers than the one used by the ekg package.")
    (license license:bsd-3)))

haskell-8.4-ekg-json

(define-public haskell-8.4-forma
  (package
    (name "haskell-8.4-forma")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/forma/forma-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09f377ak1208lr8sskdga3nq47a151whd7z982pwv552w1q75p5p"))))
    (properties `((upstream-name . "forma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "1yc9gv1rjbl4lsxscp5idfpn7jp27c38j6gm9v7isxgyaih0j4v4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/mrkkrp/forma")
    (synopsis "Parse and validate forms in JSON format")
    (description "Parse and validate forms in JSON format.")
    (license license:bsd-3)))

haskell-8.4-forma

(define-public haskell-8.4-ghcjs-base-stub
  (package
    (name "haskell-8.4-ghcjs-base-stub")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghcjs-base-stub/ghcjs-base-stub-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05k59a6jg1a5s8zvqfah5rvm5kg34sqpv2zx4chczihx3n9prfv7"))))
    (properties `((upstream-name . "ghcjs-base-stub") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hvmgwyhv28d39was8bm52anwqh6x4mbd1mzzqxazlm0d0l8bpwp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/louispan/javascript-stub#readme")
    (synopsis
     "Allow GHCJS projects to compile under GHC and develop using intero.")
    (description
     "Allow GHCJS projects to compile under GHC and develop using intero. Please refer to README.md.")
    (license license:bsd-3)))

haskell-8.4-ghcjs-base-stub

(define-public haskell-8.4-gio
  (package
    (name "haskell-8.4-gio")
    (version "0.13.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gio/gio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0p1mwzbrzb74wxlykasza4qvvlck2b0wgnhvfa0j3h27x4ii8xjw"))))
    (properties `((upstream-name . "gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-glib)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to GIO")
    (description
     "GIO is striving to provide a modern, easy-to-use VFS API that sits at the right level in the library stack.
The goal is to overcome the shortcomings of GnomeVFS and provide an API that is
so good that developers prefer it over raw POSIX calls.
Among other things that means using GObject.
It also means not cloning the POSIX API, but providing higher-level, document-centric interfaces.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gio

(define-public haskell-8.4-github-types
  (package
    (name "haskell-8.4-github-types")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)))
    (home-page "https://hackage.haskell.org/package/github-types")
    (synopsis "Type definitions for objects used by the GitHub v3 API")
    (description "This package includes (some) type definitions for objects
which are consumed or produced by the GitHub v3 API.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-github-types

(define-public haskell-8.4-hackage-db
  (package
    (name "haskell-8.4-hackage-db")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-db/hackage-db-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13ggj72i8dxwh3qwznnqxbr00nvsbapyyhzx5zybfacddnpw3aph"))))
    (properties `((upstream-name . "hackage-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("2" "0qscq4d3xwvjhqi1fiky7g12iwbkwn9qrypwzg9lx4p3c5xlwlvn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/peti/hackage-db#readme")
    (synopsis "Access Hackage's package database via Data.Map")
    (description
     "This is an early and mostly undocumented release of the 2.x version of
hackage-db that's intended mostly for experimenting with and testing of the
new API. Porting code from 1.x to 2.x is pretty simple, but if you do that at
this point, please expect minor details of this API to change in forthcoming
releases.

Check out https://github.com/peti/hackage-db/tree/master/example/ for a
collection of simple example programs that demonstrate how to use this code.")
    (license license:bsd-3)))

haskell-8.4-hackage-db

(define-public haskell-8.4-haxl
  (package
    (name "haskell-8.4-haxl")
    (version "2.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haxl/haxl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wfnwi3impv4cv359a65yh50c6kdfxhvbwycf5h76w3cvqdhvwsr"))))
    (properties `((upstream-name . "haxl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bench")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/facebook/Haxl")
    (synopsis "A Haskell library for efficient, concurrent,
and concise data access.")
    (description
     "Haxl is a library and EDSL for efficient scheduling of concurrent data
accesses with a concise applicative API.

To use Haxl, you need to implement one or more /data sources/, which
provide the means for accessing remote data or other I/O that you
want to perform using Haxl.

Haxl provides two top-level modules:

* /Data-source implementations/ import \"Haxl.Core\",

* /Client code/ import your data sources and \"Haxl.Prelude\", or some
other client-level API that you provide.")
    (license license:bsd-3)))

haskell-8.4-haxl

(define-public haskell-8.4-hruby
  (package
    (name "haskell-8.4-hruby")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hruby/hruby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "068mvb6bf583bldx07whc3cc0s3xbjlibi55r0ajjq9v4kxv98yx"))))
    (properties `((upstream-name . "hruby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages ruby) ruby-3.2)))
    (home-page "https://hackage.haskell.org/package/hruby")
    (synopsis "Embed a Ruby intepreter in your Haskell program !")
    (description
     "This doesn't work with Ruby 1.9. Everything you need should be in Foreign.Ruby.Safe.")
    (license license:bsd-3)))

haskell-8.4-hruby

(define-public haskell-8.4-hspec
  (package
    (name "haskell-8.4-hspec")
    (version "2.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yv4k5b5kkig2q3waj28587sq28wms7wfav5a3lq4dra6jybimfm"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description "Hspec is a testing framework for Haskell. It is inspired by
the Ruby library RSpec. Some of Hspec's distinctive features
are:

* a friendly DSL for defining tests

* integration with QuickCheck, SmallCheck, and HUnit

* parallel test execution

* automatic discovery of test files

The Hspec Manual is at <http://hspec.github.io/>.")
    (license license:expat)))

haskell-8.4-hspec

(define-public haskell-8.4-hvega
  (package
    (name "haskell-8.4-hvega")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvega/hvega-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hh5izmw6ss4yznr665674p48lwxgzf3kspl86sy4sfrbab5jxqa"))))
    (properties `((upstream-name . "hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega and Vega-Lite visualizations.")
    (description
     "This is an almost-direct port of elm-vega
(<http://package.elm-lang.org/packages/gicentre/elm-vega/2.2.1>)
to Haskell.")
    (license license:bsd-3)))

haskell-8.4-hvega

(define-public haskell-8.4-ip
  (package
    (name "haskell-8.4-ip")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip/ip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "10dc3b41j11xa9rfqlbbrjs4wjszn1zn50w9cjs4i0yc02fqck4y"))))
    (properties `((upstream-name . "ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/andrewthad/haskell-ip#readme")
    (synopsis "Library for IP and MAC addresses")
    (description
     "The `ip` package provides types and functions for dealing with
IPv4 addresses, CIDR blocks, and MAC addresses. We provide instances
for typeclasses found in commonly used packages like `aeson`, `vector`,
and `hashable`. We also provide `Parser`s for working with attoparsec.

Notably, this package does not overload functions by introducing any
typeclasses of its own. Neither does it prefix functions with the name
of the type that they work on. Instead, functions of the same name are
exported by several different modules, and it is expected that end users
disambiguate by importing these modules qualified.

The only module intended to be imported unqualified is `Net.Types`. The
types in this package should not conflict with the types in
any other commonly used packages.

The following packages are intended to be used with this package:

* `yesod-ip`: Provides orphan instances needed to work with yesod and
persistent. Also, provides a `yesod-form` helper.")
    (license license:bsd-3)))

haskell-8.4-ip

(define-public haskell-8.4-json-rpc-server
  (package
    (name "haskell-8.4-json-rpc-server")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-server/json-rpc-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xfcxbwri9a5p3xxbc4kvr1kqdnm4c1axd8kgb8dglabffbrk7hn"))))
    (properties `((upstream-name . "json-rpc-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("8" "0cg2b7jggjpk6cryc1v7cx06nvkffsh6xz76gp0pz0wfn1m96pxy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/grayjay/json-rpc-server")
    (synopsis "JSON-RPC 2.0 on the server side.")
    (description
     "An implementation of the server side of JSON-RPC 2.0.
See <http://www.jsonrpc.org/specification>. This
library uses 'ByteString' for input and output,
leaving the choice of transport up to the user.
See the \"Network.JsonRpc.Server\" module for an example.
json-rpc-server can be used with
<http://hackage.haskell.org/package/json-rpc-client json-rpc-client>
to create a client and server that communicate
with the same methods.")
    (license license:expat)))

haskell-8.4-json-rpc-server

(define-public haskell-8.4-lapack-ffi-tools
  (package
    (name "haskell-8.4-lapack-ffi-tools")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y3h69mkbjidl146y1w0symk8rgpir5gb5914ymmg83nsyyl16vk"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-empty)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-pathtype)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://hub.darcs.net/thielema/lapack-ffi-tools/")
    (synopsis "Generator for Haskell interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

The program in this package generates the modules
for the packages @@blas-ffi@@, @@blas-carray@@, @@lapack-ffi@@, @@lapack-carray@@
from the FORTRAN source files.")
    (license license:bsd-3)))

haskell-8.4-lapack-ffi-tools

(define-public haskell-8.4-monad-par
  (package
    (name "haskell-8.4-monad-par")
    (version "0.3.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par/monad-par-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ldrzqy24fsszvn2a2nr77m2ih7xm0h9bgkjyv1l274aj18xyk7q"))))
    (properties `((upstream-name . "monad-par") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-chaselev" "-f-newgeneric")
       #:cabal-revision
       ("1" "0ikpz5slv0isl6nxmsyhcgfq2yp1n5ars4ymb66dc3yrmhs0cgp4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-abstract-deque)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-abstract-par)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "A library for parallel programming based on a monad")
    (description
     "The 'Par' monad offers a simple API for parallel programming.  The
library works for parallelising both pure and @@IO@@ computations,
although only the pure version is deterministic.  The default
implementation provides a work-stealing scheduler and supports
forking tasks that are much lighter weight than IO-threads.

For complete documentation see \"Control.Monad.Par\".

Some examples of use can be found in the @@examples/@@ directory of
the source package.

Other related packages:

* @@abstract-par@@ provides the type classes that abstract over different
implementations of the @@Par@@ monad.

* @@monad-par-extras@@ provides extra combinators and monad transformers layered on top of
the @@Par@@ monad.

Changes in 0.3.4 relative to 0.3:

* Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes.

* Added \"Control.Monad.Par.IO\"")
    (license license:bsd-3)))

haskell-8.4-monad-par

(define-public haskell-8.4-mwc-probability
  (package
    (name "haskell-8.4-mwc-probability")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-probability/mwc-probability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0msi72qp5aps3n4ji565r4rzyjg7svwilsh8lch59y2b4q7fvscz"))))
    (properties `((upstream-name . "mwc-probability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b4wbxkxx0szjgzgn5jc1qap80zx6ispxrd51yxs4z7llv15w5k6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/jtobin/mwc-probability")
    (synopsis "Sampling function-based probability distributions.")
    (description
     "A simple probability distribution type, where distributions are characterized
by sampling functions.

This implementation is a thin layer over @@mwc-random@@, which handles RNG
state-passing automatically by using a @@PrimMonad@@ like @@IO@@ or @@ST s@@ under
the hood.

/Examples/

Transform a distribution's support while leaving its density structure
invariant:

> -- uniform over [0, 1] to uniform over [1, 2]
> fmap succ uniform

Sequence distributions together using bind:

> -- a beta-binomial compound distribution
> beta 1 10 >>= binomial 10

Use do-notation to build complex joint distributions from composable,
local conditionals:

> hierarchicalModel = do
>   [c, d, e, f] <- replicateM 4 $ uniformR (1, 10)
>   a <- gamma c d
>   b <- gamma e f
>   p <- beta a b
>   n <- uniformR (5, 10)
>   binomial n p")
    (license license:expat)))

haskell-8.4-mwc-probability

(define-public haskell-8.4-pandoc-types
  (package
    (name "haskell-8.4-pandoc-types")
    (version "1.17.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-types/pandoc-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wk2zskr0r2llsyif3s0x7vix05l1ya7qacsmmkrlhba5naib1j"))))
    (properties `((upstream-name . "pandoc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bpd2iqmriajl5qg44j4z9c4agb9gsdwbn5l4c5yry6flivysq3c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-string-qq)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://johnmacfarlane.net/pandoc")
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

haskell-8.4-pandoc-types

(define-public haskell-8.4-pango
  (package
    (name "haskell-8.4-pango")
    (version "0.13.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pango/pango-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s29dmds28ffbcbic8pw3bsixkb6lzjm78j8qv4x3r9l64kvjndz"))))
    (properties `((upstream-name . "pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnew-exception")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-glib)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Pango text rendering engine.")
    (description
     "This package provides a wrapper around the Pango C library that
allows high-quality rendering of Unicode text. It can be used
either with Cairo to output text in PDF, PS or other
documents or with Gtk+ to display text on-screen.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-pango

(define-public haskell-8.4-path
  (package
    (name "haskell-8.4-path")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nayla4k1gb821k8y5b9miflv1bi8f0czf9rqr044nrr2dddi2sb"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05pgmg0w1mfwcmx9ad4p09xqxld8njhgwmgq38v7pr58czvmd6ks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-8.4-path

(define-public haskell-8.4-pipes-csv
  (package
    (name "haskell-8.4-pipes-csv")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-csv/pipes-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cv8vb5jm95h3jqm4xhndgijcivmcxdjppvcs88bpjbfspfzb1cl"))))
    (properties `((upstream-name . "pipes-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-8.4-pipes-csv

(define-public haskell-8.4-pipes-random
  (package
    (name "haskell-8.4-pipes-random")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-random/pipes-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17k510v2f5ziysqh7sknyw3rgxf8iblw800z3hh8gymaszkhfajl"))))
    (properties `((upstream-name . "pipes-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0czw2qfi05d5kbnwzhzr75j1ag6hfbn9nvbjyifdjradfzjxl2s9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fosskers/pipes-random")
    (synopsis "Producers for handling randomness.")
    (description "Producers for handling randomness.")
    (license license:bsd-3)))

haskell-8.4-pipes-random

(define-public haskell-8.4-postgresql-simple
  (package
    (name "haskell-8.4-postgresql-simple")
    (version "0.5.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple/postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xrsyx25v5z06qziy32wlb3lvkyci3nxkbb25nis21vkj3kimlgm"))))
    (properties `((upstream-name . "postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18g85a8icp21bjl38phwla25qv78y96vcisq5v1vwmz59m2n5k4h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-simple")
    (synopsis "Mid-Level PostgreSQL client library")
    (description
     "Mid-Level PostgreSQL client library, forked from mysql-simple.")
    (license license:bsd-3)))

haskell-8.4-postgresql-simple

(define-public haskell-8.4-pretty-simple
  (package
    (name "haskell-8.4-pretty-simple")
    (version "2.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-simple/pretty-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lfkbjpcgyiv915xvhpirhx8x7ng1jgrlxd6zlilcvnpkkm2xacs"))))
    (properties `((upstream-name . "pretty-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexe" "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)))
    (home-page "https://github.com/cdepillabout/pretty-simple")
    (synopsis "pretty printer for data types with a 'Show' instance.")
    (description
     "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-pretty-simple

(define-public haskell-8.4-profiterole
  (package
    (name "haskell-8.4-profiterole")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profiterole/profiterole-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wfj8rmcablya94shhrnx2dbk3pfbhvdv6mk6946fyjfy32di266"))))
    (properties `((upstream-name . "profiterole") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-ghc-prof)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-8.4-profiterole

(define-public haskell-8.4-random-bytestring
  (package
    (name "haskell-8.4-random-bytestring")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-bytestring/random-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d0f3y8n87fyyvlkn1c87d47xi50qn4cn11bnsn052860kyjda1k"))))
    (properties `((upstream-name . "random-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-pcg")
       #:cabal-revision
       ("1" "0gk5hcx1j06rklfd2cv63kh5dzjk8hr184riam784c7s9zg3s9a4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pcg-random)))
    (home-page "https://www.github.com/larskuhtz/random-bytestring")
    (synopsis "Efficient generation of random bytestrings")
    (description
     "Efficient generation of random bytestrings. The implementation
populates uninitialized memory with uniformily distributed random
64 bit words (and 8 bit words for remaining bytes at the end of
the bytestring).

Random words are generated using the PRNG from
the [mwc-random](https://hackage.haskell.org/package/mwc-random) package
or the [pcg-random](https://hackage.haskell.org/package/pcg-random)
package. It is also possible to use a custom PRNG by providing
an instance for the 'RandomWords' type class and using the function
'generate' from the module \"Data.ByteString.Random.Internal\".

The generated byte strings are suitable for statistical
applications. They are /not/ suitable for cryptographic
applications.

![benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.1/src/benchmarks.png)

![detailed benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.1/src/benchmarks-details.png)")
    (license license:expat)))

haskell-8.4-random-bytestring

(define-public haskell-8.4-random-source
  (package
    (name "haskell-8.4-random-source")
    (version "0.3.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-source/random-source-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wsv41kpswqml04ym5bq2nan4i637f7h3fmvda2zy506xwxfrpzk"))))
    (properties `((upstream-name . "random-source") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4" "-fmtl2")
       #:cabal-revision
       ("2" "1ik4j6227diykb04idam7rk328xnh5fyhf9xz2gcs728ikw81806")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-flexible-defaults)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stateref)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-extras)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Generic basis for random number generators")
    (description
     "Random number generation based on entropy sources
able to produce a small but well-defined set of
primitive variates.  Also includes facilities for
\\\"completing\\\" partial implementations, making it
easy to define new entropy sources in a way that
is naturally forward-compatible.

Changes in 0.3.0.6: Fixed overzealous fix in 0.3.0.5.  The people responsible for sacking the people who have been sacked, etc., have been sacked.

Changes in 0.3.0.5: Renamed some internal modules and accidentally some external ones too.  Whoops.  Please don't use this version, it will only end in tears.

Changes in 0.3.0.4: Fixed a typo that broke building
with MTL-1

Changes in 0.3.0.3: Fixes for GHC's deprecation
of Foreign.unsafePerformIO

Changes in 0.3.0.2: Fixes for GHC 7.2.*'s crazy
Template Haskell changes.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-random-source

(define-public haskell-8.4-relational-record
  (package
    (name "haskell-8.4-relational-record")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-persistable-record)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-persistable-types-HDBC-pg)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-relational-query)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-relational-query-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Meta package of Relational Record")
    (description "Meta package to install Relational Record quickly")
    (license license:bsd-3)))

haskell-8.4-relational-record

(define-public haskell-8.4-rethinkdb-client-driver
  (package
    (name "haskell-8.4-rethinkdb-client-driver")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-rethinkdb-client-driver

(define-public haskell-8.4-skylighting-core
  (package
    (name "haskell-8.4-skylighting-core")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "129q860xk59n8dxsxl7prk0jk3ddl96r9i6r4lsk5l9pbpms41pp"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-system-pcre")
       #:cabal-revision
       ("2" "01p6b8cpc2847r2h5fhqyssj7pv9ibvqz80ca3wljh59n0jnjxl7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
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

haskell-8.4-skylighting-core

(define-public haskell-8.4-sourcemap
  (package
    (name "haskell-8.4-sourcemap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://hackage.haskell.org/package/sourcemap")
    (synopsis
     "Implementation of source maps as proposed by Google and Mozilla.")
    (description
     "Implementation of source maps, revision 3, proposed by Google and Mozilla here
<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here
<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>")
    (license license:bsd-3)))

haskell-8.4-sourcemap

(define-public haskell-8.4-tagged-binary
  (package
    (name "haskell-8.4-tagged-binary")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-binary/tagged-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nv41x5ijw5wdb2nyfgxyspbgmk9qisp32fs1izzp3c3jl4smkvj"))))
    (properties `((upstream-name . "tagged-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)))
    (home-page "https://hackage.haskell.org/package/tagged-binary")
    (synopsis "Provides tools for serializing data tagged with type
information.")
    (description "Very minimal library providing tools for serializing and
decoding data into 'ByteString' tagged with information
about its type, inspired by Cloud Haskell and
distributed-process.

Intended for use by libraries and frameworks in
distributed contexts, such as distributed computation
between native servers and communication between native
servers and ghcjs/various front-ends, for behavior
similar to the polymorphic communication channels of
Cloud Haskell and distributed-process; servers can send
tagged data, and clients can choose to selectively
accept, ignore or queue incoming messages depending on
their types.

For basic encoding, decoding and categorization, only
'Data.Binary.Tagged' should be necessary.
'Data.Binary.Tagged.Internal' is exported in case you
need it.

Quick example:

> > let x = encodeTagged (1 :: Int)
> > decodeTagged x :: Maybe Bool
> Nothing
> > decodeTagged x :: Maybe Int
> Just 1")
    (license license:expat)))

haskell-8.4-tagged-binary

(define-public haskell-8.4-tasty
  (package
    (name "haskell-8.4-tasty")
    (version "1.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gzf1gqi5p78m8rc21g9a8glc69r68igxr9n4qn4bs6wqyi3ykiv"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "099n545dznvvlpmq5dqf550r3q2zriwki01g45nhraggz2gy9bfz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.4-tasty

(define-public haskell-8.4-tasty-notests
  (package
    (name "haskell-8.4-tasty-notests")
    (version "1.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gzf1gqi5p78m8rc21g9a8glc69r68igxr9n4qn4bs6wqyi3ykiv"))))
    (properties `((upstream-name . "tasty") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "099n545dznvvlpmq5dqf550r3q2zriwki01g45nhraggz2gy9bfz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.4-tasty-notests

(define-public haskell-8.4-vector-algorithms
  (package
    (name "haskell-8.4-vector-algorithms")
    (version "0.7.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-algorithms/vector-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mfa8ig9v69l41p2vb5jl4qmaln5y1rlzarr2mlgm8g1nvq8qqdg"))))
    (properties `((upstream-name . "vector-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-f-bench" "-fproperties" "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-8.4-vector-algorithms

(define-public haskell-8.4-xml-to-json
  (package
    (name "haskell-8.4-xml-to-json")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-curl)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hxt-curl)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hxt-expat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hxt-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-xml-to-json

